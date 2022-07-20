<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : ManagerHomeCategory
    Created on : 14-Jul-2022, 21:26:18
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer"
              />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet" />
        <style>
            * {
                font-family: "Roboto", sans-serif;
            }

            h3 {
                font-weight: 500;
                font-size: 30px;
                color: #5B7DB1;
            }

            p {
                font-weight: 300;
            }

            a {
                text-decoration: none;
            }

            tr {
                border-style: none !important;
            }

            th th {
                font-weight: 500;
            }

            .card {
                border: none;
            }

            i {
                font-size: 20px;
            }
        </style>
    </head>

    <body>
        <div class="container mt-5 p-4 mx-auto card border-none shadow-lg overflow-hidden">
            <div class="mt-4 mx-4 d-flex justify-content-between">
                <h3>Admin HotelCategory</h3>
                <a class="btn btn-primary btn-md px-4 py-2" href="AddHotelCategory">Add</a>
            </div>
            <div class="mt-4">
                <table class="table table-borderless table-hover my-2">
                    <thead class="bg-info ">
                        <tr class="border-none text-center">
                            <th scope="col">ID</th>
                            <th scope="col">Category</th>
                            <th scope="col">Image</th>
                            <th scope="col">Action</th>

                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="o" items="${list}">
                            <tr class="text-center">
                                <td>${o.id}</td>
                                <td>${o.category}</td>
                                <td><img src="${o.image}" style="height: 150px ; object-fit : cover ;"></td>
                                <td><a href=""><i class="fa-solid fa-eye text-primary me-2"></i></a> <a href="EditHotelCategory?hcateID=${o.id}"><i class="fa-solid fa-pen-to-square text-warning me-2"></i></a> <a href=""><i class="fa-solid fa-trash-can text-danger"></i> </a></td>

                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

            <c:if test="${numOfPage > 1}">
                <!--Page Pagination Start--> 
                <div class="paging d-flex justify-content-center w-100 mt-4">
                    <nav aria-label="pagination pagination-md">
                        <ul class="pagination">
                            <c:forEach var = "i" begin = "1" end = "${numOfPage}">
                                <c:choose>
                                    <c:when test="${i==page}">

                                        <li class="page-item active" aria-current="page">
                                            <span class="page-item">  <a  class='active page-link' href="ManagerHomeCategory?page=${i}">${i}</a></span>
                                        </li>

                                    </c:when>    
                                    <c:otherwise>

                                        <li class="page-item" aria-current="page">
                                            <span class="page-item">  <a  class='active page-link' href="ManagerHomeCategory?page=${i}">${i}</a></span>
                                        </li>


                                    </c:otherwise>
                                </c:choose>

                            </c:forEach>
                        </ul>
                    </nav>
                </div>
                <!--Page Pagination End--> 
            </c:if>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>

</html>