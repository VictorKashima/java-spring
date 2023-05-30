<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Biblioteca Sprint | Home</title>

        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/main.css">
        <link rel="stylesheet" href="../css/home.css">
    </head>
    <body>
        <h1>Bem Vindo a <b>Biblioteca Sprint</b></h1>

        <section class="home">
            <h2>Adicionados recentemente</h2>
            <div class="home-menu">
                <div class="books">
                    <h2>Livros</h2>
                    <c:forEach items="${livros.subList(livros.size() - 3, livros.size())}" var="item">
                        <h4>${item.id} - ${item.titulo}</h4>
                    </c:forEach>
                    <a href="livro/list" class="btn btn-info">Ver mais</a>
                </div>

                <div class="genders">
                    <h2>Gêneros</h2>
                    <c:forEach items="${generos.subList(generos.size() - 3, generos.size())}" var="item">
                        <h4>${item.id} - ${item.nome}</h4>
                    </c:forEach>
                    <a href="genero/list" class="btn btn-info">Ver mais</a>
                </div>
            </div>

        </section>
    </body>
</html>