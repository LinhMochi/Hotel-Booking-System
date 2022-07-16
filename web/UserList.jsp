<%-- 
    Document   : MoviePage
    Created on : Sep 30, 2021, 1:30:27 PM
    Author     : morjo
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

        <div class="container" >
            <form action="SearchUserServlet" method="">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i></button>
                    </div>
                    <input minlength="1" type="text" class="form-control" placeholder="Search" aria-label="" aria-describedby="basic-addon1" name="search">
                </div>
            </form>
        </div>

        <div class="container" >

            <a href="addNewUser.jsp"><button type="button" style="display: block;
                                             margin-left: auto;
                                             margin-right: auto;" class="btn btn-primary">Add New user</button></a><br>



            <table class="table">
                <thead class="thead-light">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Full Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Phone Number</th>
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
                            <td>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal${user.id}">
                                    <i class="far fa-trash-alt"></i>
                                    Delete
                                </button>
                                <a href="banServlet?id=${user.id}&&status=${user.status}&&index=${index}">
                                    <c:if test="${user.status == 'Banned'}"><button type="button" style="width: 100px" class="btn btn-primary"><i class="fas fa-user-plus"></i>Active</button></c:if>
                                    <c:if test="${user.status == 'Active'}"><button type="button" style="width: 100px" class="btn btn-danger"><i class="fas fa-user-slash"></i>Banned</button></c:if>

                                </a>
                                <a href="UpdateUserServlet?id=${user.id}&&index=${index}">
                                    <button type="button" class="btn btn-primary">Update</button>
                                </a>
                                <a href="ViewUserController"><button type="button" class="btn btn-primary">View</button>
                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal${user.id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Delete user</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    Are you sure delete ${user.fullName}?
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    <a href="deleteUserServlet?id=${user.id}"><button type="button" class="btn btn-primary">Delete</button></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>    


                            </td>

                        </tr>

                    </c:forEach>
                </tbody>
            </table>

            <c:if test="${index > 1}">
                <a class="btn btn-primary" class="btn btn-move-page" href="listUserServlet?index=${index-1}&code=${code}" role="button">Trang trước</a>
            </c:if>

            <c:forEach begin="1" end="${endPage}" var="i">
                <a  class="${i==index?"btn-ative":""}" 
                    href="listUserServlet?index=${i}" 
                    role="button">${i}</a>
                <input type="hidden" name="index" value="${i}">
            </c:forEach>

            <c:if test="${index < endPage}">
                <a class="btn btn-primary" class="btn btn-move-page" href="listUserServlet?index=${index+1}&code=${code}" role="button">Trang sau</a>
            </c:if>
        </div>


        <link href="css/userlist-style.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
