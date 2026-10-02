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

$id = $dados['id'] ?? null;

// Verifica ID
if (!$id || !is_numeric($id)) {

    http_response_code(400);

    echo json_encode([
        "sucesso" => false,
        "mensagem" => "ID do aluno é obrigatório."
    ]);

    exit;
}

try {

    // Verifica se o aluno existe
    $verificar = $pdo->prepare(
        "SELECT id, status FROM alunos WHERE id = :id"
    );

    $verificar->execute([
        ':id' => $id
    ]);

    $aluno = $verificar->fetch(PDO::FETCH_ASSOC);

    if (!$aluno) {

        http_response_code(404);

        echo json_encode([
            "sucesso" => false,
            "mensagem" => "Aluno não encontrado."
        ]);

        exit;
    }

    // Se já estiver inativo
    if ($aluno['status'] === 'I') {

        echo json_encode([
            "sucesso" => false,
            "mensagem" => "Este aluno já está inativo."
        ]);

        exit;
    }

    // Exclusão lógica
    $sql = "UPDATE alunos
            SET status = 'I'
            WHERE id = :id";

    $stmt = $pdo->prepare($sql);

    $stmt->bindValue(':id', $id, PDO::PARAM_INT);

    $stmt->execute();

    echo json_encode([
        "sucesso" => true,
        "mensagem" => "Aluno inativado com sucesso!"
    ]);

} catch (PDOException $e) {

    http_response_code(500);

    echo json_encode([
        "sucesso" => false,
        "mensagem" => "Erro ao inativar aluno.",
        "erro" => $e->getMessage()
    ]);
}
?>
