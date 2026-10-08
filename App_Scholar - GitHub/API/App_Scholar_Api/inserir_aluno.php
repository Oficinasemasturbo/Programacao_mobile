<?php

require_once "conexao.php";

header("Content-Type: application/json; charset=UTF-8");

// Permite apenas POST
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {

    http_response_code(405);

    echo json_encode([
        "sucesso" => false,
        "mensagem" => "Método não permitido."
    ]);

    exit;
}

// Recebe o JSON enviado pelo React Native
$dados = json_decode(file_get_contents("php://input"), true);

if (!$dados) {

    http_response_code(400);

    echo json_encode([
        "sucesso" => false,
        "mensagem" => "Dados inválidos ou JSON não enviado."
    ]);

    exit;
}

// Obtém os dados
$nome = trim($dados['nome'] ?? '');
$cpf = trim($dados['cpf'] ?? '');
$idade = $dados['idade'] ?? null;

// Verifica o nome
if ($nome === '') {

    http_response_code(400);

    echo json_encode([
        "sucesso" => false,
        "mensagem" => "O nome do aluno é obrigatório."
    ]);

    exit;
}

// Se idade estiver vazia, salva como NULL
if ($idade === '' || $idade === null) {
    $idade = null;
}

try {

    $sql = "INSERT INTO alunos
            (nome, cpf, idade, status)
            VALUES
            (:nome, :cpf, :idade, 'A')";

    $stmt = $pdo->prepare($sql);

    $stmt->bindValue(':nome', $nome);
    $stmt->bindValue(':cpf', $cpf);
    $stmt->bindValue(':idade', $idade, PDO::PARAM_INT);

    $stmt->execute();

    echo json_encode([
        "sucesso" => true,
        "mensagem" => "Aluno cadastrado com sucesso!",
        "id" => $pdo->lastInsertId()
    ]);

} catch (PDOException $e) {

    http_response_code(500);

    echo json_encode([
        "sucesso" => false,
        "mensagem" => "Erro ao cadastrar aluno.",
        "erro" => $e->getMessage()
    ]);
}
?>
