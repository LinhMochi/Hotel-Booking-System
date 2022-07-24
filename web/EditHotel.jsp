<%-- 
    Document   : EditServices
    Created on : 16-Jul-2022, 09:25:22
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
`<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
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
                color: #5b7db1;
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
                <h3>Edit Service</h3>
            </div>
            <div class="mt-4 mx-4">
                <form action="EditServices" method="post">
                    <label for="id" class="form-label fw-bold mt-2">ID : </label>
                    <input type="text" class="form-control" name="id" readonly id="id" value="${slist.id}" />


                    <label for="name" class="form-label fw-bold mt-2">Name :
                    </label>
                    <input type="text" class="form-control" name="name" id="name" value="${slist.name}" />

                    <label for="from" class="form-label fw-bold mt-2">NoOfStar :
                    </label>
                    <input type="text" class="form-control" name="star" id="name" value="${slist.name}" />

                    <label for="to" class="form-label fw-bold mt-2">Decription : </label>
                    <textarea class="form-control" name="decription" id="id" value="${slist.from}"></textarea> 

                    <label for="price" class="form-label fw-bold mt-2">HotelAdvance :
                    </label>
                    <textarea class="form-control" name="hoteladvance" id="id" value="${slist.from}"></textarea> 

                    <label for="unit" class="form-label fw-bold mt-2">Policies :
                    </label>
                    <textarea class="form-control" name="policies" id="id" value="${slist.from}"></textarea> 

                    <label for="unit" class="form-label fw-bold mt-2">Map :
                    </label>
                    <input type="text" class="form-control" name="map" id="unit" value="${slist.unit}" />

                    <label for="unit" class="form-label fw-bold mt-2">Email :
                    </label>
                    <input type="email" class="form-control" name="email" id="unit" value="${slist.unit}" />

                    <label for="unit" class="form-label fw-bold mt-2">PhoneNumber :
                    </label>
                    <input type="text" class="form-control" name="phone" id="unit" value="${slist.unit}" />

                    <label for="unit" class="form-label fw-bold mt-2">ImgHotel :
                    </label>
                    <input type="text" class="form-control" name="image" id="unit" value="${slist.unit}" />


                    <label for="status" class="form-label fw-bold mt-2">Status
                    </label>
                    <select name="status" id="" class="w-50 px-2 me-4" style=" height: 50px">
                        <option value="0"style="width: 700px">Choose Status</option>
                        <option value="active"style="width: 700px">Active</option>
                        <option value="span"style="width: 700px">Span</option>
                        <option value="0"style="width: 700px">Choose</option>

                    </select>
                    <br>
                    <label for="city" class="form-label fw-bold mt-2">City
                    </label>
                    <select name="city" id="" class="w-50 px-2 me-4" style=" height: 50px">
                        <option value="0"style="width: 700px">Choose City</option>
                        <c:forEach var="h" items="${listc}">
                            <option value="${h.id}" >${h.name}</option>
                        </c:forEach>
                    </select>
                    <br>
                    <label for="category" class="form-label fw-bold mt-2">Category
                    </label>
                    <select name="category" id="" class="w-50 px-2 me-4" style=" height: 50px">
                        <option value="0"style="width: 700px">Choose Category</option>
                        <c:forEach var="h" items="${listHC}">
                            <option value="${h.id}" >${h.category}</option>
                        </c:forEach>
                    </select>
                    <!--                <input type="text" class="form-control" name="category" id="category" value="{service.category}" />-->


                    <div class="mt-3 d-flex justify-content-end">
                        <button type="submit" class="btn btn-primary btn-md px-4 py-2">
                            Edit
                        </button>
                    </div>
                </form>
            </div>
        </div>

        <script>
            const imageUrl = document.querySelector("#imageUrl");
            const image = document.querySelector(".image");
            imageUrl.addEventListener("change", () => {
                image.src = imageUrl.value;
            });
        </script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>

</html>