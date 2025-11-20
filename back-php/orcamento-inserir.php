<?php
require "conexao.php";

$nome = $_POST['nome'] ?? '';
$email = $_POST['email'] ?? '';
$telefone = $_POST['telefone'] ?? '';
$endereco = $_POST['endereco'] ?? '';
$cidade = $_POST['cidade'] ?? '';
$uf = $_POST['uf'] ?? '';
$data_desejada = $_POST['data_desejada'] ?? null;
$observacoes = $_POST['observacoes'] ?? '';
$servico = $_POST['servico'] ?? '';

$sql = "INSERT INTO orcamentos 
        (nome, email, telefone, endereco, cidade, uf, data_desejada, observacoes, servico)
        VALUES 
        (:nome, :email, :telefone, :endereco, :cidade, :uf, :data_desejada, :observacoes, :servico)";

$qry = $con->prepare($sql);

$qry->bindParam(":nome", $nome);
$qry->bindParam(":email", $email);
$qry->bindParam(":telefone", $telefone);
$qry->bindParam(":endereco", $endereco);
$qry->bindParam(":cidade", $cidade);
$qry->bindParam(":uf", $uf);
$qry->bindParam(":data_desejada", $data_desejada);
$qry->bindParam(":observacoes", $observacoes);
$qry->bindParam(":servico", $servico);

if ($qry->execute()) {
    echo json_encode(["status" => "ok"]);
} else {
    echo json_encode(["status" => "erro"]);
}
?>
