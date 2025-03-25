<?php
header('Content-Type: application/json');
require 'db.php'; // Arquivo de conexão com o banco de dados

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, DELETE, GET");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');

// Recupera todos os registros
// Retrieve all properties (GET request)
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
$search_value = isset($_GET['search_value']) ? $_GET['search_value'] : '';

// Verifica se o valor de busca foi fornecido
if (!empty($search_value)) {
    // Escapa o valor de busca para prevenir SQL Injection
    $search_value = $conn->real_escape_string($search_value);
    // Inicia a construção da query com a soma dos valores de compra
    $sql = "SELECT * FROM cartorios WHERE";
    $sql .= " nome LIKE '%$search_value%'";
    $result = mysqli_query($conn, $sql);
    $cidades = mysqli_fetch_all($result, MYSQLI_ASSOC);
    echo json_encode($cidades);
} else {
    // Query sem filtro de busca, trazendo todos os registros
    $sql = "SELECT * FROM cartorios
            ORDER BY ID DESC;";
    $result = mysqli_query($conn, $sql);
    $cidades = mysqli_fetch_all($result, MYSQLI_ASSOC);
    echo json_encode($cidades);
}
}



// Adiciona ou atualiza uma cidade
if ($_SERVER['REQUEST_METHOD'] === 'POST' || $_SERVER['REQUEST_METHOD'] === 'PUT') {
    $cartorios = $_POST['cartorios'] ?? $_GET['cartorios'];  // Recebe o nome da cidade
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $query = "INSERT INTO cartorios (nome) VALUES ('$cartorios')";
    } else {
        $id = $_GET['id'];
        $query = "UPDATE cartorios SET nome = '$cartorios' WHERE id = $id";
    }
    mysqli_query($conn, $query);
    echo json_encode(['message' => 'Cidade salva com sucesso']);
}

// Exclui uma cidade
if ($_SERVER['REQUEST_METHOD'] === 'DELETE') {
    $id = $_GET['id'];
    $query = "DELETE FROM cartorios WHERE id = $id";
    mysqli_query($conn, $query);
    echo json_encode(['message' => 'Cidade excluída com sucesso']);
}
?>