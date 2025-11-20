<?php
try {
    $con = new PDO("mysql:host=localhost;dbname=fp_contabil;charset=utf8", "root", "");
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (Exception $e) {
    die("Erro na conexão: " . $e->getMessage());
}
?>
