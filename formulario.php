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

<!-- 

MÉTODO DE ENVIO -> 
    GET -> manda informações através da URL
    POST -> manda informações atraves do corpo do arquivo
ACTION ->
    fala para onde deve enviar os dados
-->

<form action="./aluno-editar.php" method="POST">
    <h2>Formulario</h2>
    <input type="text" placeholder="nome" name="nome">
    <input type="number" placeholder="telefone" name="telefone">
    <input type="email" placeholder="email" name="email">
    <input type="date" placeholder="data de nascimento" name="nasc">
    <div>
        <label>Frequente?</label>
        <input type="checkbox" name="frequente">
    </div>
    <input type="file" accept="image/*" name="img">
    <input type="submit">
</form>