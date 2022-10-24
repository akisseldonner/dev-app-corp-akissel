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
        <% String lang = request.getParameter("lang"); %>
   <header>     <h1><jsp:getProperty name="myBean" property="msgHeader"/></h1>   </header>   

        <h2><jsp:setProperty name="myBean" property="lang" value="<%=lang%>"/>
        <jsp:getProperty name="myBean" property="msg"/>, <%=request.getParameter("nome")%>! <jsp:getProperty name="myBean" property="msgAlt"/></h2>  
        <jsp:getProperty name="myBean" property="msg2"/> <jsp:getProperty name="myBean" property="aut"/>
    </body>
</html>
