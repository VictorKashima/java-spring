<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Biblioteca Sprint | Excluir Livro</title>

        <link rel="stylesheet" href="../css/bootstrap.min.css">
    </head>
    <body>

        <div class="container">
            <h1>Excluir Livro</h1>
            <a href="/livro/list" class="btn btn-primary">Voltar</a>
            <p>Deseja remover o livro <b>"${livro.titulo}"</b>?</p>
            <form action="/livro/delete" method="post">
                <input type="hidden" name="id" value="${livro.id}" />
                <button type="submit" class="btn btn-danger">Excluir</button>
            </form>
        </div>

    </body>
</html>