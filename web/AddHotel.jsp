<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : AddHotel
    Created on : Jun 28, 2022, 9:00:39 AM
    Author     : Nhat Anh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />
        <title>Add Hotel</title>
    </head>
    <body>
        <div class="container mt-3" style="width: 800px; height: auto"> 
            <h1 class="text-center" style="margin-top: 30px">ADD HOTEL</h1>
            <form method="get" action="AddHotelController">
                <table class="table table-bordered table-sm">
                    <thead>
                    </thead>
                    <tbody>
                        <tr>
                            <th>Name</th>
                            <td><input  style="width: 700px; height: 50px" type="text" name="name"></td>

                        </tr>

                        <tr>
                            <th>NoOfStar</th>>
                            <td><input style="width: 700px; height: 50px" type="text" name="star"></td>

                        </tr>
                        <tr>
                            <th>Decription</th>
                            <td><textarea style="width: 700px" maxlength="65525" name="decription"></textarea></td>

                        </tr>
                        <tr>
                            <th>HotelAdvance</th>
                            <td><textarea style="width: 700px" maxlength="65525" name="hoteladvance"></textarea></td>

                        </tr>
                        <tr>
                            <th>Policies</th>
                            <td><textarea style="width: 700px" maxlength="65525" name="policies"></textarea></td>

                        </tr>
                        <tr>
                            <th>Map</th>
                            <td><input style="width: 700px; height: 50px" type="text" name="map"></td>

                        </tr>
                        <tr>
                            <th>Email</th>
                            <td><input style="width: 700px; height: 50px" type="email" name="email"></td>

                        </tr>
                        <tr>
                            <th>PhoneNumber</th>
                            <td><input style="width: 700px; height: 50px" type="tel" id="phone" name="phone" placeholder="123-45-678" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required></td>
                        </tr>
                        <tr>
                            <th>Status</th>
                            <td>
                                <select name="status" id="" class="w-50 px-2 me-4" style=" height: 50px">
                                    <option value="0"style="width: 700px">Choose Status</option>
                                    <option value="active"style="width: 700px">Active</option>
                                    <option value="span"style="width: 700px">Span</option>
                                    <option value="0"style="width: 700px">Choose</option>

                                </select>
                            </td>

                        </tr>
                        <tr>
                            <th>Address</th>
                            <td><input style="width: 700px; height: 50px" name="address" type="text"></td>

                        </tr>
                        <!--                     Code ở đây City-->
                        <tr>
                            <th>City</th>
                            <td>

                                <form action="ListCityHotelController">
                                    <select name="city" id="" class="w-50 px-2 me-4" style=" height: 50px">
                                        <option value="0"style="width: 700px">Choose City</option>
                                        <c:forEach var="o" items="${listc}">
                                            <option value="${o.id}" >${o.name}</option>
                                        </c:forEach>
                                    </select>
                                </form>
                            </td>

                        </tr>
                        <tr>
                            <th>Category</th>
                            <td>
                                <select name="category" id="" class="w-50 px-2 me-4" style=" height: 50px">
                                    <option value="0"style="width: 700px">Choose Category</option>
                                    <c:forEach var="h" items="${listHC}">
                                        <option value="${h.id}" >${h.category}</option>
                                    </c:forEach>
                                </select>
                            </td>

                        </tr>
                        <tr>
                            <th></th>
                            <td><input type="submit" value="Add"></td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>

    </body>
</html>
