<%-- 
    Document   : Login
    Created on : May 31, 2022, 12:42:06 AM
    Author     : Linh
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
            <h2>Add User</h3>
            <form action="AddNewUserServlet" method="post">
                    <div class="box">
                        <input type="text" name="name" id="username" required>
                        <label for="username">Full Name</label>
                    </div>
                    <div class="box">
                        <input name="dbo" type="text" required>
                        <label for="username">Date Of Birth</label>
                    </div>
                
                    <div class="box">
                        <input type="email" name="email" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{3,25}@gmail.com$" title="Hãy nhập đúng định dạng @gmail.com" id="username" required>
                        <label for="username">Email</label>
                    </div>
                    <div class="box">
                        <input type="text" name="address" required>
                        <label for="username">Address</label>
                    </div>
                    <div class="box">
                        <input name="phoneNumber" pattern="^[0-9]{9,11}$" title="Hãy nhập đúng định dạng số điện thoại" required>
                        <label for="username">Phone Number</label>
                    </div>
                    
                    
                    <div class="box">
                        <input 
                            pattern="^[a-zA-Z][a-zA-Z0-9\.]{3,31}$" title="Mật khẩu dài 3-31 ký tự bắt đầu bởi chữ, gồm số và chữ" 
                            type="password" name="password" required  id="password">
                        <label for="password">password</label>
                        <span class="eye-slash hidden">&#128065;<span class="slash">/</span></span>
                        <span class="eye ">&#128065;</span>
                    </div>
                <div class="box">
                        <select name="role" class="form-select" aria-label="Default select example" >
                            <option selected>User role</option>
                            <option value="Customer">Customer</option>
                            <option value="Manager">Manager</option>
                        </select>
                        
                        <select name="gender" class="form-select" aria-label="Default select example" >
                            <option selected>Gender</option>
                            <option value="1">Male</option>
                            <option value="2">Female</option>
                            <option value="3">Unknow</option>
                        </select>
                        
                        <select name="status" class="form-select" aria-label="Default select example" >
                            <option selected>Status</option>
                            <option value="1">Active</option>
                            <option value="2">Banned</option>
                      
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
