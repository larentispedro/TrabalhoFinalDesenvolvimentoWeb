<?php
header("Content-Type: application/json; charset=UTF-8");

try {
    $con = new PDO("mysql:host=localhost;dbname=fp_contabil;charset=utf8", "root", "");
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "SELECT * FROM contatos ORDER BY id DESC";
    $qry = $con->prepare($sql);
    $qry->execute();

    $dados = $qry->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode($dados);

} catch (PDOException $e) {
    echo json_encode(["erro" => $e->getMessage()]);
}
?>
    