<%-- 
    Document   : delete
    Created on : 08.10.2017, 11:07:28
    Author     : schulung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pctrl" scope="session" class="info.herstell.ctrl.ListPersonen" />
<%
    pctrl.removeElement(Integer.parseInt(request.getParameter("myid")));
    response.sendRedirect("../zweite.jsp");
%>    
