<%-- 
    Document   : updateHotel
    Created on : Jun 21, 2022, 1:46:36 PM
    Author     : Nhat Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />
        <title>Update Hotel</title>
    </head>
    <body>
          <div class="container mt-3" style="width: 500px; height: auto">         
            <table class="table table-bordered table-sm">
                <thead>
                </thead>
                <tbody>
                    <tr>
                        <th>Name</th>
                        <td><input  style="width: 400px" type="text"></td>

                    </tr>
                    <tr>
                        <th>NoOfStar</th>>
                        <td><input style="width: 400px" type="text"></td>

                    </tr>
                    <tr>
                        <th>Decription</th>
                        <td><textarea style="width: 400px" maxlength="65525"></textarea></td>

                    </tr>
                    <tr>
                        <th>HotelAdvance</th>
                        <td><textarea style="width: 400px" maxlength="65525"></textarea></td>

                    </tr>
                    <tr>
                        <th>Policies</th>
                        <td><textarea style="width: 400px" maxlength="65525"></textarea></td>

                    </tr>
                    <tr>
                        <th>Map</th>
                        <td>Dooley</td>

                    </tr>
                    <tr>
                        <th>Email</th>
                        <td><input style="width: 400px" type="email" name="email"></td>

                    </tr>
                    <tr>
                        <th>PhoneNumber</th>
                        <td><input style="width: 400px" type="tel" id="phone" name="phone" placeholder="123-45-678" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required></td>
                    </tr>
                    <tr>
                        <th></th>
                        <td><input type="submit" value="Submit"></td>
                    </tr>
                </tbody>
            </table>
        </div>

    </body>
</html>
