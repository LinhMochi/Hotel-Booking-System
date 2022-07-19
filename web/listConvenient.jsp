<%-- 
    Document   : listConvenient
    Created on : Jun 30, 2022, 5:14:27 PM
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
        <h2 style="color: #33ccff; margin-top: 5%;text-align: center;">List User Page</h2><br><br><br>
        <div class="container">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Convenient Category</th>
                        <th scope="col">Convenient</th>
                    </tr>
                </thead>

                <tbody>

                    <tr>
                        <th scope="col">1</th>
                        <td>An ninh</td>
                        <td>
                            <c:forEach items="${listCon1}" var="con">
                                - ${con.convenient}<br>
                            </c:forEach>
                        </td>
                    </tr>
                    <tr>
                        <th scope="col">2</th>
                        <td>Phục vụ</td>
                        <td>
                            <c:forEach items="${listCon2}" var="con">
                                - ${con.convenient}<br>
                            </c:forEach>
                        </td>
                    </tr>
                    <tr>
                        <th scope="col">3</th>
                        <td>Giải trí</td>
                        <td>
                            <c:forEach items="${listCon3}" var="con">
                                - ${con.convenient}<br>
                            </c:forEach>
                        </td>
                    </tr>
                    <tr>
                        <th scope="col">4</th>
                        <td>Gia đình</td>
                        <td>
                            <c:forEach items="${listCon4}" var="con">
                                - ${con.convenient}<br>
                            </c:forEach>
                        </td>
                    </tr>
                    <tr>
                        <th scope="col">6</th>
                        <td>Tiện ích phong</td>
                        <td>
                            <c:forEach items="${listCon6}" var="con">
                                - ${con.convenient}<br>
                            </c:forEach>
                        </td>
                    </tr>
                    <tr>
                        <th scope="col">5</th>
                        <td>Khác</td>
                        <td>
                            <c:forEach items="${listCon5}" var="con">
                                - ${con.convenient}<br>
                            </c:forEach>
                        </td>
                    </tr>


                </tbody>
            </table>
            <form action="EditConventController" method="get">
                <button type="submit" style="display: block;
                                                 margin-left: auto;
                                                 margin-right: auto;" class="btn btn-primary">Edit Convenient</button><br>
            </form>


        </div>
        <link href="css/userlist-style.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
