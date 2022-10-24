<%-- 
    Document   : sayhello
    Created on : 08/02/2021, 23:08:15
    Author     : viter
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
        <jsp:useBean id="myBean" class="hello.MessageBean"/>
        <h1>Aplicativo AAA HelloWorld</h1>
        <% String lang = request.getParameter("lang"); %>
        <h2><jsp:setProperty name="myBean" property="lang" value="<%=lang%>"/>
        <jsp:getProperty name="myBean" property="msg"/>, <%=request.getParameter("nome")%>!</h2>

<script type="text/javascript">

    var myDate = new Date();
    var name = window.prompt("Please enter your name: ");

    if (myDate.getHours() < 12) {
        document.write(<jsp:getProperty name="myBean" property="msgManha"/>);
    }
    else if(myDate.getHours() >=12 && myDate.getHours() <=17){
        document.write(<jsp:getProperty name="myBean" property="msgTarde"/>);
    }
    else if (myDate.getHours() > 17 && myDate.getHours() <=24) {
        document.write(<jsp:getProperty name="myBean" property="msgNoite"/>);
    }
    else
    {
        document.write(<jsp:getProperty name="myBean" property="msgNoite"/>);
    }
</script>

        <jsp:getProperty name="myBean" property="msg2"/> <jsp:getProperty name="myBean" property="aut"/>
    </body>
</html>
