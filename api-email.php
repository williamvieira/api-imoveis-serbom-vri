<?php

date_default_timezone_set('America/Sao_Paulo');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';

// Enable error reporting
// ini_set('display_errors', 1); 
// ini_set('display_startup_errors', 1);
// error_reporting(E_ALL);  // Report all errors, warnings, and noimtices

header("Access-Control-Allow-Origin: *"); // Allow requests from any origin
header("Access-Control-Allow-Methods: POST, PUT, DELETE"); // Allow POST and OPTIONS methods
header("Access-Control-Allow-Headers: Content-Type, Authorization"); // Allow specific headers
header('Content-Type: application/json');

define("ENCRYPTION_KEY", "minha_chave_secreta_123456789"); // Troque por sua chave
define("ENCRYPTION_METHOD", "AES-256-CBC");

// Função para criptografar
function encryptString($plaintext) {
    $key = hash('sha256', ENCRYPTION_KEY); // Gera uma chave baseada no hash SHA-256
    $iv = openssl_random_pseudo_bytes(openssl_cipher_iv_length(ENCRYPTION_METHOD)); // Vetor de inicialização (IV)

    // Criptografa a string
    $encrypted = openssl_encrypt($plaintext, ENCRYPTION_METHOD, $key, 0, $iv);
    
    // Concatena o IV ao texto criptografado e retorna em base64
    return base64_encode($encrypted . "::" . $iv);
}

// Função para descriptografar
function decryptString($encryptedString) {
    $key = hash('sha256', ENCRYPTION_KEY);
    
    // Divide o texto criptografado e o IV
    list($encryptedData, $iv) = explode("::", base64_decode($encryptedString), 2);
    
    // Descriptografa e retorna o texto original
    return openssl_decrypt($encryptedData, ENCRYPTION_METHOD, $key, 0, $iv);
}



include_once 'db.php';

function sendEmail($to, $title, $name, $message)
{
    
    $protocolo = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') ? "https" : "http";
    $dominio = $_SERVER['HTTP_HOST']; // Captura o domínio automaticamente
    $url = "$protocolo://$dominio/";

         try {

            $data_envio = date('d/m/Y');
            $hora_envio = date('H:i:s');

            $mail = new PHPMailer();
            $mail->IsSMTP();
            $mail->CharSet = "UTF-8";
            $mail->Debugoutput = 'html';
            $mail->Host = "smtp.hostinger.com";
            $mail->Port = "465";
            $mail->SMTPSecure = 'ssl';
            $mail->SMTPAuth = true;
            $mail->IsHTML(true);
            $mail->Username = "";
            $mail->Password = "";

            $arquivo = "<html>
			    <hr><br>
			    <p>Olá, Tudo Bem?</p>
			    <p>$message</p>
			    <br>
			    <hr>
			    <br>
			    Este e-mail foi enviado em <b>$data_envio</b> às <b>$hora_envio</b>
			</html>";

            $mail->From = "contato@williamvieira.tech";
            $mail->AddAddress($to, "VRI");
            $mail->Subject = "VRI - $title";
            $mail->Body = $arquivo;
            $mail->SMTPDebug = 0;

            if (!$mail->Send()) {

                $errorEmail = 'Mailer Error: ' . $mail->ErrorInfo;
                echo json_encode(["success" => true, "message" => "$errorEmail"]);

            } else {

                echo json_encode(["success" => true, "message" => "E-mail enviado com sucesso"]);

            }

        } catch (Exception $e) {

            $exmessage = $exc->getMessage();
            echo json_encode(["success" => false, "message" => "$exmessage"]);

        }

}



if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    
    $email = $_POST["email"];
    
    $data = json_decode(file_get_contents("php://input"));
    $email = $conn->real_escape_string($data->email);
    
    try {
    
        if (!$conn->connect_error) {
    
            $sql = "SELECT * FROM users WHERE email = '$email'";
    
            $result = $conn->query($sql);
    
            if($result->num_rows > 0) {
    
                while($row = $result->fetch_assoc()) {
                    $id =  $row["id"];
                    $email_result =  $row["email"];
                    $fullname = $row["fullname"];
                }

             
                
                // Dados originais
                $data = 'Este é o texto que será criptografado.';
                
                // Criptografar os dados
                $encrypted = encryptString($id);
               
                
                $url = "https://imoveis.williamvieira.tech/forgot?hash=$encrypted";
    
                echo  sendEmail($email_result, "Recuperar Senha", $fullname, '<a href="'.$url.'">Clique aqui para recuperar sua senha</a>');
               
            } else {
     
                echo json_encode(["success" => false, "message" => "E-mail não encontrado"]);
    
            }
    
    
        } else {
    
            echo json_encode(["success" => false, "message" => "Falha com o banco de dados"]);
    
        }
        
    } catch (Exception $exc) {
    
        $exmessage = $exc->getMessage();
        echo json_encode(["success" => false, "message" => "$exmessage"]);
    
    }
}

if ($_SERVER['REQUEST_METHOD'] == 'PUT') { 
    
    
    
    $data = json_decode(file_get_contents("php://input"));
    $token = $conn->real_escape_string($data->token);
    $token = str_replace(" ", "+", $token);
    $password = $conn->real_escape_string($data->password);
    $decrypted = decryptString($token);
    
    // Dados para a atualização
    $user_id = $decrypted;              // ID do usuário que será atualizado
    $new_password = password_hash($password, PASSWORD_BCRYPT); // Nova senha criptografada
    
    
    // Atualização da tabela
    $sql = "UPDATE users SET password = ? WHERE id = ?";
    
    // Preparar a consulta
    $stmt = $conn->prepare($sql);
    if ($stmt === false) {
        $erro = $conn->error;
        echo json_encode(["success" => false, "message" => "$erro"]);
    }
    
    // Associar os parâmetros
    $stmt->bind_param("si", $new_password, $user_id);
    
    // Executar a consulta
    if ($stmt->execute()) {
        echo json_encode(["success" => true, "message" => "Registro atualizado com sucesso!", "user_id" => $user_id]);
    } else {
        $erro = $stmt->error;
        echo json_encode(["success" => false, "message" => "$erro"]);
    }
    
    // Fechar a consulta e a conexão
    $stmt->close();
    $conn->close();

}

