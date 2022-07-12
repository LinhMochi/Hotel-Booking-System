<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Service Category Manager</h1>
        <a href="serviceCategoryAdd">Add</a>
        <table border="1px" width="100%">
            <tr>
                <td>ID</td>
                <td>Service Category</td> 
                <td>Change</td>
                <td>Remove</td>
            </tr>
            <c:forEach var="category" items="${sclist}">
                <tr>
                    <td>${category.id}</td>
                    <td>${category.category}</td>
                    <td>
                        <form action="serviceCategoryUpdate" method="GET">
                            <input type="hidden"  value="${category.id}" name="id"/>
                            <input type="submit" value="Change"/>
                        </form>
                    </td>
                    <td>
                        <form action="serviceCategoryDelete" method="POST">
                            <input type="hidden"  value="${category.id}" name="id"/>
                            <input type="submit" value="Remove"/>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
