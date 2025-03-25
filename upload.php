<?php
date_default_timezone_set('America/Sao_Paulo');
$date = date('Y-m-d H:i:s');

include 'db.php';

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, DELETE, GET");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');





if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['file'])) {
    
    // Criação do nome do arquivo com a data no início
    $timestamp = date('Ymd_His');  // Exemplo: 20250204_153000
    $fileNameWithDate = $timestamp . '_' . basename($_FILES['file']['name']); // Adiciona a data ao nome original do arquivo
    
    $file = $_FILES['file'];
    $uploadDir = 'uploads/';
    $uploadFile = $uploadDir . $fileNameWithDate;  // Usa o novo nome do arquivo com a data

    // Cria o diretório de uploads, caso não exista
    if (!is_dir($uploadDir)) {
        mkdir($uploadDir, 0777, true);
    }

    // Move o arquivo para o diretório de uploads
    if (move_uploaded_file($file['tmp_name'], $uploadFile)) {
        
        $field_name = $_POST['field_name']; 
        $module = $_POST['module']; 
        $username = $_POST['username']; 
        $user_id = $_POST['user_id']; 
        $register_id = $_POST['register_id']; 
        $action = 'GED';
        $name = $fileNameWithDate;
        
        $logStmt = $conn->prepare("INSERT INTO GED (module, filename, path, username, action, date, field_name, user_id, user_name, register_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        $logStmt->bind_param("ssssssssss", $module, $name, $uploadFile, $username, $action, $date, $field_name, $user_id, $username, $register_id);
        
        $logStmt->execute();

        echo json_encode(['status' => 'success', 'message' => 'Arquivo enviado com sucesso!']);
        
    } else {
        
        // Resposta de erro no envio do arquivo
        echo json_encode(['status' => 'error', 'message' => 'Erro ao enviar o arquivo.']);
        
    }
} else {
    
    // Resposta de erro, nenhum arquivo recebido
    echo json_encode(['status' => 'error', 'message' => 'Nenhum arquivo recebido.']);
    
}

?>
