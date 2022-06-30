<%-- 
    Document   : galleryManager
    Created on : Jun 28, 2022, 5:10:29 PM
    Author     : pham quoc an
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
               body {font-family: Arial, Helvetica, sans-serif;}
                * {box-sizing: border-box;}

                /* Button used to open the contact form - fixed at the bottom of the page */
                .open-button {
                  background-color: #555;
                  color: white;
                  padding: 16px 20px;
                  border: none;
                  cursor: pointer;
                  opacity: 0.8;
                  position: fixed;
                  bottom: 23px;
                  right: 28px;
                  width: 280px;
                }

                /* The popup form - hidden by default */
                .form-popup {
                  display: none;
                  position: fixed;
                  bottom: 0;
                  right: 15px;
                  border: 3px solid #f1f1f1;
                  z-index: 9;
                }

                /* Add styles to the form container */
                .form-container {
                  max-width: 300px;
                  padding: 10px;
                  background-color: white;
                }

                /* Full-width input fields */
                .form-container input[type=text], .form-container input[type=password] {
                  width: 100%;
                  padding: 15px;
                  margin: 5px 0 22px 0;
                  border: none;
                  background: #f1f1f1;
                }

                /* When the inputs get focus, do something */
                .form-container input[type=text]:focus, .form-container input[type=password]:focus {
                  background-color: #ddd;
                  outline: none;
                }

                /* Set a style for the submit/login button */
                .form-container .btn {
                  background-color: #04AA6D;
                  color: white;
                  padding: 16px 20px;
                  border: none;
                  cursor: pointer;
                  width: 100%;
                  margin-bottom:10px;
                  opacity: 0.8;
                }

                /* Add a red background color to the cancel button */
                .form-container .cancel {
                  background-color: red;
                }

                /* Add some hover effects to buttons */
                .form-container .btn:hover, .open-button:hover {
                  opacity: 1;
                }
        </style>
    </head>
    <body>
        <h1>Gallery Manager</h1>
        <a href="galleryAdd">Add</a>
      </div>
        <table border="1px" width="100%">
            <tr>
                <td>ID</td>
                <td>Image</td>
                <td>Hotel Name</td>
                <td>Change</td>
                <td>Remove</td>
            </tr>
            <c:forEach var = "i" begin="1" end="5">
                <tr>
                    <td>ID</td>
                    <td><img src="images/hbooker.png" alt="hotel-img"</td>
                    <td>Hotel Name</td>
                    <td><a href="hotelDetail">change</a></td>
                    <td><input type="button" onclịck="Remove()" value="Remove"/></td>
                </tr>
            </c:forEach>
        </table>
        <script>
            function openForm() {
              document.getElementById("myForm").style.display = "block";
            }

            function closeForm() {
              document.getElementById("myForm").style.display = "none";
            }   
            function Update(){
                window.location.href = 'hotelDetail';
            }
            function Remove(){
                window.location.href = '';
            }
            
        </script>
    </body>
</html>
