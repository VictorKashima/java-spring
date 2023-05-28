<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Biblioteca Sprint | Novo Livro</title>

        <link rel="stylesheet" href="../css/bootstrap.min.css">
    </head>
    <body>

        <div class="container">
            <h1>Novo Livro</h1>
            <a href="/livro/list" class="btn btn-primary">Voltar</a>
            <form action="/livro/insert" method="post">
                <div class="form-group">
                    <label for="titulo">Título</label>
                    <input type="text" name="titulo" class="form-control" />
                </div>

                <div class="form-group">
                    <label for="isbn">Isbn</label>
                    <input type="text" name="isbn" class="form-control">
                </div>

                <div class="form-group">
                    <label for="genero">Gênero</label>
                    <select name="genero" class="form-control">
                        <c:forEach var="item" items="${generos}">
                            <option value="${item.id}">${item.nome}</option>
                        </c:forEach>
                    </select>
                </div>
                <br />
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>

    </body>
</html>