<?php

namespace App\Http\Controllers;

use App\Models\TransportService;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Carbon\Carbon;

class VehicleRequestController extends Controller
{
    private function makePhotoUrl($path)
    {
        if (!$path) {
            return null;
        }

        $path = str_replace('\\', '/', $path);
        $path = ltrim($path, '/');

        return asset('mobile-api/' . $path);
    }

    public function dashboard(Request $request)
    {
        $today = Carbon::today();
        $vehicleNo = $request->get('vehicle_no');

        $base = TransportService::with(['tripDetails', 'employee']);

        $format = function ($ts, $attemptNo = null) {
            $start = $ts->assigned_start_at ? Carbon::parse($ts->assigned_start_at) : null;
            $end = $ts->assigned_end_at ? Carbon::parse($ts->assigned_end_at) : null;

            $latestTrip = $ts->tripDetails
                ?->sortByDesc('trip_start_datetime')
                ->values()
                ->first();

            return [
                'vehicle_request_id' => $ts->id,
                'type' => $ts->type,
                'vehicle_no' => $ts->vehicle_no,

                'employee_name' => $ts->employee?->preferred_name
                    ?? $ts->employee?->name
                    ?? ($ts->employee_id ? ('Employee #' . $ts->employee_id) : ''),

                'employee_id' => $ts->employee_id,
                'manager_id' => $ts->manager_id,
                'chauffer_name' => $ts->chauffer_name,
                'chauffer_phone' => $ts->chauffer_phone ?? null,

                'attempts_count' => $attemptNo,

                'start_date' => $start?->toDateString(),
                'end_date' => $end?->toDateString(),
                'is_one_day' => $start
                    ? (!$end || $start->toDateString() === $end->toDateString())
                    : true,

                'reason' => $ts->note,
                'start_destinations' => $ts->pickup_location,
                'destinations' => $ts->dropoff_location,
                'trip_code' => $ts->trip_code,
                'status' => $ts->status,
                'reject_reason' => $ts->reject_reason,
                'created_at' => optional($ts->created_at)->toDateString(),

                'trip_details' => $latestTrip ? [
                    'trip_detail_id' => $latestTrip->trip_detail_id,
                    'trip_start_datetime' => optional($latestTrip->trip_start_datetime)->toDateTimeString(),
                    'trip_end_datetime' => optional($latestTrip->trip_end_datetime)->toDateTimeString(),
                    'trip_start_odometer' => $latestTrip->trip_start_odometer,
                    'trip_end_odometer' => $latestTrip->trip_end_odometer,
                    'trip_start_odometer_photo' => $this->makePhotoUrl($latestTrip->trip_start_odometer_photo),
                    'trip_end_odometer_photo' => $this->makePhotoUrl($latestTrip->trip_end_odometer_photo),
                    'start_trip_fuel' => $latestTrip->start_trip_fuel,
                    'end_trip_fuel' => $latestTrip->end_trip_fuel,
                ] : null,
            ];
        };

        $mapWithRunningAttempt = function ($collection) use ($format) {
            $counters = [];

            return $collection->map(function ($ts) use (&$counters, $format) {
                $employeeId = $ts->employee_id ?? 'guest';
                $type = strtolower($ts->type ?? 'unknown');
                $key = $employeeId . '|' . $type;

                $counters[$key] = ($counters[$key] ?? 0) + 1;

                return $format($ts, $counters[$key]);
            })->values();
        };

        $latestFirst = function ($query) use ($mapWithRunningAttempt) {
            $records = $query
                ->orderBy('assigned_start_at', 'asc')
                ->orderBy('id', 'asc')
                ->get();

            return $mapWithRunningAttempt($records)
                ->sortByDesc(function ($item) {
                    return $item['start_date'] ?? '0000-00-00';
                })
                ->values();
        };

        $allRequests = $latestFirst(clone $base);

        $vehiclesToBeOutToday = $latestFirst(
            (clone $base)
                ->whereIn('status', ['ASSIGNED', 'START_TRIP', 'IN_PROGRESS'])
                ->whereDate('assigned_start_at', $today)
        );

        $assignedRequests = $latestFirst(
            (clone $base)->where('status', 'ASSIGNED')
        );

        $startTripRequests = $latestFirst(
            (clone $base)->where('status', 'START_TRIP')
        );

        $inProgressRequests = $latestFirst(
            (clone $base)->where('status', 'IN_PROGRESS')
        );

        $completedRequests = $latestFirst(
            (clone $base)->where('status', 'COMPLETED')
        );

        $currentTrips = collect();
        $pastTrips = collect();

        if ($vehicleNo) {
            $searched = $latestFirst(
                (clone $base)->where('vehicle_no', 'LIKE', "%{$vehicleNo}%")
            );

            $currentTrips = $searched
                ->filter(fn ($x) => $x['start_date'] && Carbon::parse($x['start_date'])->gte($today))
                ->values();

            $pastTrips = $searched
                ->filter(fn ($x) => $x['start_date'] && Carbon::parse($x['start_date'])->lt($today))
                ->values();
        }

        $totalRequests = TransportService::count();
        $assignedCount = TransportService::where('status', 'ASSIGNED')->count();
        $startTripCount = TransportService::where('status', 'START_TRIP')->count();
        $inProgressCount = TransportService::where('status', 'IN_PROGRESS')->count();
        $completedCount = TransportService::where('status', 'COMPLETED')->count();

        return Inertia::render('HRMS/VehicleRequestDashboard', [
            'allRequests' => $allRequests,
            'vehiclesToBeOutToday' => $vehiclesToBeOutToday,
            'assignedRequests' => $assignedRequests,
            'startTripRequests' => $startTripRequests,
            'inProgressRequests' => $inProgressRequests,
            'completedRequests' => $completedRequests,
            'searchedVehicle' => $vehicleNo,
            'currentTrips' => $currentTrips,
            'pastTrips' => $pastTrips,
            'stats' => [
                'totalRequests' => $totalRequests,
                'assigned' => $assignedCount,
                'startTrip' => $startTripCount,
                'inProgress' => $inProgressCount,
                'completed' => $completedCount,
                'vehiclesToBeOutToday' => $vehiclesToBeOutToday->count(),
            ],
        ]);
    }
}