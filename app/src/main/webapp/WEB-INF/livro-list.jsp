<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Biblioteca Sprint | Livros</title>
        
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/main.css">
    </head>
    <body>
        <div class="container">
            <h1 class="title">Livros</h1>

            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Título</th>
                    <th>Isbn</th>
                    <th>Gênero</th>
                    <th>&nbsp;</th>
                </tr>

                <c:forEach var="item" items="${livros}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.titulo}</td>
                        <td>${item.isbn}</td>
                        <td>${item.genero.nome}</td>
                        <td>
                            <a href="/livro/update?id=${item.id}" class="btn btn-warning">Editar</a>
                            <a href="/livro/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>

            <div class="bottom-menu">
                <a href="/" class="btn btn-secondary">Home</a>
                <a href="/livro/insert" class="btn btn-primary">Novo Livro</a>
            </div>
        </div>
    </body>
</html>