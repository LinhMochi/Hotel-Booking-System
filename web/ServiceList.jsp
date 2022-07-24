<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : ManagerCustomer
    Created on : 14-Jul-2022, 20:53:10
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
        <div class="container mt-5 mx-auto card border-none shadow-lg overflow-hidden">
            <div class="mt-2 mx-4">
                <h3>Service Hotel</h3>
            </div>
            <div class="d-flex mt-2 w-100 justify-content-end">
                <a href="AddServiceHotel"> <button class="btn btn-primary px-4 py-2 me-2">ADD</button></a>
            </div>
            <div class="mt-2">
                <table class="table table-borderless table-hover my-2">
                    <thead class="bg-info ">
                        <tr class="border-none">
                            <th scope="col">ID</th>
                            <th scope="col">NameService</th>
                            <th scope="col">Price</th>
                            <th scope="col">Unit</th>
                            <th scope="col">Create</th>
                            <th scope="col">From</th>
                            <th scope="col">To</th>
                            <th scope="col">ServiceCateGory</th>
                            <th scope="col">Action</th>

                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="s" items="${slist}">
                            <tr>
                                <th scope="row">${s.id}</th>
                                <td>${s.name}</td>
                                <td>${s.price}</td>
                                <td>${s.unit}</td>
                                <td>${s.parseTime()}</td>
                                <td>${s.from}</td>
                                <td>${s.to}</td> 
                                <td>${s.servicrCategory}</td>
                                <td>
                                    <a href="ViewHotel?id=${o.id}" class="view" title="ViewHotel?id=${o.id}" data-toggle="tooltip"><i class="fa-solid fa-eye" style="color: cadetblue"> </i
                                        ></a>
                                    <a href="UpdateHotels?id=${o.id}" class="edit mx-2" data-toggle="tooltip"><i class="fa-solid fa-pen-to-square" style="color: blue"></i
                                        ></a>
                                    <a href="DeleteHotelController?id=${o.id}" class="delete" title="DeleteHotelController?id=${o.id}" data-toggle="tooltip"><i class="fa-solid fa-circle-minus" style="color: red"></i
                                        ></a>
                                </td>
                            </tr>

                        </c:forEach>
                    </tbody>

                </table>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>

</html>