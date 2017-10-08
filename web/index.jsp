<%-- 
    Document   : index
    Created on : 22.01.2017, 18:00:57
    Author     : Video-Schulung
--%>

<%@page import="info.herstell.ctrl.ListPersonen"%>
<%@page import="java.util.Random" %>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
       
        <jsp:include page="header.jsp" flush="false" />
         <form action="zweite.jsp">
            <table>
                <tr><td>Vorname:</td><td>  <input type="text" name="firstname" value="" /></td></tr>
                <tr><td>Nachname:</td><td>  <input type="text" name="lastname" value="" /></td></tr>
                <tr><td>Email:</td><td>  <input type="text" name="e_mail" value="" /></td></tr>
            </table>
            <input type="submit" value="OK" />
        </form>
       
        <jsp:include page="footer.jsp" flush="false" />         
        <a href="zweite.jsp">Zur Zweiten</a>
</html>
