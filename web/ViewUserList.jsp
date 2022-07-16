<%-- 
    Document   : ViewUserList
    Created on : Jul 16, 2022, 11:37:50 AM
    Author     : Duong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
        <title>List User Page</title>
    </head>
    <body>


            <h2 style="text-align: center; color: blue">User List</h3><br>
  
        <div class="container" >

            <table class="table">
                <thead class="thead-light">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Full Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Phone Number</th>
                        <th scope="col">Gender</th>
                        <th scope="col">Role</th>
                        <th scope="col">Status</th>
                        <th scope="col"></th>
                    </tr>
                </thead>
                <tbody>

                    <c:forEach items="${list}" var="user">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.fullName}</td>
                            <td>${user.email}</td>
                            <td>${user.phoneNumber}</td>
                            <td> <c:if test="${user.gender == '1'}">Male</c:if>
                                <c:if test="${user.gender == '2'}">FeMale</c:if>
                                <c:if test="${user.gender == '3'}">Unknown</c:if>
                            </td>
                            <td>${user.role}</td>
                            <td>${user.status}</td>
                            <td>
                                <a href="listUserServlet"><button type="button"class="btn btn-primary">Edit</button></a><br>
                            </td>
                        </tr>

                    </c:forEach>
                </tbody>
            </table>

            <c:if test="${index > 1}">
                <a class="btn btn-primary" class="btn btn-move-page" href="ViewUserController?index=${index-1}&code=${code}" role="button">Trang trước</a>
            </c:if>

            <c:forEach begin="1" end="${endPage}" var="i">
                <a  class="${i==index?"btn-ative":""}" 
                    href="listUserServlet?index=${i}" 
                    role="button">${i}</a>
                <input type="hidden" name="index" value="${i}">
            </c:forEach>

            <c:if test="${index < endPage}">
                <a class="btn btn-primary" class="btn btn-move-page" href="ViewUserController?index=${index+1}&code=${code}" role="button">Trang sau</a>
            </c:if>
        </div>


        <link href="css/userlist-style.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>