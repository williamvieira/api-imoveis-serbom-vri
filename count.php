<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, DELETE, GET");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');

// logs.php - Lista os logs de ações dos usuários com revisão e incremental

include 'db.php';

// Verificar se o parâmetro 'module' foi passado
if (!isset($_GET['module'])) {
    echo json_encode(["error" => "O parâmetro 'module' está ausente"]);
    exit;
}

$module = $_GET['module'];
$register_id = $_GET['register_id'];

// Preparar e vincular a consulta SQL
$stmt = $conn->prepare("SELECT * FROM GED WHERE module = ? and register_id = ? ORDER BY date DESC");

if ($stmt === false) {
    echo json_encode(["error" => "Erro ao preparar a consulta SQL"]);
    exit;
}

$stmt->bind_param("ss", $module, $register_id); // 's' indica que 'module' é um parâmetro do tipo string

$stmt->execute();
$result = $stmt->get_result();

// Obter o número total de registros para começar a contagem do maior número
$totalRows = $result->num_rows;
$logs = [];
$counter = $totalRows;  // Iniciar a contagem do maior número

while ($row = $result->fetch_assoc()) {
    // Adicionar as colunas "revisao" e "incremental"
    $row['revisao'] = $counter;     // A revisão começa com o maior número e vai diminuindo
    $row['incremental'] = $counter; // O incremental também segue a mesma lógica

    $logs[] = $row;
    $counter--; // Decrementar a revisão e o incremental
}

// Adicionar a contagem total de logs ao resultado
$response = [
    "count" => $totalRows,
    "logs" => $logs
];

echo json_encode($response);

// Fechar a declaração e a conexão
$stmt->close();
$conn->close();

?>
