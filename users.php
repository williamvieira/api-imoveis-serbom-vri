<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, GET, DELETE, PUT");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');

function limparMascara($documento) {
    return preg_replace('/\D/', '', $documento);
}

// ini_set('display_errors', 1);
// ini_set('display_startup_errors', 1);
// error_reporting(E_ALL);

include_once 'db.php';  // Inclui o arquivo de conexão com o banco de dados

// Criar um novo usuário (POST)
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $data = json_decode(file_get_contents("php://input"));
     $email = isset($data->email) ? $conn->real_escape_string($data->email) : null;
    $fullname = isset($data->fullname) ? $conn->real_escape_string($data->fullname) : null;
    $password = isset($data->password) ? $data->password : null;
    $perfil = isset($data->perfil) ? $data->$perfil : null;
    $permissoesMatricula = isset($data->permissoesMatricula) ? $data->permissoesMatricula : null;

    // Verifica se o email já está registrado
    $sqlCheckEmail = "SELECT * FROM users WHERE email = ?";
    $stmt = $conn->prepare($sqlCheckEmail);
    $stmt->bind_param('s', $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        echo json_encode(["message" => "Email já registrado"]);
    } else {
        // Criptografar a senha usando password_hash()
        $passwordHash = password_hash($password, PASSWORD_BCRYPT);

        // Insere o novo usuário no banco de dados
        $sql = "INSERT INTO users (email, password, fullname, perfil, permissoesMatricula) VALUES (?, ?, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param('sssss', $email, $passwordHash, $fullname, $perfil, $permissoesMatricula);
        
        if ($stmt->execute()) {
            echo json_encode(["success" => true, "message" => "Usuário cadastrado com sucesso"]);
        } else {
            echo json_encode(["success" => false, "message" => "Erro ao cadastrar usuário: " . $conn->error]);
        }
    }
}

// Retrieve all properties (GET request)
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    $search_value = isset($_GET['search_value']) ? $_GET['search_value'] : '';

    if (!empty($search_value)) {
        $sql = "SELECT id, email, fullname, perfil, permissoesMatricula FROM users WHERE email LIKE ? OR fullname LIKE ?";
        $stmt = $conn->prepare($sql);
        $search_value = '%' . $search_value . '%';
        $stmt->bind_param('ss', $search_value, $search_value);
        $stmt->execute();
        $result = $stmt->get_result();
    } else {
        $sql = "SELECT id, email, fullname, perfil, permissoesMatricula FROM users ORDER BY ID DESC";
        $result = $conn->query($sql);
    }

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

// Deletar um usuário (DELETE)
if ($_SERVER['REQUEST_METHOD'] == 'DELETE') {
    $id = $_GET['id'];
    $sql = "DELETE FROM users WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $id);

    if ($stmt->execute()) {
        echo json_encode(["success" => true, "message" => "Cadastro excluído com sucesso"]);
    } else {
        echo json_encode(["success" => false, "message" => "Erro: " . $conn->error]);
    }
}

// Atualizar um usuário (PUT request)
if ($_SERVER['REQUEST_METHOD'] == 'PUT') {
    // Receber os dados da requisição
    $data = json_decode(file_get_contents("php://input"));
    
    // Verificar se o ID foi passado
    if (!isset($data->id)) {
        echo json_encode(["message" => "ID do usuário não fornecido"]);
        exit();
    }

    // Obter os dados
    $id = $data->id;
    $email = isset($data->email) ? $conn->real_escape_string($data->email) : null;
    $fullname = isset($data->fullname) ? $conn->real_escape_string($data->fullname) : null;
    // $password = isset($data->password) ? $data->password : null;
    $perfil = isset($data->perfil) ? $conn->real_escape_string($data->perfil) : null;
    $permissoesMatricula = isset($data->permissoesMatricula) ? $data->permissoesMatricula : null;
    
    // Verificar se pelo menos um campo foi passado para atualização
    if (empty($email) && empty($fullname) && empty($password) && empty($perfil) && empty($permissoesMatricula)) {
        echo json_encode(["message" => "Nenhum dado para atualizar"]);
        exit();
    }

    // Verificar se o email já está em uso por outro usuário
    if ($email) {
        $sqlCheckEmail = "SELECT * FROM users WHERE email = '$email' AND id != $id";
        $result = $conn->query($sqlCheckEmail);

        if ($result->num_rows > 0) {
            echo json_encode(["success" => false, "message" => "Email já registrado", "sql" => $sqlCheckEmail]);
            exit();
        }
    }

    // Preparar a query de atualização
    $updates = [];
    
    if ($email) {
        $updates[] = "email = '$email'";
    }
    if ($fullname) {
        $updates[] = "fullname = '$fullname'";
    }

        $updates[] = "perfil = '$perfil'";
    
  
        $updates[] = "permissoesMatricula = '$permissoesMatricula'";
    
    if ($password) {
        $passwordHash = password_hash($password, PASSWORD_BCRYPT);
        $updates[] = "password = '$passwordHash'";
    }

    // Se não houver nada para atualizar, retornar erro
    if (empty($updates)) {
        echo json_encode(["success" => false, "message" => "Nenhum dado válido para atualizar"]);
        exit();
    }

    // Construir a query final
    $sql = "UPDATE users SET " . implode(", ", $updates) . " WHERE id = $id";

    // Executar a query
    if ($conn->query($sql)) {
        echo json_encode(["success" => true, "message" => "Usuário atualizado com sucesso", "sql" => $sql]);
    } else {
        echo json_encode(["success" => false, "message" => "Erro ao atualizar usuário: " . $conn->error]);
    }
}

?>
