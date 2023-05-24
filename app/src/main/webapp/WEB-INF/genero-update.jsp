<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Atualizar Genero</title>

        <link rel="stylesheet" href="../css/bootstrap.min.css">
    </head>
    <body>

        <div class="container">
            <h1>Atualizar Genero</h1>
            <a href="/genero/list" class="btn btn-primary">Voltar</a>
            <form action="/genero/genero-update" method="post">
                <input type="hidden" name="id" value="${genero.id}" />
                <div class="form-group">
                    <label for="nome">Nome</label>
                    <input type="text" name="nome" class="form-control" value="${genero.nome}" />
                </div>

                <br />
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>

    </body>
</html>