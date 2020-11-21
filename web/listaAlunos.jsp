<%-- 
    Document   : Lista de Alunos
    Created on : 08/11/2020, 23:29:38
    Author     : Luiz Guilherme Czaikowski
--%>
<%@page import="Classes.Aluno"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <!------ Include the above in your HEAD tag ---------->
        <title>Lista de Alunos</title>
    </head>
    <body>
        <%
            List<Aluno> alunos = (ArrayList<Aluno>) request.getAttribute("alunos");
        %>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">NOME</th>
                    <th scope="col">EMAIL</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Luiz</td>
                    <td>luiz@outlook.com</td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Czaikowski</td>
                    <td>Czaikowski@outlook.com</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>João</td>
                    <td>joao@hotmail.com</td>
                </tr>
            </tbody>
        </table>

    </body>

    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</html>