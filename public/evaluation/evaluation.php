<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - SR Rent A Car</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        h1 {
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            color: #09273b;
            font-size: 30px;
        }
        .logo-bar img {
            max-width: 60px;
        }
        h1 {
  font-family: 'cambria bold', ;
  font-size: 2 rem;
  color:rgb(81, 0, 83);
  text-align: center;
  margin-top: 10px;
  margin-bottom: 20px;
  letter-spacing: 1px;
  position: relative;
}

h1::after {
  content: '';
  display: block;
  width: 80px;
  height: 4px;
  background-color: #0074c1;
  margin: 10px auto 0;
  border-radius: 2px;
}

    </style>
</head>
<body>
    <div class="container py-5">
    <div class="text-center mb-4">
            <img src="assets/images/eval/sr.png" alt="Logo" class="mb-3" style="max-width: 150px;">
            <h1>Staff Evaluations</h1>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-5">
                <div class="card shadow-lg">
                    <div class="card-body">
                        <!-- <h1 class="text-center mb-4">Login</h1> -->
                        <form action="home.php" method="POST">
                            <div class="mb-3">
                                <label for="email" class="form-label">E Mail</label>
                                <input type="email" class="form-control" id="email" name="email" required>
                            </div>
                            <div class="mb-4">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" name="password" required>
                            </div>
                            <div class="d-grid">
                                <button type="submit" class="btn" style="background-color: #09273b; color: white;">Login</button>
                            </div>
                        </form>
                        <!-- <div class="text-center mt-3">
                            <small>Forgot your password? <a href="#">Click here</a></small>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script>
    document.addEventListener("DOMContentLoaded", function () {
        const form = document.querySelector("form");
        form.addEventListener("submit", function (e) {
            e.preventDefault(); // prevent default submission

            const username = document.getElementById("email").value;
            const password = document.getElementById("password").value;

            // Example hardcoded credentials
            const validUsername = "login@explorevacations.lk";
            const validPassword = "Test@123";

            if (username === validUsername && password === validPassword) {
                // alert("Login successful!");
                // Redirect or allow form submission
                window.location.href = "selection.php";
            } else {
                // alert("Invalid username or password!");
            }
        });
    });
</script>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const form = document.querySelector("form");
            form.addEventListener("submit", function (e) {
                e.preventDefault(); // prevent default submission

                const username = document.getElementById("email").value;
                const password = document.getElementById("password").value;

                const validUsername = "login@explorevacations.lk";
                const validPassword = "JkQ6rT5m09";

                if (username === validUsername && password === validPassword) {
                    // alert("Login successful!");
                    window.location.href = "selection.php";
                } else {
                    // alert("Invalid username or password!");
                }
            });
        });
    </script>
</body>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
