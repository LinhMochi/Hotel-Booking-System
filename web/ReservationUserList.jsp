<%-- 
    Document   : ReservationUserList
    Created on : Jul 2, 2022, 12:12:38 PM
    Author     : Alexa
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
        <title>Reservation User List Page</title>
    </head>
    <body>
        <div class="container-fuild mt-3 bg-light p-5 rounded">


            <table class="table table-hover border mt-3">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">adult</th>
                        <th scope="col">child</th>
                        <th scope="col">noRoom</th>
                        <th scope="col">bookDate</th>
                        <th scope="col">arrival</th>
                        <th scope="col">department</th>
                        <th scope="col">Status</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="o" items="${listReservation}">

                        <tr>
                            <th scope="row">${o.id}</th>
                            <td>${o.adult}</td>
                            <td>${o.child}</td>
                            <td>${o.noRoom}</td>
                            <td>${o.bookDate}</td>
                            <td>${o.arrival}</td>
                            <td>${o.department}</td>
                            <td>${o.status}</td>
                            <td>
                                <a href="ViewReservation?id=${o.id}" class="view" title="ViewReservation?id=${o.id}" data-toggle="tooltip"><i class="fa-solid fa-eye" style="color: cadetblue"> </i
                                    ></a>
                                <a href="UpdateReservations?id=${o.id}" class="edit mx-2" data-toggle="tooltip"><i class="fa-solid fa-pen-to-square" style="color: blue"></i
                                    ></a>
                                <a href="DeleteReservationCOntroller?id=${o.id}" class="delete" title="DeleteReservationController?id=${o.id}" data-toggle="tooltip"><i class="fa-solid fa-circle-minus" style="color: red"></i
                                    ></a>
                            </td>

                        </tr>

                    </c:forEach>

                </tbody>
            </table>

            <div class="d-flex w-100 justify-content-center">
                <nav>
                    <ul class="pagination pagination-md">
                        <c:forEach var = "i" begin = "1" end = "${numberOfPage}">
                            <c:choose>
                                <c:when test="${i == page}">
                                    <li class="page-item active" aria-current="page">
                                        <a class="page-link" href="ListsHotelController?page=${i}">${i}</a>
                                    </li>
                                </c:when>
                                <c:otherwise>     <li class="page-item"><a class="page-link" href="ListsHotelController?page=${i}">${i}</a></li>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                    </ul>
                </nav>
            </div>
        </div>

        <link href="css/userlist-style.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    </body>
</html>
