<?php

header("Access-Control-Allow-Origin: *"); // Allow requests from any origin
header("Access-Control-Allow-Methods: POST, OPTIONS"); // Allow POST and OPTIONS methods
header("Access-Control-Allow-Headers: Content-Type, Authorization"); // Allow specific headers
header('Content-Type: application/json');

// Database connection
$mysqli = new mysqli("localhost", "u291561282_imoveis", "j5>O9sRgtZ", "u291561282_imoveis");

if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get the data sent by React
    $data = json_decode(file_get_contents("php://input"));
    
    $email = $data->email;
    $password = $data->password;

    // Check if user exists
    $query = "SELECT * FROM users WHERE email = ?";
    if ($stmt = $mysqli->prepare($query)) {
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $user = $result->fetch_assoc();
            
            // Verify password
            if (password_verify($password, $user['password'])) {
                // Password is correct
                echo json_encode(["success" => true, "message" => "Login successful", "fullname" => $user['fullname'], "perfil" => $user['perfil'], "permissoesMatricula" => $user['permissoesMatricula'], "id" => $user['id']]);
            } else {
                // Invalid password
                echo json_encode(["success" => false, "message" => "Invalid credentials"]);
            }
        } else {
            // User not found
            echo json_encode(["success" => false, "message" => "User not found"]);
        }

        $stmt->close();
    }

    $mysqli->close();
}
?>
