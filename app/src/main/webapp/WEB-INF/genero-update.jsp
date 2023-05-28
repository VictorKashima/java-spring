<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Biblioteca Sprint | Atualizar Gênero</title>

        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/main.css">
    </head>
    <body>

        <div class="container">
            <h1 class="title">Atualizar Gênero</h1>
            <form action="/genero/update" method="post">
                <input type="hidden" name="id" value="${genero.id}" />
                <div class="form-group">
                    <label for="nome">Nome</label>
                    <input type="text" name="nome" class="form-control" value="${genero.nome}" required/>
                </div>

                <br />

                <div class="bottom-menu">
                    <a href="/genero/list" class="btn btn-primary">Voltar</a>
                    <a href="/" class="btn btn-secondary">Home</a>
                    <button type="submit" class="btn btn-success">Salvar</button>
                </div>
            </form>
        </div>

    </body>
</html>