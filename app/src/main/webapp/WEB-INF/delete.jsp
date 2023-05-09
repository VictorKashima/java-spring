<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete</title>
</head>
<body>
    <h1>Deletar livro</h1>
    <h1>Deseja remover o livro "{$livro.titulo}" ?</h1>
    <form action="/delete" method="post">
        <input type="hidden" name="id" value="{$livro.id}" />
        <button type="submit">Deletar</button>
    </form>
</body>
</html>