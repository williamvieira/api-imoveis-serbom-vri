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

// Query the imoveis table
$search_value = isset($_GET['search_value']) ? $_GET['search_value'] : '';

// Verifica se o valor de busca foi fornecido
if (!empty($search_value)) { 
    $sql = "SELECT cod, apelido, local  FROM imoveis WHERE";
    $sql .= " cod LIKE '%$search_value%'";
    $sql .= " OR apelido LIKE '%$search_value%' order by id desc";
} else {
    $sql = "SELECT cod, apelido FROM imoveis order by id desc";
}

$result = $conn->query($sql);

// Check if there are results
if ($result->num_rows > 0) {
    
    $matriculas = [];
    
    // Fetch all rows and add to the matriculas array
    while ($row = $result->fetch_assoc()) {
        
        $line = $row['cod'] . ' - ' . $row['apelido'];
        
        $local = $row['local'];
        $local1 = json_decode($local);
        $i = 0;
        foreach ($local1 as $value) {
            if($i == 0) {
                $line .= " - " . $value->label;
            } else {
                $line .= ", $value->label";
            }
            $i++;
        }

        // Create the 'name' by concatenating 'cod', 'apelido', and 'local'
        $row['name'] = $line;
        
        // Rename 'cod' to 'id' and remove 'cod' to avoid duplication
        $row['id'] = $line;
        unset($row['cod']);
        
        // Add the row to the matriculas array
        $matriculas[] = $row;
        
    }

    // Return the results as a JSON response
    echo json_encode($matriculas);
} else {
    echo json_encode(['message' => 'No matriculas found']);
}

// Close the connection
$conn->close();
?>
