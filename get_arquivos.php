<?php
// Set the Content-Type header to application/json to indicate JSON response
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, DELETE, GET");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');


// Database configuration
$servername = "localhost";
$username = "u291561282_imoveis"; // default username for phpMyAdmin
$password = "j5>O9sRgtZ"; // default password for phpMyAdmin (if none, leave it empty)
$dbname = "u291561282_imoveis";

// Create a new mysqli instance
$conn = new mysqli($host, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die(json_encode(['error' => 'Connection failed: ' . $conn->connect_error]));
}

$search_value = isset($_GET['module_id']) ? $_GET['module_id'] : '';
if (!empty($search_value)) { 
    if (strpos($search_value, "MT") !== false) {
    $sql = "SELECT *, DATE_FORMAT(date, '%d/%m/%Y %H:%i:%s') AS date FROM logs WHERE (module_id LIKE '%$search_value%' OR codigos_matricula LIKE '%$search_value%') ORDER BY id DESC";
} else {
    $sql = "SELECT *, DATE_FORMAT(date, '%d/%m/%Y %H:%i:%s') AS date FROM logs WHERE module_id = '$search_value' ORDER BY id DESC";
}

    $result = $conn->query($sql);

// Check if there are results
if ($result->num_rows > 0) {
    
     $matriculas = [];
    
    // Fetch all rows and add to the matriculas array
    while ($row = $result->fetch_assoc()) {

        // Add the row to the matriculas array
        $matriculas[] = $row;
        
    }

    // Return the results as a JSON response
    echo json_encode($matriculas);
        // Close the connection
    $conn->close();
}  
    
} else {
    echo json_encode(['message' => 'No matriculas found']);
}


?>
