<?php
include "conexao.php";

$sql = "SELECT * FROM orcamentos ORDER BY data_envio DESC";
$res = $con->query($sql);

$dados = [];

while ($row = $res->fetch_assoc()) {
    $dados[] = $row;
}

echo json_encode($dados);
?>
