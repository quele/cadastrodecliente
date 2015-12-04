


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" media="screen">
        <title>Departamento de Cadastro</title>
    </head>
    <body>
        <%@page import="entity.*, persistence.*"%>

        <%
            if (request.getAttribute("funcionario") != null) {

                Funcionario func = (Funcionario) request.getAttribute("funcionario");
        %>
        <div class="container-fluid">
            <form class="form-horizontal" method="post" action="Controle?cmd=alterar">
                <fieldset>
                    <legend>Alterar Funcionário</legend>
                    <div class="control-group">      
                        <label class="control-label" >Codigo</label>
                        <div class="controls">
                            <input type="text" name="cod" value="<%=func.getIdFuncionario()%>" readonly="readonly" size="5">
                        </div>
                    </div>
                    <div class="control-group">      
                        <label class="control-label" >Nome</label>
                        <div class="controls">
                            <input type="text" name="nome" value="<%=func.getNome()%>" size="35">
                        </div>
                    </div>
                    <div class="control-group">      
                        <label class="control-label">Salário</label>
                        <div class="controls">
                            <input type="text" name="salario" value="<%=func.getSalario()%>" size="35"><br/><br/>
                            <a class="btn" href="index.jsp">Voltar</a>
                            <input class="btn btn-primary" type="submit" value="Alterar"/><br/>                            
                            
                            ${msg}<br/>
                        </div>
                        
                    </div>                
                    

            </form>
        </div>

        <%
            }
        %>
       
    </body>
</html>
