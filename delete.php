<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, DELETE, GET");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');

// Conectar ao banco de dados (ou aonde os arquivos estão armazenados)
include 'db.php';

// Verificar se o parâmetro 'fileId' foi passado
if (!isset($_GET['fileId'])) {
    echo json_encode(["error" => "O parâmetro 'fileId' está ausente"]);
    exit;
}

$fileId = $_GET['fileId'];

        // Remover o registro do banco de dados
        $stmt = $conn->prepare("DELETE FROM GED WHERE id = ?");
        if ($stmt === false) {
            echo json_encode(["error" => "Erro ao preparar a consulta de exclusão"]);
            exit;
        }

        $stmt->bind_param("i", $fileId);
        $stmt->execute();
        
        echo json_encode(["success" => "Arquivo excluído com sucesso"]);
        
  
// Fechar a conexão
$stmt->close();
$conn->close();