<%-- 
    Document   : add
    Created on : Jul 11, 2022, 7:32:54 PM
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
        <form action="serviceCategoryAdd" method="POST">
            CategoryName:<input type="text" name="serviceCategory"/><br/>
            <input type="submit" value="Add">
        </form>
    </body>
</html>
