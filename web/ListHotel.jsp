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
            <div class="d-flex">
                <div class="col-6">
                    <form class="d-flex" method="get" action="SearchHandle">
                        <input class="form-control me-4 w-50" type="search" placeholder="Search" aria-label="Search" name="q" />
                        <button class="btn btn-outline-success" type="submit">
                            Search
                        </button>
                    </form>
                </div>
                <div class="col-6">
                    <form class="d-flex" method="get" action="FilterHandle">
                        <select name="filter" id="filter" class="w-50 px-2 me-4">
                            <option value="name">Search By Name</option>
                            <option value="address">Search By Address</option>
                            <option value="star">Search By Star</option>
                            <option value="policies">Search By Policies</option>
                            <option value="hotelAdvance">Search By Hotel Advance</option>
                        </select>
                        <button class="btn btn-outline-success" type="submit">
                            Filter
                        </button>
                    </form>
                </div>
            </div>
            <div class="d-flex mt-2 w-100 justify-content-end">
                <a href="ListCityHotelController"> <button class="btn btn-primary px-4 py-2 me-2">ADD</button></a>
            </div>
            <table class="table table-hover border mt-3">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">PhoneNumber</th>
                        <th scope="col">Star</th>
                        <th scope="col">Category</th>
                        <th scope="col">Address</th>
                        <th scope="col">City</th>
                        <!--                        <th scope="col">Map</th>-->
                        <th scope="col">Status</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="o" items="${listHotel}">

                        <tr>
                            <th scope="row">${o.id}</th>
                            <td>${o.name}</td>
                            <td>${o.email}</td>
                            <td>${o.phoneNumber}</td>
                            <td>${o.noOfStar}</td>
                            <td>${o.category}</td>
                            <td>${o.address}</td>
                            <td>${o.city}</td>
<!--                            <td style="width: 50px">${o.map}</td>-->
                            <td>${o.status}</td>
                            <td>
                                <a href="ViewHotel?id=${o.id}" class="view" title="ViewHotel?id=${o.id}" data-toggle="tooltip"><i class="fa-solid fa-eye" style="color: cadetblue"> </i
                                    ></a>
                                <a href="UpdateHotels?id=${o.id}" class="edit mx-2" data-toggle="tooltip"><i class="fa-solid fa-pen-to-square" style="color: blue"></i
                                    ></a>


                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal${o.id}">
                                    Delete  
                                </button>

                                <!-- Modal -->
                                <div class="modal fade" id="exampleModal${o.id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                Are you sure delete ${o.name}?
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                <a href="DeleteHotelController?id=${o.id}" class="delete" title="DeleteHotelController?id=${o.id}" data-toggle="tooltip"><button type="button" class="btn btn-primary">Delete</button></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                
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
            <!-- Modal -->
            <div class="modal fade" id="exampleModal${user.id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Delete Hotel</h5>
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
            <link href="css/userlist-style.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    </body>

</html>