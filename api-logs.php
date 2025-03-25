<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header("Content-Type: application/json");

date_default_timezone_set('America/Sao_Paulo');

include_once 'db.php';

// Verifica a conexão
if ($conn->connect_error) {
    die(json_encode(["error" => "Database connection failed: " . $conn->connect_error]));
}

// Verifica se é uma requisição GET
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    $search_value = isset($_GET['search_value']) ? $_GET['search_value'] : '';

    // Usa prepared statements para evitar SQL Injection
    if (!empty($search_value)) {
        $stmt = $conn->prepare("SELECT DISTINCT * FROM `logs` WHERE `desc` LIKE ? AND `desc` != '' AND `desc` NOT LIKE '%undefined%' ORDER BY `id` DESC LIMIT 1000");
        $search_param = "%$search_value%";
        $stmt->bind_param("s", $search_param);
    } else {
        $stmt = $conn->prepare("SELECT DISTINCT * FROM `logs` WHERE `desc` != '' AND `desc` NOT LIKE '%undefined%' ORDER BY `id` DESC LIMIT 1000");
    }

    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $logs = [];
        while ($row = $result->fetch_assoc()) {
            // Converte a data para o formato dd/mm/yyyy H:i:s
            if (!empty($row['date'])) {
                $date = DateTime::createFromFormat('Y-m-d H:i:s', $row['date']);
                if ($date) {
                    $row['date'] = $date->format('d/m/Y H:i:s');
                }
            }
            $logs[] = $row;
        }
        echo json_encode($logs);
    } else {
        echo json_encode([]);
    }
}
