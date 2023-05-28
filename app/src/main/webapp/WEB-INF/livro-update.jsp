<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Biblioteca Sprint | Atualizar Livro</title>

        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/main.css">
    </head>
    <body>

        <div class="container">
            <h1 class="title">Atualizar Livro</h1>
            <form action="/livro/update" method="post">
                <input type="hidden" name="id" value="${livro.id}" />
                <div class="form-group">
                    <label for="titulo">Titulo</label>
                    <input type="text" name="titulo" class="form-control" value="${livro.titulo}" required />

                    <label for="isbn">Isbn</label>
                    <input type="text" name="isbn" class="form-control" value="${livro.isbn}" required />

                    <label for="genero">Gênero</label>
                    <select name="genero" class="form-control" required>
                        <c:forEach var="item" items="${generos}">
                            <option value="${item.id}">${item.nome}</option>
                        </c:forEach>
                    </select>
                </div>

                <br />
                <div class="bottom-menu">
                    <a href="/livro/list" class="btn btn-primary">Voltar</a>
                    <a href="/" class="btn btn-secondary">Home</a>
                    <button type="submit" class="btn btn-success">Salvar</button>
                </div>
            </form>
            
        </div>

    </body>
</html>