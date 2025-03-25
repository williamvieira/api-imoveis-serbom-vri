<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, DELETE, GET");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');


// Enable error reporting
// ini_set('display_errors', 1); 
// ini_set('display_startup_errors', 1);
// error_reporting(E_ALL);  // Report all errors, warnings, and notices


// Set the default timezone to São Paulo
date_default_timezone_set('America/Sao_Paulo');

// Database connection settings
$servername = "localhost";
$username = "u291561282_imoveis";
$password = "j5>O9sRgtZ"; 
$dbname = "u291561282_imoveis";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the JSON data from the request body
$data = json_decode(file_get_contents('php://input'), true);

// Capture the event data and other details
$event = $data['event'];
$module = $data['module'];
$module_id = $data['module_id'];
$ip = $_SERVER['REMOTE_ADDR']; // Get the client's IP address
$user_id = $data['user_id'];
$desc = $data['desc'];
$user_name = $data['user_name'];
$apelido = $data['apelido'];
$codigos_matricula = $data['codigos_matricula'];
 $matriculasJson = json_encode($codigos_matricula);

if(strlen($module) > 0) {
    
// Get the current date and time in São Paulo timezone
$date = date('Y-m-d H:i:s'); // Format: YYYY-MM-DD HH:MM:SS

// Preparar a consulta SQL
$sql = "INSERT INTO logs (event, module, module_id, ip, user_id, user_name, date, `desc`, apelido, codigos_matricula) 
        VALUES ('$event', '$module', '$module_id', '$ip', '$user_id', '$user_name', '$date', '$desc', '$apelido', '$matriculasJson')";

// Executar a consulta e verificar se foi bem-sucedida
if ($conn->query($sql) === TRUE) {
    echo json_encode(['status' => 'success']);
} else {
    echo json_encode(['status' => 'error', 'message' => $stmt->error]);
}

$conn->close();

}
?>
