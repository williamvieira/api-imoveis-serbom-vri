<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, DELETE, GET");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');

include_once 'db.php';

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    $sql = "SELECT 
    CONCAT('Ano ', YEAR(data_compra_contrato)) AS year,
    SUM(valor_compra_contrato) AS totalValue
FROM 
    imoveis
WHERE
    data_compra_contrato IS NOT NULL
    AND YEAR(data_compra_contrato) > 0  -- Exclui ano 0
GROUP BY 
    YEAR(data_compra_contrato)
HAVING 
    SUM(valor_compra_contrato) > 0  -- Exclui total de compras igual a 0
ORDER BY 
    YEAR(data_compra_contrato);";
    $result = $conn->query($sql);
    $data = $result->fetch_all(MYSQLI_ASSOC);
    echo $dataJson = json_encode($data);
}



?>
