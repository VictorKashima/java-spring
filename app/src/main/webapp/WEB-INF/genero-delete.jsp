<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Biblioteca Sprint | Deletar Gênero</title>

        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/main.css">
    </head>
    <body>

        <div class="container">
            <h1 class="title">Excluir Gênero</h1>
            <h3>Deseja remover o gênero <b>"${genero.nome}"</b>?</h3>
            <form action="/genero/delete" method="post">
                <input type="hidden" name="id" value="${genero.id}" />

                <div class="bottom-menu">
                    <a href="/genero/list" class="btn btn-primary">Voltar</a>
                    <a href="/" class="btn btn-secondary">Home</a>
                    <button type="submit" class="btn btn-danger">Excluir</button>
                </div>
            </form>
        </div>

    </body>
</html>