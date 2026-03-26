<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Paging Board Generator</title>

  <link rel="icon" href="favicon.ico" type="image/x-icon" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>




  <style>
    h1 {
      font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
      font-size: 28px;
      color: blueviolet;
      text-align: center;
      margin-top: 20px;
    }

    .card-body {
      height: 250px;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      overflow: hidden;
      transition: box-shadow 0.3s ease;
    }

    .card-body:hover {
      box-shadow: 0 0 15px rgba(8, 0, 36, 0.7);
    }

    .card-title {
      font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
      font-size: 22px;
      color: rgb(75, 0, 0);
    }

    .card img {
      max-width: 60%;
      height: auto;
      display: block;
      margin-left: auto;
      margin-right: auto;
    }

    .card-body img {
      margin-bottom: 10px;
    }

    .text-center img {
      margin: 0 auto;
    }

    .card {
      transition: box-shadow 0.3s ease-in-out, transform 0.3s ease-in-out;
    }

    .card:hover {
      box-shadow: 0 0 25px rgba(0, 0, 255, 0.7);
      transform: translateY(-5px);
    }

    /* Logout button styling */
    .logout-btn {
      position: fixed;
      top: 15px;
      right: 15px;
      z-index: 1050;
    }
  </style>
</head>

<body class="bg-light">
  <!-- Logout Button -->
  <div class="logout-btn">
    <a href="evaluation.php" class="btn btn-primary">Logout</a>
  </div>

  <div class="container py-5">
    <div class="text-center mb-4">
      <img src="assets/images/eval/sr.png" alt="Logo" class="mb-3" style="max-width: 150px;" />
      <h1>Staff Evaluation Console</h1>
    </div>

    <div class="row">
      <!-- Card 1 -->
      <div class="col-md-4">
        <div class="card shadow-lg mb-4">
          <div class="card-body">
       <div class="row">
  <img src="assets/images/eval/arrival.png" alt="Image" class="img-fluid rounded" style="max-width: 30%;" />
</div>

            <h5 class="card-title text-center">Arrival</h5>
            <div class="d-grid gap-2">
              <a href="#" onclick="openPinModal('arrivals.php')" class="btn" style="background-color: #09273b; color: white;">
                Log in to Evaluate
              </a>
            </div>
          </div>
        </div>
      </div>

      <!-- Card 2 -->
      <div class="col-md-4">
        <div class="card shadow-lg mb-4">
          <div class="card-body text-center">
            <img src="assets/images/eval/departure.png" alt="SR Transfers" class="img-fluid rounded" style="max-width: 45;" />
             <h5 class="card-title text-center">Departure</h5>
            <div class="d-grid gap-2">
              <a href="#" onclick="openPinModal('departure.php')" class="btn" style="background-color: #09273b; color: white;">
                Log in to Evaluate
              </a>
            </div>
          </div>
        </div>
      </div>

      <!-- Card 3 -->
      <div class="col-md-4">
        <div class="card shadow-lg mb-4">
          <div class="card-body text-center">
            <img src="assets/images/eval/examine.png" alt="54 Travellers" class="img-fluid rounded" style="max-width: 45%;" />
             <h5 class="card-title text-center">Dashbaord</h5>
            <div class="d-grid gap-2">
              <a href="#" onclick="openPinModal('examine.php')" class="btn" style="background-color: #09273b; color: white;">
                Log in to Examine
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- PIN Modal -->
  <div class="modal fade" id="pinModal" tabindex="-1" aria-labelledby="pinModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="pinModalLabel">Enter PIN</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <input type="password" class="form-control" id="pinInput" placeholder="Enter your PIN" />
          <div class="text-danger mt-2 d-none" id="pinError">Incorrect PIN. Please try again.</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
          <button type="button" class="btn btn-primary" onclick="verifyPin()">Submit</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Scripts -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>

  <script>
  let targetLink = '';
  let expectedPin = '';

  function openPinModal(link) {
    targetLink = link;

    // Set expected PIN based on the link
    switch (link) {
      case 'arrivals.php':
        expectedPin = '1234';
        break;
      case 'departure.php':
        expectedPin = '5678';
        break;
      case 'examine.php':
        expectedPin = '6:8Vk@c4eHo7';
        break;
      default:
        expectedPin = '';
    }

    document.getElementById('pinInput').value = '';
    document.getElementById('pinError').classList.add('d-none');
    new bootstrap.Modal(document.getElementById('pinModal')).show();
  }

  function verifyPin() {
    const enteredPin = document.getElementById('pinInput').value;
    if (enteredPin === expectedPin) {
      window.location.href = targetLink;
    } else {
      document.getElementById('pinError').classList.remove('d-none');
    }
  }
  </script>
</body>
</html>
