<?php
include "conexao.php";

$id = $_GET['id'];

$sql = "DELETE FROM orcamentos WHERE id = :id";
$q = $con->prepare($sql);
$q->bindParam(":id", $id);
$q->execute();

echo "ok";
?>
