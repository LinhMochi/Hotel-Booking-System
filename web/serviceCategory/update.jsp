<%-- 
    Document   : update
    Created on : Jul 11, 2022, 7:33:12 PM
    Author     : pham quoc an
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="serviceCategoryUpdate" method="POST">
            Id:<input type="hidden" name="id" value="${id}"/>${id}<br/>
            Service Category:<input type="text" name="serviceCategory"/><br/>
            <input type="submit" value="Change">
        </form>
    </body>
</html>
