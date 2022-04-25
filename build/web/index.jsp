
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
    <%@include file="WEB-INF/jspf/header.jspf" %>
    <%if(session.getAttribute("username")==null){%>
    <h3>Faça o login</h3>
    <form>
        <input type="text" name="username"/>
        <input type="submit" name="logon" value="Entrar"/>
    </form>
    <%}else {%>
    <h1>Seja bem-vindo</h1>
            
            
            
<%}%>
        
    </body>
</html>