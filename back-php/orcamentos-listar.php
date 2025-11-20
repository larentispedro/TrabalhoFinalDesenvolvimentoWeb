<?php
include "conexao.php";

$sql = "SELECT * FROM orcamentos ORDER BY id DESC";
$q = $con->prepare($sql);
$q->execute();

$dados = $q->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($dados);
?>
