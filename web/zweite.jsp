<%-- 
    Document   : zweite
    Created on : 31.01.2017, 19:42:33
    Author     : Video-Schulung
--%>


<%@page import="info.herstell.model.Person"%>
<%@page import="info.herstell.ctrl.ListPersonen"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pctrl" scope="session" class="info.herstell.ctrl.ListPersonen" />
<jsp:useBean id="pers" scope="page" class="info.herstell.model.Person" />
<jsp:setProperty name="pers" property="*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp" flush="false" />
        <%
            // Wird nun nicht mehr benötigt, durch die usebean-Action(zeile 11) steht mir das Object auch hier zur Verfügung 
            // ListPersonen zlist=(ListPersonen)session.getAttribute("myList");

        %>
        <%  if (request.getParameter("firstname") != null) {

                // Person p = new Person(request.getParameter("firstname"), request.getParameter("lastname"));
                // wird nicht benötigt, da die setProperty Action alle gleichlautenden inputTextfelder aus dem Formular
                // automatisch beim Request übenimmt. Mein Object pers kann ich an den Kontroller übegeben.
                pctrl.addElement(pers);
                out.print("<br/><h1>" + pers.fullname() + "</h1><br/>");
                
            }

            // Ausgabe der Liste hier in meiner View
            out.print("<table>");
            for (Person pi : pctrl.getPeList()) {
                out.print("<tr><td>" + pi.fullname() + "------" + pi.getE_mail() + "</td><td><form action='steuerung/delete.jsp'> "
                        + "<input type = 'hidden' name = 'myid' value = '" + pi.getId() + "' / >"
                        + "<input type = 'submit' value = 'delete' /></form ></td></tr>");
            }

            out.print("</table>");
            
        %> 

       
    </body>
</html>
