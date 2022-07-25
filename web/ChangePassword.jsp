<%-- 
    Document   : ChangePassword
    Created on : 25-Jul-2022, 06:37:55
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
	<link rel="stylesheet" type="text/css" href="css/changepass-style.css">
</head>
<body>
<div class="container">
	<h2>Đổi mật khẩu</h2>
        <form action="changepassword" method="post" onsubmit="return comfirm_password()">
		<div class="input-box">
			<div class="lable">Mật khẩu cũ <span class="note">*</span></div>
			<input type="password" name="old_pass" id="old_pass" required>
			<div class="eye" id="eye1"><i class="far fa-eye "></i><i class="far fa-eye-slash slash"></i></div>
		</div>
		<div class="input-box">
			<div class="lable">Mật khẩu mới <span class="note">*</span></div>
			<input type="password" name="newpass" id="new_pass" required>
			<div class="eye" id="eye2"><i class="far fa-eye "></i><i class="far fa-eye-slash slash"></i></div>
		</div>
		<div class="input-box">
			<div class="lable">Mật khẩu xác nhận <span class="note">*</span></div>
                        <input type="password" name="renewpass" id="comfirm_pass" required>
			<div class="eye" id="eye3"><i class="far fa-eye "></i><i class="far fa-eye-slash slash"></i></div>
		</div>
		<div class="footer">
			<button>Đổi</button>	
		</div>
		
	</form>
</div>
<script type="text/javascript">
	const old_pass = document.querySelector('#old_pass');
	const eye1 = document.querySelector('#eye1');
	const new_pass = document.querySelector('#new_pass');
	const eye2 = document.querySelector('#eye2');
	const comfirm_pass = document.querySelector('#comfirm_pass');
	const eye3 = document.querySelector('#eye3');
	eye1.addEventListener('click',()=>{
		eye1.getElementsByClassName('fa-eye')[0].classList.toggle('slash');
		eye1.getElementsByClassName('fa-eye-slash')[0].classList.toggle('slash');
		if(old_pass.getAttribute('type')=='password') old_pass.setAttribute('type','text');
		else old_pass.setAttribute('type','password');
	});
	eye2.addEventListener('click',()=>{
		eye2.getElementsByClassName('fa-eye')[0].classList.toggle('slash');
		eye2.getElementsByClassName('fa-eye-slash')[0].classList.toggle('slash');
		if(new_pass.getAttribute('type')=='password') new_pass.setAttribute('type','text');
		else new_pass.setAttribute('type','password');
	});
	eye3.addEventListener('click',()=>{
		eye3.getElementsByClassName('fa-eye')[0].classList.toggle('slash');
		eye3.getElementsByClassName('fa-eye-slash')[0].classList.toggle('slash');
		if(comfirm_pass.getAttribute('type')=='password')             comfirm_pass.setAttribute('type','text');
		else comfirm_pass.setAttribute('type','password');
	});

	function comfirm_password(){
		if(new_pass.value != comfirm_pass.value) {
			alert('Mật khẩu xác nhận không khớp!')
		} else return true;
		return false;
	}
</script>
</body>
</html>