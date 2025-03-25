<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, DELETE, GET");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');

date_default_timezone_set('America/Sao_Paulo');
$date = date('Y-m-d H:i:s');

// Enable error reporting
// ini_set('display_errors', 1); 
// ini_set('display_startup_errors', 1);
// error_reporting(E_ALL);  // Report all errors, warnings, and notices

function limparMascara($documento) {
    return preg_replace('/\D/', '', $documento);
}

function limparMascaraDinheiroParaFloat($valor) {
    $valorLimpo = preg_replace('/[^\d,]/', '', $valor);
    $valorLimpo = str_replace(',', '.', $valorLimpo);
    return (float) $valorLimpo;
}

include_once 'db.php';

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    $search_value = isset($_GET['search_value']) ? $_GET['search_value'] : '';

    $sql = "SELECT * FROM aguas";
    if (!empty($search_value)) {
    $sql .= " WHERE cod_matricula LIKE '%$search_value%' 
                  OR apelido LIKE '%$search_value%' 
                  OR cod LIKE '%$search_value%' 
                  OR local LIKE '%$search_value%' 
                  OR numero_relogio LIKE '%$search_value%' 
                  OR sub_numero_relogio LIKE '%$search_value%' 
                  OR categoria_consumo LIKE '%$search_value%' 
                  OR nome_proprietario LIKE '%$search_value%' 
                  OR cpf_cnpj_proprietario LIKE '%$search_value%' 
                  OR mesmo_proprietario_matricula LIKE '%$search_value%' 
                  OR nome_titular_consumidor LIKE '%$search_value%' 
                  OR cpf_cnpj_titular_consumidor LIKE '%$search_value%' 
                  OR mesmo_titular_usuario LIKE '%$search_value%' 
                  OR status LIKE '%$search_value%' 
                  OR debitos_aberto LIKE '%$search_value%' 
                  OR valor_debitos_aberto LIKE '%$search_value%' 
                  OR mes_ultimo_competencia LIKE '%$search_value%' 
                  OR cadastro_atualizado LIKE '%$search_value%' 
                  OR observacoes LIKE '%$search_value%'";
    } else {
        $sql .= " ORDER BY id DESC";
    }

    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $matriculas = array();
        while ($row = $result->fetch_assoc()) {
            $matriculas[] = $row;
        }
        echo json_encode($matriculas);
    } else {
        echo json_encode([]);
    }
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    
    $data = json_decode(file_get_contents("php://input"));

    $cod_matricula = $conn->real_escape_string($data->cod_matricula);
    $apelido = $conn->real_escape_string($data->apelido);
    $local = $data->local;
    $localJson = json_encode($local);
    $numero_relogio = $conn->real_escape_string($data->numero_relogio);
    $sub_numero_relogio = $conn->real_escape_string($data->sub_numero_relogio);
    $categoria_consumo = $conn->real_escape_string($data->categoria_consumo);
    $nome_proprietario = $conn->real_escape_string($data->nome_proprietario);
    $cpf_cnpj_proprietario = limparMascara($conn->real_escape_string($data->cpf_cnpj_proprietario));
    $mesmo_proprietario_matricula = $conn->real_escape_string($data->mesmo_proprietario_matricula);
    $nome_titular_consumidor = $conn->real_escape_string($data->nome_titular_consumidor);
    $cpf_cnpj_titular_consumidor = limparMascara($conn->real_escape_string($data->cpf_cnpj_titular_consumidor));
    $mesmo_titular_usuario = $conn->real_escape_string($data->mesmo_titular_usuario);
    $status = $conn->real_escape_string($data->status);
    $debitos_aberto = $conn->real_escape_string($data->debitos_aberto);
    $valor_debitos_aberto = limparMascaraDinheiroParaFloat($data->valor_debitos_aberto);
    $mes_ultimo_competencia = $conn->real_escape_string($data->mes_ultimo_competencia);
    $cadastro_atualizado = $conn->real_escape_string($data->cadastro_atualizado);
    $observacoes = $conn->real_escape_string($data->observacoes);
    $matriculasSelecionadas =  $data->matriculasSelecionadas;
    $matriculasJson = json_encode($matriculasSelecionadas);

    // SQL para inserir os dados na tabela aguas
    $sql = "INSERT INTO aguas (matriculasSelecionadas, cod_matricula, apelido, local, numero_relogio, sub_numero_relogio, categoria_consumo, nome_proprietario, cpf_cnpj_proprietario, mesmo_proprietario_matricula, nome_titular_consumidor, cpf_cnpj_titular_consumidor, mesmo_titular_usuario, status, debitos_aberto, valor_debitos_aberto, mes_ultimo_competencia, cadastro_atualizado, observacoes, date_insert, date_update) 
            VALUES ('$matriculasJson', '$cod_matricula', '$apelido', '$localJson', '$numero_relogio', '$sub_numero_relogio', '$categoria_consumo', '$nome_proprietario', '$cpf_cnpj_proprietario', '$mesmo_proprietario_matricula', '$nome_titular_consumidor', '$cpf_cnpj_titular_consumidor', '$mesmo_titular_usuario', '$status', '$debitos_aberto', '$valor_debitos_aberto', '$mes_ultimo_competencia', '$cadastro_atualizado', '$observacoes', '$date', '$date')";

    // Executando o SQL de inserção
    if ($conn->query($sql) === TRUE) {
        
        // Obtendo o ID do último registro inserido
        $lastID = $conn->insert_id;
        
        // Atualizando o campo 'cod' na tabela 'aguas'
        $sqlUpdateCodigo = "UPDATE aguas SET cod='RA$lastID' WHERE id='$lastID'";
        $conn->query($sqlUpdateCodigo);
        
        // Selecionando registros da tabela GED onde o register_id é 'MTnull'
        $sqlSelectGED = "SELECT * FROM GED WHERE register_id = 'RAnull'";
        $resultGED = $conn->query($sqlSelectGED);
        
        // Verificando se existem registros e realizando o update na tabela GED
        if ($resultGED->num_rows > 0) {
            // Atualizando o campo 'register_id' da tabela GED com o novo código
            while ($row = $resultGED->fetch_assoc()) {
                $sqlUpdateGED = "UPDATE GED SET register_id = 'RA$lastID' WHERE id = " . $row['id'];
                $conn->query($sqlUpdateGED);
            }
        }
        
        // Retorna a resposta de sucesso
        echo json_encode(["message" => "Cadastro realizado com sucesso", "id" => "$lastID"]);
        
    } else {
        
        // Caso ocorra algum erro na inserção
        echo json_encode(["message" => "Erro: " . $conn->error]);
    }
}


if ($_SERVER['REQUEST_METHOD'] == 'PUT') {
    
    $data = json_decode(file_get_contents("php://input"));

    $id = $data->id;
    $cod_matricula = $conn->real_escape_string($data->cod_matricula);
    $apelido = $conn->real_escape_string($data->apelido);
    $local = $data->local;
    $localJson = json_encode($local);
    $numero_relogio = $conn->real_escape_string($data->numero_relogio);
    $sub_numero_relogio = $conn->real_escape_string($data->sub_numero_relogio);
    $categoria_consumo = $conn->real_escape_string($data->categoria_consumo);
    $nome_proprietario = $conn->real_escape_string($data->nome_proprietario);
    $cpf_cnpj_proprietario = limparMascara($conn->real_escape_string($data->cpf_cnpj_proprietario));
    $mesmo_proprietario_matricula = $conn->real_escape_string($data->mesmo_proprietario_matricula);
    $nome_titular_consumidor = $conn->real_escape_string($data->nome_titular_consumidor);
    $cpf_cnpj_titular_consumidor = limparMascara($conn->real_escape_string($data->cpf_cnpj_titular_consumidor));
    $mesmo_titular_usuario = $conn->real_escape_string($data->mesmo_titular_usuario);
    $status = $conn->real_escape_string($data->status);
    $debitos_aberto = $conn->real_escape_string($data->debitos_aberto);
    $valor_debitos_aberto = limparMascaraDinheiroParaFloat($data->valor_debitos_aberto);
    $mes_ultimo_competencia = $conn->real_escape_string($data->mes_ultimo_competencia);
    $cadastro_atualizado = $conn->real_escape_string($data->cadastro_atualizado);
    $observacoes = $conn->real_escape_string($data->observacoes);
    $matriculasSelecionadas =  $data->matriculasSelecionadas;
    $matriculasJson = json_encode($matriculasSelecionadas);

    $sql = "UPDATE aguas SET matriculasSelecionadas='$matriculasJson', date_update='$date_update', cod_matricula='$cod_matricula', apelido='$apelido', local='$localJson', numero_relogio='$numero_relogio', sub_numero_relogio='$sub_numero_relogio', categoria_consumo='$categoria_consumo', nome_proprietario='$nome_proprietario', cpf_cnpj_proprietario='$cpf_cnpj_proprietario', mesmo_proprietario_matricula='$mesmo_proprietario_matricula', nome_titular_consumidor='$nome_titular_consumidor', cpf_cnpj_titular_consumidor='$cpf_cnpj_titular_consumidor', mesmo_titular_usuario='$mesmo_titular_usuario', status='$status', debitos_aberto='$debitos_aberto', valor_debitos_aberto='$valor_debitos_aberto', mes_ultimo_competencia='$mes_ultimo_competencia', cadastro_atualizado='$cadastro_atualizado', observacoes='$observacoes' WHERE id='$id'";

    if ($conn->query($sql) === TRUE) {
        
        echo json_encode(["message" => "Cadastro atualizado com sucesso"]);
        
    } else {
        
        echo json_encode(["message" => "Erro: " . $conn->error]);
        
    }
}

if ($_SERVER['REQUEST_METHOD'] == 'DELETE') {
    $id = $_GET['id'];

    $sql = "DELETE FROM aguas WHERE id='$id'";

    if ($conn->query($sql) === TRUE) {
        echo json_encode(["message" => "Cadastro excluído com sucesso"]);
    } else {
        echo json_encode(["message" => "Erro: " . $conn->error]);
    }
}

?>
