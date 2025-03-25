<?php

$servername = "localhost";
$username = "u291561282_imoveis"; // default username for phpMyAdmin
$password = "j5>O9sRgtZ"; // default password for phpMyAdmin (if none, leave it empty)
$dbname = "u291561282_imoveis";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}



?>
