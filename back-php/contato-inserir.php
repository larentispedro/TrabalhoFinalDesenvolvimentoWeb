<?php
include "conexao.php";

$nome = $_POST['nome'];
$email = $_POST['email'];
$mensagem = $_POST['mensagem'];

$sql = "INSERT INTO contatos (nome, email, mensagem)
        VALUES ('$nome', '$email', '$mensagem')";

if ($con->query($sql)) {
    echo json_encode(["status" => "ok"]);
} else {
    echo json_encode(["status" => "erro"]);
}
?>
