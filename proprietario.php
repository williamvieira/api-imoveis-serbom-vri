<?php
header('Content-Type: application/json');
require 'db.php'; // Arquivo de conexão com o banco de dados

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, DELETE, GET");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');

// ini_set('display_errors', 1); 
// ini_set('display_startup_errors', 1);
// error_reporting(E_ALL);  // Report all errors, warnings, and notices

function limparMascara($documento) {
    // Remove tudo que não for número
    return preg_replace('/\D/', '', $documento);
}


// Recupera todos os registros
// Retrieve all properties (GET request)
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
$search_value = isset($_GET['search_value']) ? $_GET['search_value'] : '';

// Verifica se o valor de busca foi fornecido
if (!empty($search_value)) {
    
     $search_value = $conn->real_escape_string($search_value);
    
    // Escapa o valor de busca para prevenir SQL Injection
    // Inicia a construção da query com a soma dos valores de compra
    $sql = "SELECT * FROM proprietarios WHERE";
    $sql .= " nome LIKE '%$search_value%'";
     $sql .= " OR nome_proprietario_grupo LIKE '%$search_value%'";
      $sql .= " OR cpf LIKE '%$search_value%'";
       $sql .= " OR cnpj LIKE '%$search_value%'";
         $sql .= " OR razao_social LIKE '%$search_value%'";
             $sql .= " OR tipo_pessoa LIKE '%$search_value%'";
    $result = mysqli_query($conn, $sql);
    $Proprietários = mysqli_fetch_all($result, MYSQLI_ASSOC);
    echo json_encode($Proprietários);
} else {
    // Query sem filtro de busca, trazendo todos os registros
    $sql = "SELECT * FROM proprietarios
            ORDER BY ID DESC;";
    $result = mysqli_query($conn, $sql);
    $Proprietários = mysqli_fetch_all($result, MYSQLI_ASSOC);
    echo json_encode($Proprietários);
}
}
// Adiciona ou atualiza uma Proprietário
if ($_SERVER['REQUEST_METHOD'] === 'POST' || $_SERVER['REQUEST_METHOD'] === 'PUT') {

    
    $data = json_decode(file_get_contents("php://input"));
    
    $tipo_pessoa = $data->tipo_pessoa;
    $nome = $data->nome;
    $nome_proprietario_grupo = $data->nome_proprietario_grupo;
    $cpf = limparMascara($data->cpf);
    $cnpj = limparMascara($data->cnpj);
    $razao_social = $data->razao_social;
        $tipo_pessoa = $data->tipo_pessoa;
    
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $query = "INSERT INTO proprietarios (nome, nome_proprietario_grupo, tipo_pessoa, cpf, cnpj, razao_social) VALUES ('$nome', '$nome_proprietario_grupo', '$tipo_pessoa', '$cpf', '$cnpj', '$razao_social')";
    } else {
        $id = $_GET['id'];
        $query = "UPDATE proprietarios SET nome = '$nome', nome_proprietario_grupo = '$nome_proprietario_grupo', tipo_pessoa = '$tipo_pessoa', cpf  = '$cpf', cnpj = '$cnpj', razao_social = '$razao_social' WHERE id = $id";
    }
    mysqli_query($conn, $query);
    echo json_encode(['message' => 'Proprietário salvo com sucesso']);
}

// Exclui uma Proprietário
if ($_SERVER['REQUEST_METHOD'] === 'DELETE') {
    $id = $_GET['id'];
    $query = "DELETE FROM proprietarios WHERE id = $id";
    mysqli_query($conn, $query);
    echo json_encode(['message' => 'Proprietário excluído com sucesso']);
}
?>