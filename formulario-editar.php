<html lang="pt-br">

<style>
    form {
        display: flex;
        align-items: center;
        flex-direction: column;
    }

    input,
    h2 {
        width: 200px;
        margin: 5px;
    }
    form>div{
    padding-left: 100px;
    }
</style>

<?php

$id_aluno_alterar = $_GET['id_aluno_alterar'];

var_dump($id_aluno_alterar);

$dsn = 'mysql:dbname=bd_chamadinha;host=127.0.0.1';
$user = 'root';
$password = '';

$banco = new PDO($dsn, $user, $password);

$select = "SELECT tb_info_alunos.*, tb_alunos.nome FROM tb_info_alunos INNER JOIN tb_alunos ON tb_alunos.id = tb_info_alunos.id_alunos WHERE tb_info_alunos.id_alunos= " . $id_aluno_alterar;

$dados = $banco->query($select)->fetch();
?>

<form action="./aluno-editar.php" method="POST">
    <h2>Editar Cadastro</h2>
    <img src="./img/<?= $dados['img'] ?>" alt="">

    <input type="hidden"    placeholder="id"         name="id"         value="<?= $id_aluno_alterar ?>">

    <input type="text"      placeholder="nome"       name="nome"       value="<?= $dados['nome'] ?>">
    <input type="number"    placeholder="telefone"   name="telefone"   value="<?= $dados['telefone'] ?>">
    <input type="email"     placeholder="email"      name="email"      value="<?= $dados['email'] ?>">
    <input type="date"      placeholder="nascimento" name="nascimento" value="<?= $dados['nascimento'] ?>">
    <div>
        <label>Frequente?</label>
        <input type="checkbox" name="frequente">
    </div>
    <input type="file" accept="image/*" name="img">
    <input type="submit">
</form>