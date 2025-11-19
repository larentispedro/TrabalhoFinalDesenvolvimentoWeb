<?php
include "conexao.php";

$nome = $_POST['nome'];
$email = $_POST['email'];
$telefone = $_POST['telefone'];
$endereco = $_POST['endereco'];
$cidade = $_POST['cidade'];
$uf = $_POST['uf'];
$data_desejada = $_POST['data_desejada'];
$observacoes = $_POST['observacoes'];
$servico = $_POST['servico'];

$sql = "INSERT INTO orcamentos
(nome, email, telefone, endereco, cidade, uf, data_desejada, observacoes, servico)
VALUES
('$nome', '$email', '$telefone', '$endereco', '$cidade', '$uf', '$data_desejada', '$observacoes', '$servico')";

if ($con->query($sql)) {
    echo json_encode(["status" => "ok"]);
} else {
    echo json_encode(["status" => "erro"]);
}
?>
