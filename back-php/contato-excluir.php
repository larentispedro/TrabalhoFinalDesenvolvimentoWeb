<?php
include "conexao.php";

$id = $_GET["id"];

$sql = "DELETE FROM contatos WHERE id = :id";
$q = $con->prepare($sql);
$q->bindParam(":id", $id);
$q->execute();

echo "ok";
?>
