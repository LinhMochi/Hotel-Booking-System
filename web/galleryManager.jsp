<%-- 
    Document   : galleryManager
    Created on : Jun 28, 2022, 5:10:29 PM
    Author     : pham quoc an
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
               
        </style>
    </head>
    <body>
        <h1>Gallery Manager</h1>
        <a href="galleryAdd">Add</a>
        <table border="1px" width="100%">
            <tr>
                <td>ID</td>
                <td>Title</td>
                <td>Image</td>
                <td>Hotel Name</td>
                <td>Change</td>
                <td>Remove</td>
            </tr>
            <c:forEach var="photo" items="${list}">
                <tr>
                    <td>${photo.id}</td>
                    <td>${photo.title}</td>
                    <td><img src="${photo.image}" width="200" height="200" alt="hotel-img"></td>
                    <td>${photo.hotelId}</td>
                    <td>
                        <form action="galleryUpdate" method="GET">
                            <input type="hidden"  value="${photo.id}" name="id"/>
                            <input type="submit" value="Change"/>
                        </form>
                    </td>
                    <td>
                        <form action="galleryRemove" method="POST">
                            <input type="hidden"  value="${photo.id}" name="id"/>
                            <input type="submit" value="Remove"/>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <script>
//            function openForm() {
//              document.getElementById("myForm").style.display = "block";
//            }
//
//            function closeForm() {
//              document.getElementById("myForm").style.display = "none";
//            }   
//            function Update(){
//                window.location.href = 'hotelDetail';
//            }
//            function Remove(){
//                window.location.href = '';
//            }
//            
        </script>
    </body>
</html>
