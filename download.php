<?php
// download.php - Realiza o download do arquivo

include 'db.php';

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, DELETE, GET");
header("Access-Control-Allow-Headers: Content-Type, Authorization");

if (isset($_GET['file'])) {
    $filename = $_GET['file'];

    // Verifica se o arquivo existe no banco de dados
    $stmt = $conn->prepare("SELECT * FROM GED WHERE filename = ?");
    $stmt->bind_param("s", $filename);
    $stmt->execute();
    $result = $stmt->get_result();
    $file = $result->fetch_assoc();

    if ($file && file_exists($file['path'])) {
        // Fornece o arquivo para download
        header('Content-Type: application/octet-stream');
        header('Content-Disposition: attachment; filename="' . basename($filename) . '"');
        readfile($file['path']);
        exit;
    } else {
        echo 'Arquivo não encontrado!';
    }
}
?>
