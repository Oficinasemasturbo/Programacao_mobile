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

// Recebe JSON
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
$id = $dados['id'] ?? null;
$nome = trim($dados['nome'] ?? '');
$cpf = trim($dados['cpf'] ?? '');
$idade = $dados['idade'] ?? null;

// Verifica ID
if (!$id || !is_numeric($id)) {

    http_response_code(400);

    echo json_encode([
        "sucesso" => false,
        "mensagem" => "ID do aluno é obrigatório."
    ]);

    exit;
}

// Verifica nome
if ($nome === '') {

    http_response_code(400);

    echo json_encode([
        "sucesso" => false,
        "mensagem" => "O nome do aluno é obrigatório."
    ]);

    exit;
}

// Idade vazia vira NULL
if ($idade === '' || $idade === null) {
    $idade = null;
}

try {

    // Verifica se o aluno existe
    $verificar = $pdo->prepare(
        "SELECT id FROM alunos WHERE id = :id"
    );

    $verificar->execute([
        ':id' => $id
    ]);

    if (!$verificar->fetch()) {

        http_response_code(404);

        echo json_encode([
            "sucesso" => false,
            "mensagem" => "Aluno não encontrado."
        ]);

        exit;
    }

    // Atualiza os dados
    $sql = "UPDATE alunos
            SET nome = :nome,
                cpf = :cpf,
                idade = :idade
            WHERE id = :id";

    $stmt = $pdo->prepare($sql);

    $stmt->bindValue(':nome', $nome);
    $stmt->bindValue(':cpf', $cpf);
    $stmt->bindValue(':idade', $idade, PDO::PARAM_INT);
    $stmt->bindValue(':id', $id, PDO::PARAM_INT);

    $stmt->execute();

    echo json_encode([
        "sucesso" => true,
        "mensagem" => "Aluno atualizado com sucesso!"
    ]);

} catch (PDOException $e) {

    http_response_code(500);

    echo json_encode([
        "sucesso" => false,
        "mensagem" => "Erro ao atualizar aluno.",
        "erro" => $e->getMessage()
    ]);
}
?>
