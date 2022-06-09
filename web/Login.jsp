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
        <title>JSP Page</title>
        <link href="css/login-style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="login-box">
	<h2>Đăng nhập</h3>
        <form action="login" method="post">
		<div class="box">
			<input type="email" name="email" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{3,25}@gmail.com$" title="Hãy nhập đúng định dạng @gmail.com" id="username" required>
			<label for="username">Email</label>
		</div>
		<div class="box">
			<input 
			pattern="^[a-zA-Z][a-zA-Z0-9\.]{3,31}$" title="Mật khẩu dài 3-31 ký tự bắt đầu bởi chữ, gồm số và chữ" 
                        type="password" name="password" required  id="password">
			<label for="password">Mật khẩu</label>
			<span class="eye-slash hidden">&#128065;<span class="slash">/</span></span>
			<span class="eye ">&#128065;</span>
		</div>
                <div class="check-box">
                    <input type="checkbox" id="remember" name="remember" value="remember">
                    <label for="remember">Lưu lại mật khẩu</label>
                </div>
		<div class="link-box"><a href="#">Quên mật khẩu.</a></div>
		<button>Đăng nhập</button>
		<h5 class="link-box">Chưa có tài khoản? <a href="#">Đăng ký ngay</a></h5>
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
	const close_error =document.querySelector('.close-error-message');
	close_error.addEventListener('click',()=>{
		error_message.classList.toggle('hidden');
	});

	const eye = document.querySelector('.eye');
	const eye_slash = document.querySelector('.eye-slash');

	eye.addEventListener('click',()=>{
		document.querySelector('.eye').classList.toggle('hidden');
		document.querySelector('.eye-slash').classList.toggle('hidden');
		document.querySelector('#password').setAttribute('type','text');
		error_message.classList.toggle('active');
	});
	eye_slash.addEventListener('click',()=>{
		document.querySelector('.eye').classList.toggle('hidden');
		document.querySelector('.eye-slash').classList.toggle('hidden');
		document.querySelector('#password').setAttribute('type','password');
	});
</script>
    </body>
</html>
