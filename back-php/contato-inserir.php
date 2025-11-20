<?php
include "conexao.php";

$nome = $_POST['nome'] ?? '';
$email = $_POST['email'] ?? '';
$mensagem = $_POST['mensagem'] ?? '';

$sql = "INSERT INTO contatos (nome, email, mensagem)
        VALUES (:nome, :email, :mensagem)";

$q = $con->prepare($sql);

$ok = $q->execute([
    ":nome" => $nome,
    ":email" => $email,
    ":mensagem" => $mensagem
]);

echo json_encode(["status" => $ok ? "ok" : "erro"]);
