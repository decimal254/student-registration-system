<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "student_db";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$name  = trim($_POST['name'] ?? '');
$email = trim($_POST['email'] ?? '');
$phone = trim($_POST['phone'] ?? '');


$checkSql = "SELECT * FROM students WHERE email = ? OR phone = ?";
$stmt = $conn->prepare($checkSql);
$stmt->bind_param("ss", $email, $phone);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    echo "<p style='color:red;'>A student with the same email or phone number already exists.</p>";
    echo "<p><a href='index.html'>Back to form</a></p>";
    exit();
}

$insertSql = "INSERT INTO students (name, email, phone, created_at) VALUES (?, ?, ?,)";
$stmt = $conn->prepare($insertSql);
$stmt->bind_param("sss", $name, $email, $phone);

if ($stmt->execute()) {
    echo "<p style='color:green;'>Student registered successfully!</p>";
    echo "<p><a href='index.html'>Register another student</a></p>";
} else {
    echo "<p style='color:red;'>Error: " . $stmt->error . "</p>";
}

$conn->close();
?>
