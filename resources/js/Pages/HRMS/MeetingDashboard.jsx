import React, { useEffect, useMemo, useState } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, router } from "@inertiajs/react";

import HomeOutlinedIcon from "@mui/icons-material/HomeOutlined";
import DashboardOutlinedIcon from "@mui/icons-material/DashboardOutlined";
import GroupsOutlinedIcon from "@mui/icons-material/GroupsOutlined";
import CalendarMonthOutlinedIcon from "@mui/icons-material/CalendarMonthOutlined";
import EventRepeatOutlinedIcon from "@mui/icons-material/EventRepeatOutlined";
import CancelOutlinedIcon from "@mui/icons-material/CancelOutlined";
import AccessTimeOutlinedIcon from "@mui/icons-material/AccessTimeOutlined";
import NotificationsNoneOutlinedIcon from "@mui/icons-material/NotificationsNoneOutlined";
import AddIcon from "@mui/icons-material/Add";
import ChevronLeftIcon from "@mui/icons-material/ChevronLeft";
import ChevronRightIcon from "@mui/icons-material/ChevronRight";

import {
  Box,
  Typography,
  List,
  ListItemButton,
  ListItemText,
  Divider,
  Paper,
  Button,
  Stack,
  Avatar,
  IconButton,
  Chip,
} from "@mui/material";

const SIDEBAR_WIDTH = 240;

const ACTIVE_STATUSES = ["scheduled", "rescheduled", "ongoing"];

function formatDisplayDate(dateString) {
  if (!dateString) return "All meetings";

  const [year, month, day] = String(dateString).slice(0, 10).split("-");

  if (!year || !month || !day) return dateString;

  return `${day}-${month}-${year}`;
}

function formatDbDate(date) {
  const year = date.getFullYear();
  const month = String(date.getMonth() + 1).padStart(2, "0");
  const day = String(date.getDate()).padStart(2, "0");

  return `${year}-${month}-${day}`;
}

function StatusChip({ status }) {
  const map = {
    scheduled: "warning",
    rescheduled: "info",
    ongoing: "success",
    completed: "default",
    cancelled: "error",
  };

  return (
    <Chip
      size="small"
      label={status || "-"}
      color={map[status] || "default"}
      sx={{
        textTransform: "capitalize",
        fontWeight: 700,
      }}
    />
  );
}

function StatCard({ title, value, note, color, icon }) {
  return (
    <Paper
      elevation={0}
      sx={{
        p: 2.5,
        borderRadius: 3,
        border: "1px solid #eef2f7",
        display: "flex",
        alignItems: "center",
        gap: 2,
        minHeight: 110,
      }}
    >
      <Box
        sx={{
          width: 54,
          height: 54,
          borderRadius: "50%",
          backgroundColor: color,
          color: "#fff",
          display: "flex",
          alignItems: "center",
          justifyContent: "center",
          flexShrink: 0,
        }}
      >
        {icon}
      </Box>

      <Box>
        <Typography
          sx={{
            color: "#4b5563",
            fontWeight: 700,
            fontSize: "0.95rem",
          }}
        >
          {title}
        </Typography>

        <Stack direction="row" spacing={1} alignItems="baseline">
          <Typography
            sx={{
              fontWeight: 900,
              fontSize: "2rem",
              color: "#111827",
              lineHeight: 1.1,
            }}
          >
            {value}
          </Typography>

          <Typography sx={{ color: "#6b7280", fontSize: "0.9rem" }}>
            {note}
          </Typography>
        </Stack>
      </Box>
    </Paper>
  );
}

function MeetingCard({ item }) {
  return (
    <Paper
      elevation={0}
      sx={{
        borderRadius: 3,
        border: "1px solid #eef2f7",
        overflow: "hidden",
        backgroundColor: "#fff",
      }}
    >
      <Box sx={{ p: 2.5 }}>
        <Stack
          direction="row"
          spacing={1.5}
          alignItems="center"
          sx={{ mb: 1.5 }}
        >
          <Avatar sx={{ width: 48, height: 48, fontWeight: 800 }}>
            {item.title?.charAt(0) || "M"}
          </Avatar>

          <Box sx={{ minWidth: 0, flex: 1 }}>
            <Stack
              direction="row"
              alignItems="center"
              spacing={1}
              flexWrap="wrap"
            >
              <Typography
                fontWeight={800}
                sx={{ color: "#111827", fontSize: "1rem" }}
              >
                {item.title || "-"}
              </Typography>

              <StatusChip status={item.status} />
            </Stack>

            <Stack direction="row" spacing={0.5} alignItems="center">
              <AccessTimeOutlinedIcon sx={{ fontSize: 15, color: "#6b7280" }} />
              <Typography sx={{ color: "#6b7280", fontSize: "0.82rem" }}>
                {item.start_time || "-"} to {item.end_time || "-"}
              </Typography>
            </Stack>
          </Box>
        </Stack>

        <Divider sx={{ mb: 1.5 }} />

        <Stack direction="row" justifyContent="space-between" alignItems="center">
          <Typography
            sx={{
              color: "#374151",
              fontSize: "0.92rem",
              fontWeight: 600,
            }}
          >
            {item.members_count || 0} Members Going
          </Typography>

          {(item.pending_count || 0) > 0 ? (
            <Typography
              sx={{
                color: "#fb923c",
                fontSize: "0.9rem",
                fontWeight: 700,
              }}
            >
              {item.pending_count} Pending
            </Typography>
          ) : null}
        </Stack>

        <Typography sx={{ mt: 1.5, color: "#6b7280", fontSize: "0.86rem" }}>
          {item.location || "-"}
        </Typography>
      </Box>

      <Button
        fullWidth
        variant="text"
        onClick={() => router.get("/hrms/meetings")}
        sx={{
          borderRadius: 0,
          py: 1.5,
          fontWeight: 700,
          textTransform: "none",
          backgroundColor: "#f9fafb",
          color: "#111827",
          "&:hover": {
            backgroundColor: "#f3f4f6",
          },
        }}
      >
        View Details
      </Button>
    </Paper>
  );
}

function FunctionalCalendar({
  selectedDate,
  setSelectedDate,
  calendarMeetings = [],
}) {
  const [currentMonth, setCurrentMonth] = useState(() => {
    if (!selectedDate) return new Date();

    const [year, month] = String(selectedDate).slice(0, 10).split("-");
    return new Date(Number(year), Number(month) - 1, 1);
  });

  useEffect(() => {
    if (!selectedDate) return;

    const [year, month] = String(selectedDate).slice(0, 10).split("-");
    setCurrentMonth(new Date(Number(year), Number(month) - 1, 1));
  }, [selectedDate]);

  const monthLabel = currentMonth.toLocaleString("en-US", {
    month: "long",
    year: "numeric",
  });

  const firstDay = new Date(
    currentMonth.getFullYear(),
    currentMonth.getMonth(),
    1
  );

  const lastDay = new Date(
    currentMonth.getFullYear(),
    currentMonth.getMonth() + 1,
    0
  );

  const startDayIndex = (firstDay.getDay() + 6) % 7;
  const totalDays = lastDay.getDate();

  const days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  const meetingDates = new Set(
    calendarMeetings.map((meeting) => String(meeting.date || "").slice(0, 10))
  );

  const cells = [];

  for (let i = 0; i < startDayIndex; i++) {
    cells.push(null);
  }

  for (let day = 1; day <= totalDays; day++) {
    cells.push(
      new Date(currentMonth.getFullYear(), currentMonth.getMonth(), day)
    );
  }

  return (
    <Paper
      elevation={0}
      sx={{
        borderRadius: 3,
        border: "1px solid #eef2f7",
        p: 2.5,
      }}
    >
      <Typography variant="h5" fontWeight={800} sx={{ mb: 2 }}>
        Calendar
      </Typography>

      <Stack
        direction="row"
        justifyContent="space-between"
        alignItems="center"
        sx={{ mb: 2 }}
      >
        <IconButton
          size="small"
          sx={{ backgroundColor: "#f9fafb" }}
          onClick={() =>
            setCurrentMonth(
              new Date(
                currentMonth.getFullYear(),
                currentMonth.getMonth() - 1,
                1
              )
            )
          }
        >
          <ChevronLeftIcon />
        </IconButton>

        <Typography fontWeight={800}>{monthLabel}</Typography>

        <IconButton
          size="small"
          sx={{ backgroundColor: "#f9fafb" }}
          onClick={() =>
            setCurrentMonth(
              new Date(
                currentMonth.getFullYear(),
                currentMonth.getMonth() + 1,
                1
              )
            )
          }
        >
          <ChevronRightIcon />
        </IconButton>
      </Stack>

      <Box
        sx={{
          display: "grid",
          gridTemplateColumns: "repeat(7, 1fr)",
          gap: 1,
          textAlign: "center",
        }}
      >
        {days.map((day) => (
          <Typography
            key={day}
            sx={{
              fontSize: "0.82rem",
              color: "#6b7280",
              fontWeight: 700,
              py: 0.5,
            }}
          >
            {day}
          </Typography>
        ))}

        {cells.map((date, index) => {
          if (!date) {
            return <Box key={index} sx={{ height: 38 }} />;
          }

          const formatted = formatDbDate(date);
          const isSelected = formatted === selectedDate;
          const hasMeeting = meetingDates.has(formatted);

          return (
            <Box
              key={index}
              onClick={() => setSelectedDate(formatted)}
              sx={{
                height: 38,
                width: 38,
                mx: "auto",
                borderRadius: "50%",
                display: "flex",
                alignItems: "center",
                justifyContent: "center",
                position: "relative",
                cursor: "pointer",
                fontSize: "0.88rem",
                fontWeight: isSelected ? 800 : 600,
                color: isSelected ? "#fff" : "#374151",
                backgroundColor: isSelected ? "#4f46e5" : "transparent",
                "&:hover": {
                  backgroundColor: isSelected ? "#4f46e5" : "#f3f4f6",
                },
              }}
            >
              {date.getDate()}

              {hasMeeting && (
                <Box
                  sx={{
                    width: 5,
                    height: 5,
                    borderRadius: "50%",
                    backgroundColor: isSelected ? "#fff" : "#f59e0b",
                    position: "absolute",
                    bottom: 4,
                  }}
                />
              )}
            </Box>
          );
        })}
      </Box>
    </Paper>
  );
}

export default function Dashboard({
  auth,
  serverToday = "",
  stats = {},
  dashboardMeetings = [],
  calendarMeetings = [],
}) {
  const today = String(serverToday || "").slice(0, 10);

  const normalizedMeetings = useMemo(() => {
    return (dashboardMeetings || [])
      .filter((item) => ACTIVE_STATUSES.includes(item.status))
      .map((item) => ({
        ...item,
        meeting_date: String(item.meeting_date || "").slice(0, 10),
      }));
  }, [dashboardMeetings]);

  const normalizedCalendarMeetings = useMemo(() => {
    return (calendarMeetings || [])
      .filter((item) => ACTIVE_STATUSES.includes(item.status || "scheduled"))
      .map((item) => ({
        ...item,
        date: String(item.date || item.meeting_date || "").slice(0, 10),
      }));
  }, [calendarMeetings]);

  const [selectedDate, setSelectedDate] = useState(today);

  useEffect(() => {
    if (today && !selectedDate) {
      setSelectedDate(today);
    }
  }, [today, selectedDate]);

  const filteredMeetings = useMemo(() => {
    if (!selectedDate) return normalizedMeetings;

    return normalizedMeetings.filter(
      (item) => item.meeting_date === String(selectedDate).slice(0, 10)
    );
  }, [normalizedMeetings, selectedDate]);

  const reminderMeetings = useMemo(() => {
    return filteredMeetings
      .filter((item) => ACTIVE_STATUSES.includes(item.status))
      .slice(0, 4);
  }, [filteredMeetings]);

  const selectedDateLabel = useMemo(() => {
    return formatDisplayDate(selectedDate);
  }, [selectedDate]);

  return (
    <AuthenticatedLayout user={auth.user}>
      <Head title="Dashboard" />

      <Box
        sx={{
          display: "flex",
          minHeight: "100vh",
          backgroundColor: "#f5f7fa",
        }}
      >
        <Box
          sx={{
            width: SIDEBAR_WIDTH,
            backgroundColor: "#ffffff",
            borderRight: "1px solid #e5e7eb",
            p: 2,
          }}
        >
          <Typography fontWeight={900} sx={{ mb: 2 }}>
            HRMS
          </Typography>

          <Divider sx={{ mb: 2 }} />

          <List disablePadding>
            <ListItemButton
              onClick={() => router.get("/suite-services")}
              sx={{
                borderRadius: 2,
                mb: 0.5,
                "&:hover": { backgroundColor: "#f3f4f6" },
              }}
            >
              <HomeOutlinedIcon sx={{ mr: 1.5, color: "#374151" }} />
              <ListItemText
                primary="HRMS Home"
                primaryTypographyProps={{ fontWeight: 600 }}
              />
            </ListItemButton>

            <ListItemButton
              selected
              onClick={() => router.get("/hrms/meeting-dashboard")}
              sx={{
                borderRadius: 2,
                mb: 0.5,
                "&:hover": { backgroundColor: "#f3f4f6" },
              }}
            >
              <DashboardOutlinedIcon sx={{ mr: 1.5, color: "#374151" }} />
              <ListItemText
                primary="Dashboard"
                primaryTypographyProps={{ fontWeight: 600 }}
              />
            </ListItemButton>

            <ListItemButton
              onClick={() => router.get("/hrms/meetings")}
              sx={{
                borderRadius: 2,
                mb: 0.5,
                "&:hover": { backgroundColor: "#f3f4f6" },
              }}
            >
              <GroupsOutlinedIcon sx={{ mr: 1.5, color: "#374151" }} />
              <ListItemText
                primary="Meetings"
                primaryTypographyProps={{ fontWeight: 600 }}
              />
            </ListItemButton>
          </List>

          <Divider sx={{ my: 2 }} />
        </Box>

        <Box sx={{ flex: 1, p: { xs: 2, md: 3 } }}>
          <Box
            sx={{
              display: "grid",
              gridTemplateColumns: { xs: "1fr", xl: "1.9fr 0.8fr" },
              gap: 3,
            }}
          >
            <Box>
              <Stack
                direction="row"
                justifyContent="space-between"
                alignItems="center"
                sx={{ mb: 3 }}
              >
                <Typography
                  variant="h4"
                  fontWeight={800}
                  sx={{ color: "#111827" }}
                >
                  Schedule Meetings
                </Typography>

                <Stack direction="row" spacing={1.5} alignItems="center">
                  <Avatar sx={{ width: 42, height: 42 }}>
                    {auth?.user?.name?.charAt(0) || "U"}
                  </Avatar>

                  <Typography fontWeight={700}>
                    {auth?.user?.name || "User"}
                  </Typography>
                </Stack>
              </Stack>

              <Box
                sx={{
                  display: "grid",
                  gridTemplateColumns: { xs: "1fr", md: "repeat(3, 1fr)" },
                  gap: 2,
                  mb: 4,
                }}
              >
                <StatCard
                  title="Scheduled meeting"
                  value={stats?.scheduled || 0}
                  note="This month"
                  color="#22c55e"
                  icon={<CalendarMonthOutlinedIcon />}
                />

                <StatCard
                  title="Rescheduled meeting"
                  value={stats?.rescheduled || 0}
                  note="This month"
                  color="#facc15"
                  icon={<EventRepeatOutlinedIcon />}
                />

                <StatCard
                  title="Cancelled meeting"
                  value={stats?.cancelled || 0}
                  note="This month"
                  color="#ef4444"
                  icon={<CancelOutlinedIcon />}
                />
              </Box>

              <Typography variant="h5" fontWeight={800} sx={{ mb: 2.5 }}>
                {selectedDateLabel} - {filteredMeetings.length} meeting
              </Typography>

              <Box
                sx={{
                  display: "grid",
                  gridTemplateColumns: {
                    xs: "1fr",
                    md: "repeat(2, 1fr)",
                    xl: "repeat(3, 1fr)",
                  },
                  gap: 2,
                }}
              >
                {filteredMeetings.length ? (
                  filteredMeetings.map((item) => (
                    <MeetingCard key={item.id} item={item} />
                  ))
                ) : (
                  <Paper
                    elevation={0}
                    sx={{
                      gridColumn: "1 / -1",
                      p: 4,
                      borderRadius: 3,
                      border: "1px solid #eef2f7",
                      textAlign: "center",
                    }}
                  >
                    <Typography sx={{ color: "#6b7280" }}>
                      No meetings found for this date.
                    </Typography>
                  </Paper>
                )}
              </Box>
            </Box>

            <Box>
              <Paper
                elevation={0}
                sx={{
                  p: 2.5,
                  borderRadius: 4,
                  border: "1px solid #eef2f7",
                  backgroundColor: "#fbfbfd",
                }}
              >
                <Stack spacing={2.5}>
                  <FunctionalCalendar
                    selectedDate={selectedDate}
                    setSelectedDate={setSelectedDate}
                    calendarMeetings={normalizedCalendarMeetings}
                  />

                  <Paper
                    elevation={0}
                    sx={{
                      borderRadius: 3,
                      border: "1px solid #eef2f7",
                      p: 2.5,
                    }}
                  >
                    <Stack
                      direction="row"
                      justifyContent="space-between"
                      alignItems="center"
                      sx={{ mb: 2 }}
                    >
                      <Typography variant="h5" fontWeight={800}>
                        Reminders
                      </Typography>

                      <NotificationsNoneOutlinedIcon sx={{ color: "#111827" }} />
                    </Stack>

                    <Stack spacing={1.5}>
                      {reminderMeetings.length ? (
                        reminderMeetings.map((item) => (
                          <Stack
                            key={item.id}
                            direction="row"
                            spacing={1.5}
                            alignItems="flex-start"
                          >
                            <Box
                              sx={{
                                width: 38,
                                height: 38,
                                borderRadius: 2,
                                backgroundColor:
                                  item.status === "ongoing"
                                    ? "#dcfce7"
                                    : "#ede9fe",
                                color:
                                  item.status === "ongoing"
                                    ? "#16a34a"
                                    : "#7c3aed",
                                display: "flex",
                                alignItems: "center",
                                justifyContent: "center",
                                fontWeight: 900,
                                flexShrink: 0,
                              }}
                            >
                              {item.title?.charAt(0) || "M"}
                            </Box>

                            <Box sx={{ flex: 1 }}>
                              <Stack
                                direction="row"
                                spacing={1}
                                alignItems="center"
                                flexWrap="wrap"
                              >
                                <Typography
                                  sx={{
                                    fontWeight: 700,
                                    color: "#111827",
                                    fontSize: "0.92rem",
                                  }}
                                >
                                  {item.title}
                                </Typography>

                                <StatusChip status={item.status} />
                              </Stack>

                              <Typography
                                sx={{
                                  color: "#6b7280",
                                  fontWeight: 600,
                                  fontSize: "0.8rem",
                                }}
                              >
                                {item.location || "-"}
                              </Typography>
                            </Box>

                            <Typography
                              sx={{
                                color: "#9ca3af",
                                fontSize: "0.72rem",
                                whiteSpace: "nowrap",
                              }}
                            >
                              {item.start_time || "-"}
                            </Typography>
                          </Stack>
                        ))
                      ) : (
                        <Typography
                          sx={{ color: "#6b7280", fontSize: "0.92rem" }}
                        >
                          No reminders for this date.
                        </Typography>
                      )}
                    </Stack>
                  </Paper>

                  <Button
                    fullWidth
                    variant="contained"
                    startIcon={<AddIcon />}
                    onClick={() => router.get("/hrms/meetings")}
                    sx={{
                      borderRadius: 3,
                      py: 1.5,
                      textTransform: "none",
                      fontWeight: 800,
                      fontSize: "1rem",
                    }}
                  >
                    Create Meeting
                  </Button>
                </Stack>
              </Paper>
            </Box>
          </Box>
        </Box>
      </Box>
    </AuthenticatedLayout>
  );
}