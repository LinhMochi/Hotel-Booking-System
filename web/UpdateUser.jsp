<%-- 
    Document   : MoviePage
    Created on : Sep 30, 2021, 1:30:27 PM
    Author     : morjo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update user Page</title>
        <link href="css/login-style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <div class="login-box">
            <h2>Update User</h3>
                <form action="UpdateUserServlet" method="Post">
                    <c:forEach items="${list}" var="user">
                        <input type="hidden" name="id" value="${user.id}">
                        <div class="box">
                            <input value="${user.fullName}" type="text" name="fullName" required>
                            <label for="username">Full Name</label>
                        </div>
                        <div class="box">
                            <input value = "${user.dob}" name="dbo" type="date" required>
                            <label for="username">Date Of Birth</label>
                        </div>

                        <div class="box">
                            <input value = "${user.address}" type="text" name="address" required>
                            <label for="username">Address</label>
                        </div>
                        <div class="box">
                            <input value = "${user.phoneNumber}" name="phoneNumber" pattern="^[0-9]{9,11}$" title="Hãy nhập đúng định dạng số điện thoại" required>
                            <label for="username">Phone Number</label>
                        </div>

                        <div class="box">
                            <select name="role" class="form-select" aria-label="Default select example" >
                                <option selected="${user.role}" value="${user.gender}">User role</option>
                                <option value="Customer">Customer</option>
                                <option value="Manager">Manager</option> 
                            </select>
                            And
                            <select name="gender" class="form-select" aria-label="Default select example" >
                                <option selected="${user.gender}" value="${user.gender}">Gender</option>
                                <option value="1">Male</option>
                                <option value="2">Female</option>
                                <option value="3">Unknown</option>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-primary">Save</button>
                    </c:forEach>

                </form>
        </div>
        <div class="error-box">
            <div class="error-message active <c:if test="${empty message}">hidden</c:if>">
                    <div class="close-error-message">&#128473;</div>
                ${message}
            </div>
        </div>

        <script type="text/javascript">
            const error_message = document.querySelector('.error-message');
            const close_error = document.querySelector('.close-error-message');
            close_error.addEventListener('click', () => {
                error_message.classList.toggle('hidden');
            });

            const eye = document.querySelector('.eye');
            const eye_slash = document.querySelector('.eye-slash');

            eye.addEventListener('click', () => {
                document.querySelector('.eye').classList.toggle('hidden');
                document.querySelector('.eye-slash').classList.toggle('hidden');
                document.querySelector('#password').setAttribute('type', 'text');
                error_message.classList.toggle('active');
            });
            eye_slash.addEventListener('click', () => {
                document.querySelector('.eye').classList.toggle('hidden');
                document.querySelector('.eye-slash').classList.toggle('hidden');
                document.querySelector('#password').setAttribute('type', 'password');
            });
        </script>
    </body>
</html>
