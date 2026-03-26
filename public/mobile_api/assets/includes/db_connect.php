<?php
//$host = "localhost";
//$user = "explore";
//$pass = "k4p00Xy&9";
//$db = "explores_";

//$conn = new mysqli($host, $user, $pass, $db);

//if ($conn->connect_error) {
// die("DB Connection failed: " . $conn->connect_error);
//}

$host = "127.0.0.1";
$user = "root";
$pass = "";
$db = "admin_erp";

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("DB Connection failed: " . $conn->connect_error);
}
