

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entity.*, persistence.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="mb" class="manager.ManagerBean" scope="request"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" media="screen">
        <title>Departamento de Cadastro</title>
    </head>
    <body>



        <div class="container-fluid">
            <legend>Lista de Contatos</legend>
            <table class="table table-striped">

                <tr>
                    <th> Codigo </th>
                    <th> Funcionario </th>
                    <th> Salario </th>
                    <th> Alterar </th>
                    <th> Excluir </th>		

                </tr>

                <c:forEach items="${mb.lista}" var="linha">

                    <tr>
                        <td> ${linha.idFuncionario}</td>		
                        <td> ${linha.nome}</td>
                        <td> ${linha.salario}</td>
                        <td> <a href="Controle?cmd=buscar&cod=${linha.idFuncionario}"> Alterar </a> </td>		
                        <td> <a href="Controle?cmd=excluir&cod=${linha.idFuncionario}"> Excluir </a> </td>
                    </tr>
                </c:forEach>

            </table>
            ${msg}
            <br/><br/>
            <a href="index.jsp">Voltar para Principal</a>
        </div>




    </body>
</html>
