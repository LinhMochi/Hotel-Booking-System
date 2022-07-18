<%-- 
    Document   : update
    Created on : Jun 30, 2022, 12:37:17 PM
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
        <form action="galleryUpdate" method="POST">
            Id:<input type="hidden" name="id" value="${id}"/>${id}<br/>
            Name:<input type="text" name="title"/><br/>
            Image URL:<input type="text" name="img"/><br/>
            Hotel:<input type="text" name="hotelID"/><br/>
            <input type="submit" value="Change">
        </form>
    </body>
</html>
