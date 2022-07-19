<%-- 
    Document   : AddConvient
    Created on : Jul 18, 2022, 8:26:21 AM
    Author     : Duong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add user Page</title>
        <link href="css/login-style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="login-box">
            <h2>Add Convenient</h3>
                <form action="AddConvient" method="post">
                    <div class="box">
                        <input type="text" name="convient" id="username">
                        <label for="username">Convenient</label>
                    </div>
                    <div class="box">
                        <select style="width: 100%" name="categoryId" class="form-select" aria-label="Default select example" >
                            <option selected value="2">Category</option>
                            <c:forEach items="${list}" var="con">
                                <option value=${con.conCateId}>${con.convenientCategory}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="box">
                        <select style="width: 100%" name="hotelId" class="form-select" aria-label="Default select example" >
                            <option selected value="3">Hotel</option>
                            <option value="2">Ngân Hàn Hotel</option>
                            <option value="3">Mun Hotel</option>
                            <option value="4">Mặt Trời Hotel</option>
                            <option value="5">Lữ Hành Hotel</option>
                        </select>
                    </div>

                    <div class="box">
                        <select style="width: 100%" name="rate" class="form-select" aria-label="Default select example" >
                            <option selected value="6">Convenient rate</option>
                            <option value="6">Very good</option>
                            <option value="5">Good</option>
                            <option value="4">Normal</option>
                            <option value="3">Not good</option>
                            <option value="2">Bad</option>
                            <option value="1">So bad</option>
                        </select>
                    </div>


                    <button type="submit" class="btn btn-primary">Save</button>

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
