<?php
require "conexao.php";

$nome = $_POST['nome'] ?? '';
$email = $_POST['email'] ?? '';
$mensagem = $_POST['mensagem'] ?? '';

$sql = "INSERT INTO contatos (nome, email, mensagem) 
        VALUES (:nome, :email, :mensagem)";

$qry = $con->prepare($sql);

$qry->bindParam(":nome", $nome);
$qry->bindParam(":email", $email);
$qry->bindParam(":mensagem", $mensagem);

if ($qry->execute()) {
    echo json_encode(["status" => "ok"]);
} else {
    echo json_encode(["status" => "erro"]);
}
?>
