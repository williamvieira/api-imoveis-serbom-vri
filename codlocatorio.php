<?php
// Definindo cabeçalhos para permitir requisições CORS (se necessário)
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");

$servername = "localhost";
$username = "u291561282_imoveis"; // default username for phpMyAdmin
$password = "j5>O9sRgtZ"; // default password for phpMyAdmin (if none, leave it empty)
$dbname = "u291561282_imoveis";

// Criar conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar a conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

// Verificar se o parâmetro 'cod_matricula' foi enviado
if (isset($_GET['cod_locatario'])) {
    $cod_locatario = $_GET['cod_locatario'];

    // Escapar o valor de cod_matricula para evitar SQL Injection
    $cod_locatario = $conn->real_escape_string($cod_locatario);

    // Preparar a consulta ao banco de dados sem usar bind_param
    $sql = "SELECT *, cod as cod_locatario  FROM locatario WHERE cod = '$cod_locatario'";  // Observação: o valor é colocado diretamente na string

    // Executar a consulta
    $result = $conn->query($sql);

    // Verificar se algum registro foi encontrado
    if ($result->num_rows > 0) {
        // Retornar o primeiro registro encontrado (ou mais, se necessário)
        $row = $result->fetch_assoc();
        echo json_encode($row);
    } else {
        echo json_encode(["message" => "Nenhum registro encontrado."]);
    }
} else {
    echo json_encode(["message" => "Parâmetro 'cod_locatario' não enviado."]);
}

$conn->close();
?>
