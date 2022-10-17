<%-- 
    Document   : sayhello
    Created on : 08/02/2021, 23:08:15
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SayHello.jsp</title>
    </head>
    <body>
        
        <header><center><h1><span id="myText"></span></h1></center></header>
        
        <jsp:useBean id="myBean" class="hello.MessageBean"/>
        <h1>Aplicativo HelloWorld</h1>
        <% String lang = request.getParameter("lang"); %>
        <h2><jsp:setProperty name="myBean" property="lang" value="<%=lang%>"/>
        <jsp:getProperty name="myBean" property="msg"/>, <%=request.getParameter("nome")%>!</h2>
        
        
        <footer><center><h2><jsp:getProperty name="myBean" property="msg2"/> <jsp:getProperty name="myBean" property="aut"/></h2></center></footer>
        
        <script>
            const date = new Date();
            let hora = date.getHours();
            switch (hora){
                case hora > 12 && hora < 18:
                     document.getElementById("myText").innerHTML = "Boa Tarde";

                     break;
                case hora < 12 && hora > 06:
                     document.getElementById("myText").innerHTML = "Bom Dia";

                     break;
                 default:
                     document.getElementById("myText").innerHTML = "Boa Noite";

            }
        
        
        </script>
        
    </body>
</html>
