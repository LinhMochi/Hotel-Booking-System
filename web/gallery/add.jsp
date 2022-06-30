<%-- 
    Document   : add
    Created on : Jun 30, 2022, 8:58:30 AM
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
        <form action="galleryAdd" method="POST">
            Name:<input type="text" name="title"/>
            Image URL:<input type="text" name="img"/>
            Hotel:<input type="text" name="hotelID"/>
            <input type="submit">
        </form>
    </body>
</html>
