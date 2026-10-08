<?php

require_once "cors.php";

require_once "conexao.php";

header("Content-Type: application/json; charset=UTF-8");

try {

    $sql = "SELECT * FROM alunos WHERE status = 'A'";

    $stmt = $pdo->query($sql);

    $alunos = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode($alunos);

} catch (PDOException $e) {

    http_response_code(500);

    echo json_encode([
        "sucesso" => false,
        "mensagem" => "Erro ao consultar alunos.",
        "erro" => $e->getMessage()
    ]);
}
?>
