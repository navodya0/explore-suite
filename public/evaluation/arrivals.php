<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Staff Evaluation - Arrival</title>
  <link rel="icon" href="favicon.ico" type="image/x-icon">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  


  <style>
    h1 {
      font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
      font-size: 28px;
      color: blueviolet;
      text-align: center;
      margin-top: 20px;
    }
    .logout-btn {
      position: fixed;
      top: 15px;
      right: 15px;
      z-index: 1050;
    }
    .row.align-items-center {
      margin-bottom: 0.75rem;
    }
  </style>
</head>
<body class="bg-light">

  <div class="logout-btn">
    <a href="evaluation.php" class="btn btn-primary">Logout</a>
  </div>

  <div class="container py-5">

    <!-- Success Alert -->
    <?php if (isset($_GET['success']) && $_GET['success'] == 1): ?>
      <div class="alert alert-success alert-dismissible fade show" role="alert">
        Record has been saved successfully!
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
    <?php endif; ?>

    <div class="text-center mb-4">
      <div class="d-flex justify-content-center mb-3">
        <img src="assets/images/eval/sr.png" alt="Logo 1" class="mx-2" style="max-width: 100px;">
      </div>
      <h1>Staff Evaluation on the Arrival</h1>
    </div>

    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="home.php">Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">Staff Evaluation - Arrival</li>
      </ol>
    </nav>

    <div class="card shadow-sm mb-5">
      <div class="card-body">
        <h4 class="card-title mb-3">Arrivals / Checkout Checklist</h4>
        <form id="checkoutForm" class="needs-validation" novalidate method="POST" action="save_evaluation.php">

          <!-- Employee Details -->
          <div class="row align-items-center">
            <div class="col-md-6 mb-2">
              <label class="form-label fw-semibold">Employee Name</label>
              <select name="employee_name" class="form-select" required>
                <option value="" disabled selected>Select Employee</option>
                <option value="Sampath Fernando">Sampath Fernando</option>
                <option value="Dimath Weliwitigoda">Dimath Weliwitigoda</option>
                <option value="Anil Krishantha">Anil Krishantha</option>
                <option value="Ryan Monie">Ryan Monie</option>
                <option value="Rashan Gamage">Rashan Gamage</option>
                <option value="Sameera Dilshan">Sameera Dilshan</option>
                <option value="Heshan Sandaruwan">Heshan Sandaruwan</option>
                <option value="Wishvajith Perera">Wishvajith Perera</option>
                <option value="Lashen Dilash">Lashen Dilash</option>
              </select>
            </div>
            <div class="col-md-6 mb-2">
              <label class="form-label fw-semibold">Station</label>
              <select name="station" class="form-select" required>
                <option value="" disabled selected>Select Station</option>
                <option value="SR Rent Station">SR Rent Station</option>
                <option value="Europcar Station">Europcar Station</option>
                <option value="Greenmotion Station">Greenmotion Station</option>
                <option value="Elite Rent Station">Elite Rent Station</option>
              </select>
            </div>
          </div>

          <div class="row align-items-center mb-3">
            <div class="col-md-6">
              <label class="form-label fw-semibold">Booking Number</label>
              <input type="text" name="booking_number" class="form-control" required>
            </div>
          </div>

          <!-- Evaluation Checklist -->
          <div class="row align-items-center mb-1">
            <div class="col-md-9">
              <label class="form-label fw-semibold">1. Greeting (Polite & Helpful Way)</label>
            </div>
            <div class="col-md-3">
              <select name="greeting" class="form-select" required>
                <option value="" disabled selected>Select Your Rate</option>
                <option>1</option><option>2</option><option>3</option><option>4</option><option>5</option>
              </select>
            </div>
          </div>

          <div class="row align-items-center mb-1">
            <div class="col-md-9">
              <label class="form-label fw-semibold">2. Accurate Documentation & Payment</label>
            </div>
            <div class="col-md-3">
              <select name="documentation" class="form-select" required>
                <option value="" disabled selected>Select Your Rate</option>
                <option>1</option><option>2</option><option>3</option><option>4</option><option>5</option>
              </select>
            </div>
          </div>

          <div class="row align-items-center mb-1">
            <div class="col-md-9">
              <label class="form-label fw-semibold">3. Provide Value Added Information</label>
            </div>
            <div class="col-md-3">
              <select name="value_info" class="form-select" required>
                <option value="" disabled selected>Select Your Rate</option>
                <option>1</option><option>2</option><option>3</option><option>4</option><option>5</option>
              </select>
            </div>
          </div>

          <div class="row align-items-center mb-1">
            <div class="col-md-9">
              <label class="form-label fw-semibold">4. Carried Out Proper Inspection (Vehicle)</label>
            </div>
            <div class="col-md-3">
              <select name="vehicle_inspection" class="form-select" required>
                <option value="" disabled selected>Select Your Rate</option>
                <option>1</option><option>2</option><option>3</option><option>4</option><option>5</option>
              </select>
            </div>
          </div>

          <div class="row align-items-center mb-1">
            <div class="col-md-9">
              <label class="form-label fw-semibold">5. Provided Vehicle Controls Info + Photos at Key Handover</label>
            </div>
            <div class="col-md-3">
              <select name="controls_photos" class="form-select" required>
                <option value="" disabled selected>Select Your Rate</option>
                <option>1</option><option>2</option><option>3</option><option>4</option><option>5</option>
              </select>
            </div>
          </div>

          <div class="row align-items-center mb-1">
            <div class="col-md-9">
              <label class="form-label fw-semibold">6. Total Checkout Time (Should Be 15 Min)</label>
            </div>
            <div class="col-md-3">
              <select name="checkout_time" class="form-select" required>
                <option value="" disabled selected>Select Your Rate</option>
                <option>1</option><option>2</option><option>3</option><option>4</option><option>5</option>
              </select>
            </div>
          </div>

       <?php
if (isset($_GET['success']) && $_GET['success'] == 1) {
  echo '
  <div class="alert alert-success alert-dismissible fade show text-center mt-3" role="alert">
    ✅ Record successfully updated. Redirecting to arrivals page...
  </div>
  <script>
    setTimeout(function() {
      window.location.href = "arrivals.php";
    }, 2000); // redirect after 2 seconds
  </script>
  ';
}
?>

  <!-- SINGLE-LINE RATING GUIDE -->
          <hr class="my-4">

          <div class="text-center p-3 bg-white border rounded">
            <strong>Rating Guide:</strong>
            <span class="ms-3"><strong>1</strong> = Very Poor</span>
            <span class="ms-3"><strong>2</strong> = Poor</span>
            <span class="ms-3"><strong>3</strong> = Average</span>
            <span class="ms-3"><strong>4</strong> = Good</span>
            <span class="ms-3"><strong>5</strong> = Excellent</span>
          </div>
<div class="text-end mt-3">
  <button type="submit" class="btn btn-success">Submit Checklist</button>
</div>

        </form>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>

  <script>
    // Bootstrap validation
    (function () {
      'use strict'
      var forms = document.querySelectorAll('.needs-validation')
      Array.prototype.slice.call(forms)
        .forEach(function (form) {
          form.addEventListener('submit', function (event) {
            if (!form.checkValidity()) {
              event.preventDefault()
              event.stopPropagation()
            }
            form.classList.add('was-validated')
          }, false)
        })
    })()
  </script>
</body>
</html>
