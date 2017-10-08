<%-- 
    Document   : deleteSession
    Created on : 08.10.2017, 11:07:51
    Author     : schulung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("../index.jsp");
%>    
