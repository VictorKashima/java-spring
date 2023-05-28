<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Biblioteca Sprint | Excluir Livro</title>

        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/main.css">
    </head>
    <body>

        <div class="container">
            <h1 class="title">Excluir Livro</h1>
            <h3>Deseja remover o livro <b>"${livro.titulo}"</b>?</h3>
            <form action="/livro/delete" method="post">
                <input type="hidden" name="id" value="${livro.id}" />

                <div class="bottom-menu">
                    <a href="/livro/list" class="btn btn-primary">Voltar</a>
                    <a href="/" class="btn btn-secondary">Home</a>
                    <button type="submit" class="btn btn-danger">Excluir</button>
                </div>
            </form>
        </div>

    </body>
</html>