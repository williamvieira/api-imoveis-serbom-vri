<?php

header("Access-Control-Allow-Origin: *"); // Allow requests from any origin
header("Access-Control-Allow-Methods: POST, PUT, DELETE"); // Allow POST and OPTIONS methods
header("Access-Control-Allow-Headers: Content-Type, Authorization"); // Allow specific headers
header('Content-Type: application/json');

// ini_set('display_errors', 1); 
// ini_set('display_startup_errors', 1);
// error_reporting(E_ALL);  // Report all errors, warnings, and notices

date_default_timezone_set('America/Sao_Paulo');
$date = date('Y-m-d H:i:s');


function limparMascara($documento) {
    // Remove tudo que não for número
    return preg_replace('/\D/', '', $documento);
}

function limparMascaraDinheiroParaFloat($valor) {
    // Remove o símbolo "R$", pontos (separadores de milhar) e espaços extras
    // $valor = str_replace(['R$', '.', ' '], ['', '', ''], $valor);
    
    // // Substitui a vírgula por ponto para adaptar ao formato decimal do PHP
    // $valor = str_replace(',', '.', $valor);
    
    // // Remove quaisquer espaços invisíveis ou caracteres indesejados
    // $valor = trim($valor);  // Remove espaços no começo e no final
    
    // // Garantir que o valor seja convertido corretamente para float
    // // Sem arredondar ou perder a precisão
    // return (float) $valor;
    
    return $valor;
}

// Função para formatar valores como float
function formatToFloat($value) {
    // Remove o ponto (separador de milhar)
    $value = str_replace('.', '', $value);

    // Substitui a vírgula por ponto (separador decimal)
    $value = str_replace(',', '.', $value);

    // Retorna o valor convertido para float
    return (float)$value;
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
    
    // Escape the search value to prevent SQL injection
    $search_value = $conn->real_escape_string($search_value);
    
    // Verifica se o valor de busca foi fornecido
    if (!empty($search_value)) {
        // Consulta para imóveis com busca detalhada
        $sql_imoveis = "SELECT *, cod as cod_matricula FROM imoveis WHERE ";
        $sql_imoveis .= "numero_matricula LIKE '%$search_value%' ";
        $sql_imoveis .= "OR cod LIKE '%$search_value%' ";
        $sql_imoveis .= "OR cidade_registro LIKE '%$search_value%' ";
        $sql_imoveis .= "OR apelido LIKE '%$search_value%' ";
        $sql_imoveis .= "OR cartorio_registro LIKE '%$search_value%' ";
        $sql_imoveis .= "OR nome_proprietario LIKE '%$search_value%' ";
        $sql_imoveis .= "OR nome_proprietario_grupo LIKE '%$search_value%' ";
        $sql_imoveis .= "OR nome_proprietario_conceito LIKE '%$search_value%' ";
        $sql_imoveis .= "OR tipo_pessoa LIKE '%$search_value%' ";
        $sql_imoveis .= "OR cpf LIKE '%$search_value%' ";
        $sql_imoveis .= "OR cnpj LIKE '%$search_value%' ";
        $sql_imoveis .= "OR razao_social LIKE '%$search_value%' ";
        $sql_imoveis .= "OR area_terreno LIKE '%$search_value%' ";
        $sql_imoveis .= "OR geometria_regular LIKE '%$search_value%' ";
        $sql_imoveis .= "OR metros_frente LIKE '%$search_value%' ";
        $sql_imoveis .= "OR metros_de_frente LIKE '%$search_value%' ";
        $sql_imoveis .= "OR metros_fundo LIKE '%$search_value%' ";
        $sql_imoveis .= "OR metros_lado_direito LIKE '%$search_value%' ";
        $sql_imoveis .= "OR metros_lado_esquerdo LIKE '%$search_value%' ";
        $sql_imoveis .= "OR area_construida LIKE '%$search_value%' ";
        $sql_imoveis .= "OR cep LIKE '%$search_value%' ";
        $sql_imoveis .= "OR endereco LIKE '%$search_value%' ";
        $sql_imoveis .= "OR numero LIKE '%$search_value%' ";
        $sql_imoveis .= "OR complemento LIKE '%$search_value%' ";
        $sql_imoveis .= "OR bairro LIKE '%$search_value%' ";
        $sql_imoveis .= "OR cidade LIKE '%$search_value%' ";
        $sql_imoveis .= "OR uf LIKE '%$search_value%' ";
        $sql_imoveis .= "OR data_compra LIKE '%$search_value%' ";
        $sql_imoveis .= "OR data_compra_string LIKE '%$search_value%' ";
        $sql_imoveis .= "OR nome_vendedor LIKE '%$search_value%' ";
        $sql_imoveis .= "OR valor_compra LIKE '%$search_value%' ";
        $sql_imoveis .= "OR observacoes LIKE '%$search_value%'";

        // Executa a consulta para imóveis
        $result_imoveis = $conn->query($sql_imoveis);

        // Verifica se há resultados
        if ($result_imoveis->num_rows > 0) {
            $response = array();

            while ($row_imovel = $result_imoveis->fetch_assoc()) {
                $imovel = $row_imovel;
                $imovel['proprietarios'] = array();

                // O valor de nome_proprietario_grupo para este imóvel
                $nome_proprietario_grupo = $row_imovel['nome_proprietario_grupo'];

                // Consulta para proprietários com base no nome_proprietario_grupo
                $sql_proprietarios = "SELECT * FROM proprietarios WHERE nome LIKE '%$nome_proprietario_grupo%'";
                $result_proprietarios = $conn->query($sql_proprietarios);

                // Adiciona os dados dos proprietários ao imóvel
                while ($row_proprietario = $result_proprietarios->fetch_assoc()) {
                    $imovel['proprietarios'][] = $row_proprietario;
                }

                // Adiciona o imóvel ao array de resposta
                $response[] = $imovel;
            }

            // Retorna os dados em formato JSON
            echo json_encode($response);
        } else {
            // Caso não haja resultados
            echo json_encode([]);
        }
    } else {
        // Caso não haja valor de busca, pega todos os imóveis
        $sql_imoveis = "SELECT *, cod as cod_matricula FROM imoveis order by id desc";
        $result_imoveis = $conn->query($sql_imoveis);

        // Verifica se há resultados
        if ($result_imoveis->num_rows > 0) {
            $response = array();

            while ($row_imovel = $result_imoveis->fetch_assoc()) {
                $imovel = $row_imovel;
                $imovel['proprietarios'] = array();

                // O valor de nome_proprietario_grupo para este imóvel
                $nome_proprietario_grupo = $row_imovel['nome_proprietario'];

                // Consulta para proprietários com base no nome_proprietario_grupo
                $sql_proprietarios = "SELECT * FROM proprietarios WHERE nome LIKE '%$nome_proprietario_grupo%'";
                $result_proprietarios = $conn->query($sql_proprietarios);

                // Adiciona os dados dos proprietários ao imóvel
                while ($row_proprietario = $result_proprietarios->fetch_assoc()) {
                    $imovel['proprietarios'][] = $row_proprietario;
                }

                // Adiciona o imóvel ao array de resposta
                $response[] = $imovel;
            }

            // Retorna os dados em formato JSON
            echo json_encode($response);
        } else {
            // Caso não haja resultados
            echo json_encode([]);
        }
    }
}

// Create a new property (POST request)
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    
    $data = json_decode(file_get_contents("php://input"));

    $apelido = $conn->real_escape_string($data->apelido);
    $numero_matricula = $conn->real_escape_string($data->numero_matricula);
    $cidade_registro = $conn->real_escape_string($data->cidade_registro);
    $cartorio_registro = $conn->real_escape_string($data->cartorio_registro);
    $nome_proprietario = $conn->real_escape_string($data->nome_proprietario);
    $nome_proprietario_conceito = $conn->real_escape_string($data->nome_proprietario_conceito);
    $nome_proprietario_grupo = $conn->real_escape_string($data->nome_proprietario_grupo);
    $cpf = limparMascara($conn->real_escape_string($data->cpf));
    $cnpj = limparMascara($conn->real_escape_string($data->cnpj));
    $tipo_pessoa = $conn->real_escape_string($data->tipo_pessoa);
    $razao_social = $conn->real_escape_string($data->razao_social);
    $area_terreno = $data->area_terreno;
    $geometria_regular = $data->geometria_regular;
    $metros_frente = $data->metros_frente;
    $metros_de_frente = $data->metros_de_frente;
    $metros_fundo = $data->metros_fundo;
    $metros_lado_direito = $data->metros_lado_direito;
    $metros_lado_esquerdo = $data->metros_lado_esquerdo;
    $area_construida = $data->area_construida;
    $cep = $conn->real_escape_string($data->cep);
    $endereco = $conn->real_escape_string($data->endereco);
    $numero = $data->numero;
    $complemento = $conn->real_escape_string($data->complemento);
    $bairro = $conn->real_escape_string($data->bairro);
    $cidade = $conn->real_escape_string($data->cidade);
    $uf = $conn->real_escape_string($data->uf);
    $data_compra = converterDataParaBanco($data->data_compra_string);
    $data_compra_string = $data->data_compra_string;
    $data_compra_contrato = converterDataParaBanco($data->data_compra_contrato_string);
    $data_compra_contrato_string = $data->data_compra_contrato_string;
    $nome_vendedor = $conn->real_escape_string($data->nome_vendedor);
    $valor_compra = limparMascaraDinheiroParaFloat($data->valor_compra);
    $valor_compra_contrato = limparMascaraDinheiroParaFloat($data->valor_compra_contrato);
    $observacoes = $conn->real_escape_string($data->observacoes);
    $cod  = $conn->real_escape_string($data->cod);
    $latitude  = $conn->real_escape_string($data->latitude);
    $longitude  = $conn->real_escape_string($data->longitude);
    
    // SQL para inserir o imóvel na tabela imoveis
    $sql = "INSERT INTO imoveis (latitude, longitude, nome_proprietario_conceito, valor_compra_contrato, data_compra_contrato, data_compra_contrato_string, razao_social, metros_de_frente, apelido, numero_matricula, cidade_registro, cartorio_registro, nome_proprietario, nome_proprietario_grupo, 
            cpf, cnpj, tipo_pessoa, area_terreno, geometria_regular, metros_frente, metros_fundo, metros_lado_direito, metros_lado_esquerdo, 
            area_construida, cep, endereco, numero, complemento, bairro, cidade, uf, data_compra, data_compra_string, nome_vendedor, valor_compra, observacoes, date_insert, date_update) 
            VALUES ('$latitude', '$longitude', '$nome_proprietario_conceito', '$valor_compra_contrato', '$data_compra_contrato', '$data_compra_contrato_string', '$razao_social', '$metros_de_frente', '$apelido', '$numero_matricula', '$cidade_registro', '$cartorio_registro', '$nome_proprietario', '$nome_proprietario_grupo', 
            '$cpf', '$cnpj', '$tipo_pessoa', '$area_terreno', '$geometria_regular', '$metros_frente', '$metros_fundo', '$metros_lado_direito', '$metros_lado_esquerdo', 
            '$area_construida', '$cep', '$endereco', '$numero', '$complemento', '$bairro', '$cidade', '$uf', '$data_compra', '$data_compra_string', '$nome_vendedor', '$valor_compra', '$observacoes', '$date', '$date')";
        
    // Executando o SQL de inserção
    if ($conn->query($sql) === TRUE) {
        
        // Obtendo o ID do último registro inserido
        $lastID = $conn->insert_id;
        
        // Atualizando o campo 'cod' na tabela 'imoveis'
        $sqlUpdateCodigo = "UPDATE imoveis SET cod='MT$lastID' WHERE id='$lastID'";
        $conn->query($sqlUpdateCodigo);
        
        // Selecionando registros da tabela GED onde o register_id é 'MTnull'
        $sqlSelectGED = "SELECT * FROM GED WHERE register_id = 'MTnull'";
        $resultGED = $conn->query($sqlSelectGED);
        
        // Verificando se existem registros e realizando o update na tabela GED
        if ($resultGED->num_rows > 0) {
            // Atualizando o campo 'register_id' da tabela GED com o novo código
            while ($row = $resultGED->fetch_assoc()) {
                $sqlUpdateGED = "UPDATE GED SET register_id = 'MT$lastID' WHERE id = " . $row['id'];
                $conn->query($sqlUpdateGED);
            }
        }
        
        // Retorna a resposta de sucesso
        echo json_encode(["message" => "Imóvel cadastrado com sucesso", "id" => "$lastID", "area_terreno" => "$area_terreno"]);
        
    } else {
        
        // Caso ocorra algum erro na inserção
        echo json_encode(["message" => "Error: " . $sql . "<br>" . $conn->error]);
    }
}


// Update an existing property (PUT request)
if ($_SERVER['REQUEST_METHOD'] == 'PUT') {
    
    $data = json_decode(file_get_contents("php://input"));

    $id = $data->id;
    $apelido = $conn->real_escape_string($data->apelido);
    $numero_matricula = $conn->real_escape_string($data->numero_matricula);
    $cidade_registro = $conn->real_escape_string($data->cidade_registro);
    $cartorio_registro = $conn->real_escape_string($data->cartorio_registro);
    $nome_proprietario = $conn->real_escape_string($data->nome_proprietario);
    $nome_proprietario_conceito = $conn->real_escape_string($data->nome_proprietario_conceito);
    $nome_proprietario_grupo = $conn->real_escape_string($data->nome_proprietario_grupo);
    $cpf = limparMascara($conn->real_escape_string($data->cpf));
    $cnpj = limparMascara($conn->real_escape_string($data->cnpj));
    $tipo_pessoa = $conn->real_escape_string($data->tipo_pessoa);
    $razao_social = $conn->real_escape_string($data->razao_social);
    $area_terreno = $data->area_terreno;
    $geometria_regular = $data->geometria_regular;
    $metros_frente = $data->metros_frente;
    $metros_de_frente = $data->metros_de_frente;
    $metros_fundo = $data->metros_fundo;
    $metros_lado_direito = $data->metros_lado_direito;
    $metros_lado_esquerdo = $data->metros_lado_esquerdo;
    $area_construida = $data->area_construida;
    $cep = $conn->real_escape_string($data->cep);
    $endereco = $conn->real_escape_string($data->endereco);
    $numero = $data->numero;
    $complemento = $conn->real_escape_string($data->complemento);
    $bairro = $conn->real_escape_string($data->bairro);
    $cidade = $conn->real_escape_string($data->cidade);
    $uf = $conn->real_escape_string($data->uf);
    $data_compra = converterDataParaBanco($data->data_compra_string);
    $data_compra_string= $data->data_compra_string;
    $data_compra_contrato = converterDataParaBanco($data->data_compra_contrato_string);
    $data_compra_contrato_string = $data->data_compra_contrato_string;
    $nome_vendedor = $conn->real_escape_string($data->nome_vendedor);
    $valor_compra = limparMascaraDinheiroParaFloat($data->valor_compra);
    $valor_compra_contrato = limparMascaraDinheiroParaFloat($data->valor_compra_contrato);
    $observacoes = $conn->real_escape_string($data->observacoes);
    $tipo_pessoa = $conn->real_escape_string($data->tipo_pessoa);
    $latitude  = $conn->real_escape_string($data->latitude);
    $longitude  = $conn->real_escape_string($data->longitude);
    
    $sql = "UPDATE imoveis SET 
    tipo_pessoa='$tipo_pessoa', 
    razao_social='$razao_social', 
    cnpj='$cnpj', 
    cpf='$cpf', 
    apelido='$apelido', 
    numero_matricula='$numero_matricula', 
    cidade_registro='$cidade_registro', 
    cartorio_registro='$cartorio_registro', 
    nome_proprietario='$nome_proprietario', 
    nome_proprietario_grupo='$nome_proprietario_grupo', 
    cpf='$cpf', area_terreno='$area_terreno', 
    geometria_regular='$geometria_regular', 
    metros_frente='$metros_frente', 
    metros_de_frente='$metros_de_frente', 
    metros_fundo='$metros_fundo', 
    metros_lado_direito='$metros_lado_direito', 
    metros_lado_esquerdo='$metros_lado_esquerdo', 
    area_construida='$area_construida', 
    cep='$cep', 
    endereco='$endereco', 
    numero='$numero', 
    complemento='$complemento', 
    bairro='$bairro', 
    cidade='$cidade', 
    uf='$uf', 
    data_compra='$data_compra', 
    data_compra_string='$data_compra_string', 
    nome_vendedor='$nome_vendedor', 
    valor_compra='$valor_compra', 
    date_update='$date',
    observacoes='$observacoes',
    nome_proprietario_conceito='$nome_proprietario_conceito',
    latitude='$latitude',
     longitude='$longitude',
      valor_compra_contrato='$valor_compra_contrato',
    data_compra_contrato='$data_compra_contrato',
    data_compra_contrato_string='$data_compra_contrato_string'
    WHERE id='$id'";

    if ($conn->query($sql) === TRUE) {
        echo json_encode(["message" => "Imóvel atualizado com sucesso", "valor_compra" => "$valor_compra", "metros_de_frente" => "$metros_de_frente"]);
    } else {
        echo json_encode(["message" => "Error: " . $conn->error]);
    }
}

// Delete a property (DELETE request)
if ($_SERVER['REQUEST_METHOD'] == 'DELETE') {
    $data = json_decode(file_get_contents("php://input"));
    $id = $_GET['id'];

    $sql = "DELETE FROM imoveis WHERE id='$id'";

    if ($conn->query($sql) === TRUE) {
        echo json_encode(["message" => "Imóvel excluído com sucesso", "id" => $id]);
    } else {
        echo json_encode(["message" => "Error: " . $conn->error]);
    }
}
?>
