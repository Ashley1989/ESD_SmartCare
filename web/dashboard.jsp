<%-- 
    Document   : dashboard
    Created on : Nov 27, 2020, 4:58:27 PM
    Author     : Raul-Andrei Ginj-Groszhart
--%>
<% 
//    100% sure this doesn't work but it was worth a try - FILTERS NEED TO BE IMPLEMENTED
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setDateHeader("Expires", -1);
    if(session.getAttribute("user") == null){response.sendRedirect("index.jsp");}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styles.css" type="text/css">

        <title> SmartCare <jsp:getProperty name="user" property="role"/> Dashboard </title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <main>
            <h2>Welcome, <jsp:getProperty name="user" property="username" />, this is your new dashboard!</h2>

            <form action="LogoutServlet.do" method="POST">
                <input type="submit" name="logout" value="Logout">
            </form>
        </main>
        <jsp:include page="footer.jsp" />
    </body>
</html>
