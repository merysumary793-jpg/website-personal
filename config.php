<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

$host = 'localhost';
$user = 'root';
$pass = '';
$db   = 'estetica_motors';

$conn = new mysqli($host, $user, $pass, $db);

$base_url = 'http://localhost/estetica-motors/';

if ($conn->connect_error) {
    die('Database connection failed: ' . $conn->connect_error);
}
?>
