<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<?php

$dsn = 'mysql:dbname=bd_chamadinha;host=127.0.0.1';
$user = 'root';
$password = '';

$banco = new PDO($dsn, $user, $password);

$select = 'SELECT * FROM tb_alunos';

$resultado = $banco->query($select)->fetchAll();

// echo '<pre>';
// var_dump($resultado);
?>
<main class="container my-5">
    <table class="table table-striped">
        <div class="my-3 d-flex justify-content-end">
            <a href="formulario.php" class="btn btn-success">Cadastar Novo Aluno</a>
        </div>
        <tr>
            <td>Id</td>
            <td>Nome</td>
            <td class="text-center">Ações</td>
        </tr>

        <?php foreach ($resultado as $lista) { ?>
            <tr>
                <td> <?= $lista['id'] ?> </td>
                <td> <?php echo $lista['nome'] ?> </td>
                <td class="text-center">
                    <a class="btn btn-primary" href="./ficha.php?id_aluno=<?= $lista['id'] ?>">Abrir</a>
                    <!-- GET antes do ? é o link de acesso depois da ? são variáveis -->
                    <a class="btn btn-warning" href="./formulario-editar.php?id_aluno_alterar=<?= $lista['id'] ?>">Editar</a>

                    <a class="btn btn-danger" href="./aluno-deletar.php?id=<?= $lista['id'] ?>">Excluir</a>
                    <!-- caminho arquivo ? -->
                </td>
            </tr>
        <?php } ?>
    </table>
</main>