<?php

header("Access-Control-Allow-Origin: *"); // Allow requests from any origin
header("Access-Control-Allow-Methods: POST, PUT, DELETE"); // Allow POST, PUT and DELETE methods
header("Access-Control-Allow-Headers: Content-Type, Authorization"); // Allow specific headers
header('Content-Type: application/json');

// Enable error reporting
// ini_set('display_errors', 1); 
// ini_set('display_startup_errors', 1);
// error_reporting(E_ALL);  // Report all errors, warnings, and notices


date_default_timezone_set('America/Sao_Paulo');
$date = date('Y-m-d H:i:s');


function limparMascara($documento) {
    // Remove tudo que não for número
    return preg_replace('/\D/', '', $documento);
}

function limparTelefone($telefone) {
    // Remove todos os caracteres que não são números
    return preg_replace('/\D/', '', $telefone);
}

function limparMascaraDinheiroParaFloat($valor) {
    // Remove tudo o que não for número ou vírgula
    $valorLimpo = preg_replace('/[^\d,]/', '', $valor);
    
    // Substitui a vírgula por ponto para formato float
    $valorLimpo = str_replace(',', '.', $valorLimpo);
    
    // Converte o valor para float
    return (float) $valorLimpo;
}

function converterDataParaBanco($data) {
    // Verifica se a data tem o formato correto (dd/mm/yyyy)
    $dataArray = explode('/', $data);
    
    // Verifica se o array contém 3 elementos (dia, mês, ano)
    if (count($dataArray) == 3) {
        // Retorna a data no formato yyyy-mm-dd
        return $dataArray[2] . '-' . $dataArray[1] . '-' . $dataArray[0];
    }

    // Caso a data não esteja no formato esperado, retorna false
    return false;
}


header("Content-Type: application/json");
include_once 'db.php';

// Retrieve all properties (GET request)
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    $search_value = isset($_GET['search_value']) ? $_GET['search_value'] : '';

    // Add conditions if search parameters are provided
    if (!empty($search_value)) {
        $sql = "SELECT *, cod as cod_locatario FROM locatario WHERE";
        $sql .= " nomeLocatario LIKE '%$search_value%'";
        $sql .= " OR cod LIKE '%$search_value%'";
        $sql .= " OR cpfCnpjLocatario LIKE '%$search_value%'";
        $sql .= " OR apelidoLocatario LIKE '%$search_value%'";
        $sql .= " OR nomeContato1 LIKE '%$search_value%'";
        $sql .= " OR celularContato1 LIKE '%$search_value%'";
        $sql .= " OR telefoneContato1 LIKE '%$search_value%'";
        $sql .= " OR emailContato1 LIKE '%$search_value%'";
        $sql .= " OR nomeContato2 LIKE '%$search_value%'";
        $sql .= " OR celularContato2 LIKE '%$search_value%'";
        $sql .= " OR telefoneContato2 LIKE '%$search_value%'";
        $sql .= " OR emailContato2 LIKE '%$search_value%'";
        $sql .= " OR nomeContato3 LIKE '%$search_value%'";
        $sql .= " OR celularContato3 LIKE '%$search_value%'";
        $sql .= " OR telefoneContato3 LIKE '%$search_value%'";
        $sql .= " OR emailContato3 LIKE '%$search_value%'";
        $sql .= " OR dataInicio LIKE '%$search_value%'";
        $sql .= " OR dataFim LIKE '%$search_value%'";
        $sql .= " OR cod_matricula LIKE '%$search_value%'";
        $sql .= " OR apelido LIKE '%$search_value%'";
        $sql .= " OR local LIKE '%$search_value%'";
        $sql .= " OR observacoes LIKE '%$search_value%'";
    } else {
        $sql = "SELECT *, cod as cod_locatario FROM locatario ORDER BY ID DESC";
    }

    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $properties = array();
        while($row = $result->fetch_assoc()) {
            $properties[] = $row;
        }
        echo json_encode($properties);
    } else {
        echo json_encode([]);
    }
}

// Create a new property (POST request)
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $data = json_decode(file_get_contents("php://input"));

    $nomeLocatario = $conn->real_escape_string($data->nomeLocatario);
    $cpfCnpjLocatario = limparMascara($conn->real_escape_string($data->cpfCnpjLocatario));
    $apelidoLocatario = $conn->real_escape_string($data->apelidoLocatario);
    $nomeContato1 = $conn->real_escape_string($data->nomeContato1);
    $celularContato1 = limparTelefone($data->celularContato1);
    $telefoneContato1 = limparTelefone($data->telefoneContato1);
    $emailContato1 = $conn->real_escape_string($data->emailContato1);
    $nomeContato2 = $conn->real_escape_string($data->nomeContato2);
    $celularContato2 = limparTelefone($data->celularContato2);
    $telefoneContato2 = limparTelefone($data->telefoneContato2);
    $emailContato2 = $conn->real_escape_string($data->emailContato2);
    $nomeContato3 = $conn->real_escape_string($data->nomeContato3);
    $celularContato3 = limparTelefone($data->celularContato3);
    $telefoneContato3 = limparTelefone($data->telefoneContato3);
    $emailContato3 = $conn->real_escape_string($data->emailContato3);
    $dataInicio = converterDataParaBanco($data->data_inicio_string);
    $dataFim = converterDataParaBanco($data->data_fim_string);
    $data_fim_string = $data->data_fim_string;
    $data_inicio_string = $data->data_inicio_string;
    $dataFim = $data->dataFim;
    $cod_matricula = $conn->real_escape_string($data->cod_matricula);
    $apelido = $conn->real_escape_string($data->apelido);
    $local = $conn->real_escape_string($data->local);
    $observacoes = $conn->real_escape_string($data->observacoes);
    $matriculasSelecionadas =  $data->matriculasSelecionadas;
    $matriculasJson = json_encode($matriculasSelecionadas);
    $tipo_pessoa = $conn->real_escape_string($data->tipo_pessoa);
    $cpf = limparMascara($conn->real_escape_string($data->cpf));
    $cnpj = limparMascara($conn->real_escape_string($data->cnpj));
    $razao_social = $conn->real_escape_string($data->razao_social);
    
    // SQL para inserir o locatário na tabela locatario
    $sql = "INSERT INTO locatario (nomeLocatario, cpfCnpjLocatario, apelidoLocatario, nomeContato1, celularContato1, telefoneContato1, emailContato1, 
            nomeContato2, celularContato2, telefoneContato2, emailContato2, nomeContato3, celularContato3, telefoneContato3, emailContato3, 
            dataInicio, dataFim, cod_matricula, apelido, local, observacoes, matriculasSelecionadas, tipo_pessoa, cpf, cnpj, razao_social, data_inicio_string, data_fim_string, date_insert, date_update) 
            VALUES ('$nomeLocatario', '$cpfCnpjLocatario', '$apelidoLocatario', '$nomeContato1', '$celularContato1', '$telefoneContato1', '$emailContato1', 
            '$nomeContato2', '$celularContato2', '$telefoneContato2', '$emailContato2', '$nomeContato3', '$celularContato3', '$telefoneContato3', '$emailContato3', 
            '$dataInicio', '$dataFim', '$cod_matricula', '$apelido', '$local', '$observacoes', '$matriculasJson', '$tipo_pessoa', '$cpf', '$cnpj', '$razao_social', '$data_inicio_string', '$data_fim_string', '$date', '$date')";
        
    // Executando o SQL de inserção
    if ($conn->query($sql) === TRUE) {
        
        // Obtendo o ID do último registro inserido
        $lastID = $conn->insert_id;
        
        // Atualizando o campo 'cod' na tabela 'locatario'
        $sqlUpdateCodigo = "UPDATE locatario SET cod='US$lastID' WHERE id='$lastID'";
        $conn->query($sqlUpdateCodigo);
        
        // Selecionando registros da tabela GED onde o register_id é 'MTnull'
        $sqlSelectGED = "SELECT * FROM GED WHERE register_id = 'USnull'";
        $resultGED = $conn->query($sqlSelectGED);
        
        // Verificando se existem registros e realizando o update na tabela GED
        if ($resultGED->num_rows > 0) {
            // Atualizando o campo 'register_id' da tabela GED com o novo código
            while ($row = $resultGED->fetch_assoc()) {
                $sqlUpdateGED = "UPDATE GED SET register_id = 'US$lastID' WHERE id = " . $row['id'];
                $conn->query($sqlUpdateGED);
            }
        }
        
        // Retorna a resposta de sucesso
        echo json_encode(["message" => "Cadastrado com sucesso", "id" => "$lastID"]);
        
    } else {
        
        // Caso ocorra algum erro na inserção
        echo json_encode(["message" => "Error: " . $sql . "<br>" . $conn->error]);
    }
}


// Update an existing property (PUT request)
if ($_SERVER['REQUEST_METHOD'] == 'PUT') {
    $data = json_decode(file_get_contents("php://input"));

    $id = $data->id;
    $nomeLocatario = $conn->real_escape_string($data->nomeLocatario);
    $cpfCnpjLocatario = limparMascara($conn->real_escape_string($data->cpfCnpjLocatario));
    $apelidoLocatario = $conn->real_escape_string($data->apelidoLocatario);
    $nomeContato1 = $conn->real_escape_string($data->nomeContato1);
    $celularContato1 = limparTelefone($data->celularContato1);
    $telefoneContato1 = limparTelefone($data->telefoneContato1);
    $emailContato1 = $conn->real_escape_string($data->emailContato1);
    $nomeContato2 = $conn->real_escape_string($data->nomeContato2);
    $celularContato2 = limparTelefone($data->celularContato2);
    $telefoneContato2 = limparTelefone($data->telefoneContato2);
    $emailContato2 = $conn->real_escape_string($data->emailContato2);
    $nomeContato3 = $conn->real_escape_string($data->nomeContato3);
    $celularContato3 = limparTelefone($data->celularContato3);
    $telefoneContato3 = limparTelefone($data->telefoneContato3);
    $emailContato3 = $conn->real_escape_string($data->emailContato3);
    $dataInicio = converterDataParaBanco($data->data_inicio_string);
    $dataFim = converterDataParaBanco($data->data_fim_string);
    $data_fim_string = $data->data_fim_string;
    $data_inicio_string = $data->data_inicio_string;
    $cod_matricula = $conn->real_escape_string($data->cod_matricula);
    $apelido = $conn->real_escape_string($data->apelido);
    $local = $conn->real_escape_string($data->local);
    $observacoes = $conn->real_escape_string($data->observacoes);
    $matriculasSelecionadas =  $data->matriculasSelecionadas;
    $matriculasJson = json_encode($matriculasSelecionadas);
    $cpf = limparMascara($conn->real_escape_string($data->cpf));
    $cnpj = limparMascara($conn->real_escape_string($data->cnpj));
    $razao_social = $conn->real_escape_string($data->razao_social);
    $tipo_pessoa = $conn->real_escape_string($data->tipo_pessoa);
    $sql = "UPDATE locatario SET 
    nomeLocatario='$nomeLocatario', 
    cpfCnpjLocatario='$cpfCnpjLocatario', 
    apelidoLocatario='$apelidoLocatario', 
    nomeContato1='$nomeContato1', 
    celularContato1='$celularContato1', 
    telefoneContato1='$telefoneContato1', 
    emailContato1='$emailContato1',
    nomeContato2='$nomeContato2', 
    celularContato2='$celularContato2', 
    telefoneContato2='$telefoneContato2', 
    emailContato2='$emailContato2',
    nomeContato3='$nomeContato3', 
    celularContato3='$celularContato3', 
    telefoneContato3='$telefoneContato3', 
    emailContato3='$emailContato3',
    dataInicio='$dataInicio', 
    dataFim='$dataFim', 
    cod_matricula='$cod_matricula', 
    apelido='$apelido', 
    local='$local', 
    observacoes='$observacoes',
    tipo_pessoa='$tipo_pessoa',
    razao_social='$razao_social',
    cpf='$cpf',
    date_update='$date_update',
    cnpj='$cnpj',
      data_inicio_string='$data_inicio_string',
        data_fim_string='$data_fim_string',
    matriculasSelecionadas='$matriculasJson' 
    WHERE id='$id'";

    if ($conn->query($sql) === TRUE) {
        echo json_encode(["message" => "Imóvel atualizado com sucesso"]);
    } else {
        echo json_encode(["message" => "Error: " . $conn->error]);
    }
}

// Delete a property (DELETE request)
if ($_SERVER['REQUEST_METHOD'] == 'DELETE') {
    $data = json_decode(file_get_contents("php://input"));
    $id = $_GET['id'];

    $sql = "DELETE FROM locatario WHERE id='$id'";

    if ($conn->query($sql) === TRUE) {
        echo json_encode(["message" => "Imóvel excluído com sucesso", "id" => $id]);
    } else {
        echo json_encode(["message" => "Error: " . $conn->error]);
    }
}

?>
