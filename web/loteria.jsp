
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList lista = (ArrayList) session.getAttribute("minhaLista");
    if (lista == null) {
        lista = new ArrayList();
    }

    Random random = new Random();
    

    for (int i = 0; i <6; i++) {
        
        lista.add(random.nextInt(61));

    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dicas para loteria</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <table border="1">
            <tr>

                <%for (int i = 0; i <lista.size(); i++)  {%>
                

                <td><%=lista.get(i)%></td>

                <%}%>
            </tr>
        </table>
    </body>
</html>
