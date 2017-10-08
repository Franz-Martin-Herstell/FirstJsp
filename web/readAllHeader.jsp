<%
   // Auslesen aller �bermittelten Request-Header
   java.util.Enumeration headerNames = request.getHeaderNames();
%>
<html>
    <body>
        <%-- Ausgabe aller Request-Header zwecks Debugging --%>
        Die folgenden <b>Request-Header</b> wurden �bertragen:
        <ul >
            <% out.print(request.getRemoteAddr());
           while (headerNames.hasMoreElements()) {
              String headerName = (String) headerNames.nextElement();
            %>
            <li>
                <%= headerName %> = <%= request.getHeader(headerName) %>
            </li>
            <% }

             out.print(request.getHeader("user-agent"));
            %>
        </ul>
    </body>
</html>
