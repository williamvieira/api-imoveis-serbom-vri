<?php

header("Access-Control-Allow-Origin: *"); // Allow requests from any origin
header("Access-Control-Allow-Methods: POST, PUT, DELETE"); // Allow POST, PUT and DELETE methods
header("Access-Control-Allow-Headers: Content-Type, Authorization"); // Allow specific headers
header('Content-Type: application/json');

// Função para limpar a máscara (remover caracteres não numéricos)
function limparMascara($documento) {
    return preg_replace('/\D/', '', $documento);
}

ini_set('display_errors', 1); 
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);  // Report all errors, warnings, and notices

header("Content-Type: application/json");
include_once 'db.php';

// Retrieve all properties (GET request)
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    $search_value = isset($_GET['search_value']) ? $_GET['search_value'] : '';

    // Add conditions if search parameters are provided
    if (!empty($search_value)) {
        $sql = "SELECT * FROM urbanorural WHERE";
        $sql .= " nomeProprietario LIKE '%$search_value%' OR cod LIKE '%$search_value%' OR cpfCnpjProprietario LIKE '%$search_value%'";
        $sql .= " OR endereco LIKE '%$search_value%' OR bairro LIKE '%$search_value%' OR cidade LIKE '%$search_value%'";
        $sql .= " OR uf LIKE '%$search_value%' OR cep LIKE '%$search_value%' OR setor LIKE '%$search_value%'";
        $sql .= " OR lote LIKE '%$search_value%' OR quadra LIKE '%$search_value%' OR apelido LIKE '%$search_value%'";
    } else {
        $sql = "SELECT * FROM urbanorural ORDER BY ID DESC";
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

    // Escape and sanitize input data
    $tipoRelatorio = $conn->real_escape_string($data->tipoRelatorio ?? "urbano");
    $codigoCadastro = $conn->real_escape_string($data->codigoCadastro);
    $apelido = $conn->real_escape_string($data->apelido);
    $inscricaoMunicipal = $conn->real_escape_string($data->inscricaoMunicipal);
    $setor = $conn->real_escape_string($data->setor);
    $lote = $conn->real_escape_string($data->lote);
    $quadra = $conn->real_escape_string($data->quadra);
    $nomeProprietario = $conn->real_escape_string($data->nomeProprietario);
    $nomeProprietarioGrupo = $conn->real_escape_string($data->nomeProprietarioGrupo);
    $cpfCnpjProprietario = limparMascara($conn->real_escape_string($data->cpfCnpjProprietario));
    $areaTerreno = $conn->real_escape_string($data->areaTerreno);
    $geometriaRegular = $conn->real_escape_string($data->geometriaRegular);
    $metrosFrente = $conn->real_escape_string($data->metrosFrente);
    $metrosFundo = $conn->real_escape_string($data->metrosFundo);
    $metrosLadoDireito = $conn->real_escape_string($data->metrosLadoDireito);
    $metrosLadoEsquerdo = $conn->real_escape_string($data->metrosLadoEsquerdo);
    $cep = $conn->real_escape_string($data->cep);
    $endereco = $conn->real_escape_string($data->endereco);
    $numero = $conn->real_escape_string($data->numero);
    $complemento = $conn->real_escape_string($data->complemento);
    $bairro = $conn->real_escape_string($data->bairro);
    $cidade = $conn->real_escape_string($data->cidade);
    $uf = $conn->real_escape_string($data->uf);
    $observacoes = $conn->real_escape_string($data->observacoes);
    
    // SQL to insert the property
    $sql = "INSERT INTO urbanorural (tipoRelatorio, codigoCadastro, apelido, inscricaoMunicipal, setor, lote, quadra, nomeProprietario, nomeProprietarioGrupo, cpfCnpjProprietario, areaTerreno, geometriaRegular, metrosFrente, metrosFundo, metrosLadoDireito, metrosLadoEsquerdo, cep, endereco, numero, complemento, bairro, cidade, uf, observacoes) 
            VALUES ($tipoRelatorio', '$codigoCadastro', '$apelido', '$inscricaoMunicipal', '$setor', '$lote', '$quadra', '$nomeProprietario', '$nomeProprietarioGrupo', '$cpfCnpjProprietario', '$areaTerreno', '$geometriaRegular', '$metrosFrente', '$metrosFundo', '$metrosLadoDireito', '$metrosLadoEsquerdo', '$cep', '$endereco', '$numero', '$complemento', '$bairro', '$cidade', '$uf', '$observacoes')";
    
    if ($conn->query($sql) === TRUE) {
        $lastID = $conn->insert_id;
        $sqlUpdateCodigo = "UPDATE urbanorural SET cod='IPTU$lastID' WHERE id='$lastID'";
        $conn->query($sqlUpdateCodigo);
        echo json_encode(["message" => "Imóvel cadastrado com sucesso"]);
    } else {
        echo json_encode(["message" => "Error: " . $sql . "<br>" . $conn->error]);
    }
}

// Update an existing property (PUT request)
if ($_SERVER['REQUEST_METHOD'] == 'PUT') {
    $data = json_decode(file_get_contents("php://input"));

    $id = $data->id;
    $cod = $conn->real_escape_string($data->cod);
    $tipoRelatorio = $conn->real_escape_string($data->tipoRelatorio ?? "urbano");
    $codigoCadastro = $conn->real_escape_string($data->codigoCadastro);
    $apelido = $conn->real_escape_string($data->apelido);
    $inscricaoMunicipal = $conn->real_escape_string($data->inscricaoMunicipal);
    $setor = $conn->real_escape_string($data->setor);
    $lote = $conn->real_escape_string($data->lote);
    $quadra = $conn->real_escape_string($data->quadra);
    $nomeProprietario = $conn->real_escape_string($data->nomeProprietario);
    $nomeProprietarioGrupo = $conn->real_escape_string($data->nomeProprietarioGrupo);
    $cpfCnpjProprietario = limparMascara($conn->real_escape_string($data->cpfCnpjProprietario));
    $areaTerreno = $conn->real_escape_string($data->areaTerreno);
    $geometriaRegular = $conn->real_escape_string($data->geometriaRegular);
    $metrosFrente = $conn->real_escape_string($data->metrosFrente);
    $metrosFundo = $conn->real_escape_string($data->metrosFundo);
    $metrosLadoDireito = $conn->real_escape_string($data->metrosLadoDireito);
    $metrosLadoEsquerdo = $conn->real_escape_string($data->metrosLadoEsquerdo);
    $cep = $conn->real_escape_string($data->cep);
    $endereco = $conn->real_escape_string($data->endereco);
    $numero = $conn->real_escape_string($data->numero);
    $complemento = $conn->real_escape_string($data->complemento);
    $bairro = $conn->real_escape_string($data->bairro);
    $cidade = $conn->real_escape_string($data->cidade);
    $uf = $conn->real_escape_string($data->uf);
    $observacoes = $conn->real_escape_string($data->observacoes);
    
    // SQL to update the property
    $sql = "UPDATE urbanorural SET 
            cod='$cod', tipoRelatorio='$tipoRelatorio', codigoCadastro='$codigoCadastro', apelido='$apelido', 
            inscricaoMunicipal='$inscricaoMunicipal', setor='$setor', lote='$lote', quadra='$quadra', 
            nomeProprietario='$nomeProprietario', nomeProprietarioGrupo='$nomeProprietarioGrupo', 
            cpfCnpjProprietario='$cpfCnpjProprietario', areaTerreno='$areaTerreno', geometriaRegular='$geometriaRegular', 
            metrosFrente='$metrosFrente', metrosFundo='$metrosFundo', metrosLadoDireito='$metrosLadoDireito', 
            metrosLadoEsquerdo='$metrosLadoEsquerdo', cep='$cep', endereco='$endereco', numero='$numero', 
            complemento='$complemento', bairro='$bairro', cidade='$cidade', uf='$uf', observacoes='$observacoes' 
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

    $sql = "DELETE FROM urbanorural WHERE id='$id'";

    if ($conn->query($sql) === TRUE) {
        echo json_encode(["message" => "Imóvel excluído com sucesso", "id" => $id]);
    } else {
        echo json_encode(["message" => "Error: " . $conn->error]);
    }
}

?>
