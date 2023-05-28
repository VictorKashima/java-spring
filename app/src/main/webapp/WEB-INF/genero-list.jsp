<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Biblioteca Sprint | Gêneros</title>
        
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/main.css">
    </head>
    <body>
        <div class="container">
            <h1 class="title">Gêneros</h1>
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>&nbsp;</th>
                </tr>

                <c:forEach var="item" items="${generos}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nome}</td>
                        <td>
                            <a href="/genero/update?id=${item.id}" class="btn btn-warning">Editar</a>
                            <a href="/genero/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>

            <div class="bottom-menu">
                <a href="/" class="btn btn-secondary">Home</a>
                <a href="/genero/insert" class="btn btn-primary">Novo Gênero</a>
            </div>
        </div>
    </body>
</html>