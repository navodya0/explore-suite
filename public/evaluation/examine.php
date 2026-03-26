<?php
// Include DB connection
include 'db_connection.php';

// Employee list
$employees = [
    "Dimath Weliwitigoda",
    "Anil Krishantha",
    "Ryan Monie",
    "Rashan Gamage",
    "Sameera Dilshan",
    "Heshan Sandaruwan",
    "Wishvajith Perera",
    "Lashen Dilash"
];

// Filter logic
$where = "";
if (!empty($_GET['employee_name'])) {
    $employee_name = mysqli_real_escape_string($conn, $_GET['employee_name']);
    $where = "WHERE employee_name = '$employee_name'";
}

// Departure evaluation query
$departure_query = "SELECT * FROM departure_evaluation $where ORDER BY id DESC";
$departure_result = $conn->query($departure_query);

// Arrival evaluation query
$arrival_query = "SELECT * FROM arrival_evaluation $where ORDER BY created_at DESC";
$arrival_result = $conn->query($arrival_query);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Examine Staff Evaluation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
 <style>
    h2 {
        font-family: Cambria, Georgia, 'Times New Roman', serif;
        color: #5a2bbf;
    }
    thead.custom-blue {
        background-color: #022c55 !important; /* blue header */
        color: #ffffff; /* white text */
    }
</style>

</head>
<body class="bg-light">

<div class="container mt-5">
    
    <div class="d-flex justify-content-end mb-3">
    <a href="selection.php" class="btn btn-primary">Return</a>
</div>

      <div class="d-flex justify-content-center mb-3">
        <img src="assets/images/eval/sr.png" alt="Logo 1" class="mx-2" style="max-width: 100px;">
      </div>

    <h2 class="text-center mb-4">Examine Staff Evaluation Records</h2>

    <!-- Filter Form -->
    <form method="GET" class="card p-3 shadow-sm mb-4">
        <div class="row g-3">
            <div class="col-md-4">
                <label class="form-label fw-semibold">Employee Name</label>
                <select name="employee_name" class="form-select">
                    <option value="">-- All Employees --</option>
                    <?php
                    foreach ($employees as $emp) {
                        $selected = (isset($_GET['employee_name']) && $_GET['employee_name'] == $emp) ? "selected" : "";
                        echo "<option value='$emp' $selected>$emp</option>";
                    }
                    ?>
                </select>
            </div>
            <div class="col-md-2 d-grid">
                <button type="submit" class="btn btn-primary mt-4">Search</button>
            </div>
            <div class="col-md-2 d-grid">
                <a href="examine.php" class="btn btn-secondary mt-4">Reset</a>
            </div>
        </div>
    </form>

    <!-- Arrival Evaluation Table -->
    <div class="card shadow-sm mt-5">
        <div class="card-body">
            <h4 class="card-title mb-3">Staff Evaluation Report (Arrival)</h4>
            <table class="table table-bordered table-striped table-hover">
                <thead class="table-dark">
                    <tr>
                        <th>Employee</th>
                        <th>Station</th>
                        <th>Booking No.</th>
                        <th>Greeting</th>
                        <th>Documentation</th>
                        <th>Value Info</th>
                        <th>Vehicle Inspection</th>
                        <th>Controls + Photos</th>
                        <th>Checkout Time</th>
                        <th>Date & Time</th>
                        <th>Total Points</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if ($arrival_result && $arrival_result->num_rows > 0) {
                        while ($row = $arrival_result->fetch_assoc()) {
                            $total_points = intval($row['greeting']) + intval($row['documentation']) + intval($row['value_info']) + intval($row['vehicle_inspection']) + intval($row['controls_photos']);

                            echo "<tr>
                                <td>{$row['employee_name']}</td>
                                <td>{$row['station']}</td>
                                <td>{$row['booking_number']}</td>
                                <td>{$row['greeting']}</td>
                                <td>{$row['documentation']}</td>
                                <td>{$row['value_info']}</td>
                                <td>{$row['vehicle_inspection']}</td>
                                <td>{$row['controls_photos']}</td>
                                <td>{$row['checkout_time']}</td>
                                <td>{$row['created_at']}</td>
                                <td>{$total_points}</td>
                            </tr>";
                        }
                    } else {
                        echo "<tr>
                            <td colspan='11' class='text-center text-muted'>No records found.</td>
                        </tr>";
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Departure Evaluation Table -->
    <div class="card shadow-sm mt-5">
        <div class="card-body">
            <h5 class="card-title mb-3">Staff Evaluation Records (Departure)</h5>
            <table class="table table-bordered table-striped table-hover">
                <thead class="table-dark">
                    <tr>
                        <th>Employee</th>
                        <th>Station</th>
                        <th>Booking No.</th>
                        <th>Greeting</th>
                        <th>Review Attempt</th>
                        <th>Vehicle Inspection</th>
                        <th>Additional Charge</th>
                        <th>Friendly Goodbye</th>
                        <th>Date & Time</th>
                        <th>Total Points</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if ($departure_result->num_rows > 0) {
                        while ($row = $departure_result->fetch_assoc()) {
                            $total_points = intval($row['greeting']) + intval($row['review_attempt']) + intval($row['vehicle_inspection']) + intval($row['additional_charge']) + intval($row['friendly_goodbye']);

                            echo "<tr>
                                <td>{$row['employee_name']}</td>
                                <td>{$row['station']}</td>
                                <td>{$row['booking_number']}</td>
                                <td>{$row['greeting']}</td>
                                <td>{$row['review_attempt']}</td>
                                <td>{$row['vehicle_inspection']}</td>
                                <td>{$row['additional_charge']}</td>
                                <td>{$row['friendly_goodbye']}</td>
                                <td>{$row['date_time']}</td>
                                <td>{$total_points}</td>
                            </tr>";
                        }
                    } else {
                        echo "<tr>
                            <td colspan='10' class='text-center text-muted'>No records found.</td>
                        </tr>";
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>

</div>

</body>
</html>

<?php $conn->close(); ?>
