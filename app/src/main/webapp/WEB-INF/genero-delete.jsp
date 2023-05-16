<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Excluir Genero</title>

        <link rel="stylesheet" href="../css/bootstrap.min.css">
    </head>
    <body>

        <div class="container">
            <h1>Excluir Genero</h1>
            <a href="/genero" class="btn btn-primary">Voltar</a>
            <p>Deseja remover o genero <b>"${genero.nome}"</b>?</p>
            <form action="/genero-delete" method="post">
                <input type="hidden" name="id" value="${genero.id}" />
                <button type="submit" class="btn btn-danger">Excluir</button>
            </form>
        </div>

    </body>
</html>