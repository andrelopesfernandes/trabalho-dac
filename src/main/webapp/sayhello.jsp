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
        <script>
            var cumprimento;
            const date = Date.now();
            console.log(hora);
            var hora = date.getHours();
            console.log("to executando");
            console.log(hora);
            switch (hora){
                case hora > 12 && hora < 18:
                     cumprimento = "Boa Tarde";
                     document.getElementById("myText").innerHTML = cumprimento;

                     break;
                case hora < 12 && hora > 06:
                     cumprimento = "Bom Dia"; 
                     document.getElementById("myText").innerHTML = cumprimento;

                     break;
                 default:
                     cumprimento = "Boa Noite"; 
                     document.getElementById("myText").innerHTML = cumprimento;

            }
        
        
        </script>
        <header><span id="myText"></span></header>
        <jsp:useBean id="myBean" class="hello.MessageBean"/>
        <h1>Aplicativo HelloWorld</h1>
        <% String lang = request.getParameter("lang"); %>
        <h2><jsp:setProperty name="myBean" property="lang" value="<%=lang%>"/>
        <jsp:getProperty name="myBean" property="msg"/>, <%=request.getParameter("nome")%>!</h2>
        <jsp:getProperty name="myBean" property="msg2"/> <jsp:getProperty name="myBean" property="aut"/>
    </body>
</html>
