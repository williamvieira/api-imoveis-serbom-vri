<?php
// Set the response type to JSON
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, DELETE, GET");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');

// Database connection settings
$servername = "localhost";
$username = "u291561282_imoveis"; // default username for phpMyAdmin
$password = "j5>O9sRgtZ"; // default password for phpMyAdmin (if none, leave it empty)
$dbname = "u291561282_imoveis";

// Cria a conexão com o banco de dados
$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica a conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

if (isset($_GET['q']) && !empty($_GET['q'])) {
    // Escapar o valor da pesquisa para evitar injeção de SQL
    $query = $conn->real_escape_string(strtolower($_GET['q'])); // Converte para minúsculas e escapa o valor

    // SQL para buscar os imóveis com base no 'cod' (que será retornado como 'cod_matricula') e 'apelido'
    $sql = "SELECT cod AS cod_matricula, apelido FROM matriculas WHERE LOWER(cod) LIKE '%$query%' OR apelido LIKE '%$query%' LIMIT 10";
    $result = $conn->query($sql); // Executa a consulta diretamente

    // Verifica se há resultados
    if ($result->num_rows > 0) {
        $imoveis = [];
        while ($row = $result->fetch_assoc()) {
            // Formata os dados para o formato adequado para o React Select
            $imoveis[] = [
                'value' => $row['cod_matricula'], // Código do imóvel
                'label' => $row['cod_matricula'] . ' - ' . $row['apelido'] // Label para exibição no Select
            ];
        }
        // Retorna os dados como JSON
        echo json_encode($imoveis);
    } else {
        // Caso não encontre imóveis
        echo json_encode([]);
    }
} else {
    // Se não houver o parâmetro "q", retorna todos os imóveis
    $sql = "SELECT cod as cod_matricula, apelido FROM matriculas LIMIT 10";
    $result = $conn->query($sql);

    $imoveis = [];
    while ($row = $result->fetch_assoc()) {
        $imoveis[] = [
            'value' => $row['cod_matricula'],
            'label' => $row['cod_matricula'] . ' - ' . $row['apelido']
        ];
    }

    // Retorna os dados como JSON
    echo json_encode($imoveis);
}

// Fecha a conexão com o banco de dados
$conn->close();
?>