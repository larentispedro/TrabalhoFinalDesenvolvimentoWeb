<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

require_once "conexao.php";

try {
    if (!isset($_GET['id'])) {
        echo json_encode(["erro" => "ID não fornecido"]);
        exit;
    }

    $id = $_GET['id'];

    $sql = "UPDATE orcamentos SET aprovado = 1 WHERE id = :id";
    $stmt = $con->prepare($sql);
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);
    $stmt->execute();

    echo json_encode(["sucesso" => true, "mensagem" => "Orçamento aprovado com sucesso"]);

} catch (Exception $e) {
    echo json_encode(["erro" => $e->getMessage()]);
}
?>
