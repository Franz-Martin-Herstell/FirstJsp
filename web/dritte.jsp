<%-- 
    Document   : dritte
    Created on : 08.10.2017, 14:36:20
    Author     : schulung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pctrl" scope="session" class="info.herstell.ctrl.ListPersonen" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp" flush="false" />
        <%
           out.print("<h1>" +pctrl.giveRandom()+"</h1>");
            
         %>   
    </body>
</html>
