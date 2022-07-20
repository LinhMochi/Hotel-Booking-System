<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : crud
    Created on : 18-Jun-2022, 21:27:58
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Bootstrap demo</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer"
              />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />
    </head>

    <body class="">
        <div class="container-fuild mt-3 bg-light p-5 rounded">
            <div class="d-flex mt-2 w-100 justify-content-end">
                <a href=""> <button class="btn btn-primary px-4 py-2 me-2">ADD</button></a>
            </div>
            <table class="table table-hover border mt-3">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Categry Hotel</th>
                        <th scope="col">Img</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="o" items="${listHotel}">
                   
                        <tr>
                            <th scope="row">${o.id}</th>
                            <td>${o.name}</td>
                            <td>${o.email}</td>
                            <td>
                                <a href="UpdateHotels?id=${o.id}" class="edit mx-2" data-toggle="tooltip"><i class="fa-solid fa-pen-to-square" style="color: blue"></i
                                    ></a>
                                <a href="DeleteHotelController?id=${o.id}" class="delete" title="DeleteHotelController?id=${o.id}" data-toggle="tooltip"><i class="fa-solid fa-circle-minus" style="color: red"></i
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    </body>

</html>