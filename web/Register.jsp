<%-- 
    Document   : register
    Created on : 08-Jun-2022, 22:39:48
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Đăng ký tài khoản</title>
	<link rel="stylesheet" href="css/register-style.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
    </head>
    <body>
         <div class="container">
	<h2>Đăng ký</h2>
        <form action="register" method="post">
		<div class="progess-bar">
			<span class="step form4">4</span>
			<span class="step form3">3</span>
			<span class="step form2">2</span>
			<div class="progess"></div>
			<span class="step form1 instep">1</span>
		</div>
		<div class="register-box">
			<div class="box tocenter" id="form1">
				<div class="header">
					Tài khoản mới
				</div>
				<div class="input-box">
					<div class="lable">Email<span class="note">*</span></div>
					<input type="email" name="email" title="Vui lòng nhập đúng với định dạng @gmail.com" 
					pattern="[a-zA-Z][a-zA-Z0-9-_]{3,21}@gmail\.com"		required>
				</div>
				<div class="input-box">
					<div class="lable">Mật khẩu<span class="note">*</span>     <small>(4-31 ký tự chữ và số)</small></div>
					<input type="password" name="password" id="pass" pattern="[a-zA-Z0-9]{3,}" title="Mật khẩu ít nhất 4 ký tụ và chỉ gồm chữ và số" required>
				</div>
				<div class="input-box">
					<div class="lable">Xác nhận mật khẩu<span class="note">*</span></div>
					<input type="password" id="comfirmpass" name="repassword" pattern="[a-zA-Z0-9]{3,}" title="Mật khẩu ít nhất 4 ký tụ và chỉ gồm chữ và số" required>
				</div>
				<div class="nav nav1"><div class="btn" onclick="next1()">Tiếp</div></div>		
			</div>
			<div class="box toright" id="form2">
				<div class="header">
					Thông tin cá nhân
				</div>
				<div class="input-box">
					<div class="lable">Họ và tên<span class="note">*</span></div>
                                        <input type="text" name="fullName" pattern="[\w\W]{3,51}" title="Họ, tên chứa 3-51 ký tự chỉ chứa số, ký tự và phím cách" required>
				</div>
				<div class="input-box">
					<div class="lable">Số điện thoại<span class="note"></span></div>
					<input type="text" name="phone" pattern="0[3-9][0-9]{8}" title="Số điện thoại gồm 10 chữ số và có đầu là 03-09">
				</div>
				
				<div class="nav nav2"><div class="btn" onclick="back1()">Quay lại</div><div class="btn" onclick="next2()">Tiếp</div></div>		
			</div>
			<div class="box toright" id="form3">
				<div class="header">
					Thông tin cơ bản
				</div>
				<div class="input-box">
					<div class="lable">Giới tính</div>
					<select name="gender">
						<option value="0">Giới tính của bạn là ?</option>
						<option value="1">Nam</option>
						<option value="2">Nữ</option>
						<option value="3">Không xác định</option>
					</select>
				</div>
				<div class="input-box">
					<div class="lable">Ngày sinh</div>
					<input type="date" name="dob" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01]-(0[1-9]|1[012])-[0-9]{4})" title="Ngày sinh có định dạng ngày/tháng/năm">
				</div>
				<div class="input-box">
					<div class="lable">Địa chỉ<span class="note"></span></div>
					<input type="text" name="address" >
				</div>
				<div class="input-box">
					<div class="lable">Thành phố<span class="note">*</span></div>
					<select name="city" id="" required>
						<option value="Hà Nội">Hà Nội</option>
						<option value="Hà Nam">Hà Nam</option>
						<option value="Hà Giang">Hà Giang</option>
						<option value="Hoà Bình">Hoà Bình</option>
						<option value=" ">Khác</option>
					</select>
				</div>
				<div class="nav nav2">
					<div class="btn" onclick="back2()">Quay lại</div>
					<div class="btn" onclick="next3()">Tiếp</div></div>		
			</div>
			<div class="box toright" id="form4">
				<div class="header">
					Ảnh đại diện
				</div>
				<div class="image-box">
					<img src="https://lh3.googleusercontent.com/fife/AAWUweXamSMRcSgvdd20EJSJ3aguzy8GWA4OIpuvScjOU9XbprpdHB2AvFP2BA86xcl_I9llPxmNAS6GlctuDGZmgr3Z3uTzZ8t26u05dbQ5TVA8HjdGtpO2XQuvf8trEDzKv2GP4XITs9bVLhlPy2HmSUcqn3C62ZUCV4WL0gTOH9QbX8zc7eDqnFiydDO03Zy6_xeXFybfVnqpI20wG1j25PDQhCGZTF55jNtaGYUqdjaKgwmufH1v-o1kquUwxa9SlCGm-zDzYf2BUVqEZIOdKv7z38BDbUErQNn8Np-gW9UIBn2OmXKO8-nU0loYUNT7yRlt1f4fpT4dIBg017fQPnXVJkc2yqhJBjqah2rL7pW2Gsa4i7o9IDWccs3zWGznVjYWnwdzcBhQLpOthp2Rk3Ov4XzGmTwiXPb-UCOlXI2vFxDn6kSOpAuJfLcZreaJyhYsKAxDHLdl-atZNnEccGJlYuzNwMsQE6o-E-imvxROeafY2ZfJQZ4RFpwPFRtZ-8M1tbOsKaaCm08F6cn4C9IcX0qOkPngB4_UwaVPc4YdVMxic6_xQwAFjTm9Zul9kJixzhpefSVgGmHavfJ40oVijrnOkuPlg1wtjAJragGpWtdd3_aGxPcB7t08ZjJdPt9nC9_pKD3lPmb-5XJQrM2GOI-6DnsiCYZJG8s35Zneb3tJEzWOU7hXzxYS3JU10CrB7zBdbUeSFa0BUQaZFLk03xT6OMJkZcl_sl9MUYNRXlbSvuWV9Y32cD1lh9E6_sraDhvwLDLhZ4lYRHPjGelPdJH8R44dXQnHTwTtidy6lonMcX7T5jPgYX5Wq-VOlBME67OXhOo_MImKVh39RueFiOOB-cd1-I47D-12Z8FxSPAFfcrpsHnN0WNKuPxKnelqPcyPg5oFZiibyxoYnVX_1shtYoU-GYS4r2Mm5zGaHkSORwlI0g-A822qpOSHGwc_PrZkeY5Ag6faiB1ucitFE61dDUnyjDsSTsu6_nB98xHUWkIJwnnqyq3zV5WzldM-LRHxmeeEBezVZebe8-RTiSSC50rLB9J3fmsxc6oI4IqKmBOAKKlrnHV238YaEbKxo5DBqvtov8zRl8jDYUZmts1HGh6CnsZvFBplZ8hQmgDmzMfiGGB3IdxMbCXMPyj6EpAydTR-83lkgZPllzj-lSmQQ5FJEGGkTl6RR5Xf2MrEb2zdRdl2ori7JWVJISv6FtP_boPP1wBoc66JWtybasemBMmSOabnCylHFmOgsIioOZi2oNo4y_pEx77KGeA52xsZuLVBT6W0W4uhY_JeoS_cuC9vGycvmQ7PXDPrhp1m9wwG7KcLWb7p-JaUHDarvmx-zuYovsLlBmM=w1366-h634" 
                                        class="avatar" alt="user">
					<div class="change"><i class="fas fa-camera"></i></div>
				</div>
				<div class="input-box url-box hidden">
					<div class="lable">Nhập link ảnh</div>
					<input type="url" id="url-avatar" name="url-image">
					<div class="mark">
						<span class="v">&#10003;</span>
						<span class="x">&#10006;</span>	
					</div>	
				</div>
				<div class="nav nav2"><div class="btn" onclick="back3()">Quay lại</div>
				<button>Tạo tài khoản</button></div>		
			</div>	
		</div>

	</form>
</div>
<div class="error-box">
    <div class="error-message active <c:if test="${empty message}"> hidden</c:if>">
		<div class="close-error-message">&#128473;</div>
		<p>${message}</p>
    </div>
</div>
<script type="text/javascript">
	const camera = document.querySelector('.change');
	const vmark = document.querySelector('.v');
	const xmark = document.querySelector('.x');
	const url_box = document.querySelector('.url-box');
	const url_avatar = document.querySelector('#url-avatar');
	const avatar = document.querySelector('.avatar');
	const oldimage = avatar.getAttribute('src');

	camera.addEventListener('click',()=>{
		url_box.classList.toggle('hidden');
	});

	url_avatar.addEventListener('change',()=>{
		avatar.setAttribute('src',url_avatar.value);
	});

	vmark.addEventListener('click',()=>{
		avatar.setAttribute('src',url_avatar.value);
		step4.innerHTML='&#10003';
		url_box.classList.toggle('hidden');
	});

	xmark.addEventListener('click',()=>{
		avatar.setAttribute('src',oldimage);
		url_box.classList.toggle('hidden');
	});

	const step1 = document.querySelector('.form1');
	const step2 = document.querySelector('.form2');
	const step3 = document.querySelector('.form3');
	const step4 = document.querySelector('.form4');
	const progess = document.querySelector('.progess');
	const form1 = document.querySelector('#form1');
	const form2 = document.querySelector('#form2');
	const form3 = document.querySelector('#form3');
	const form4 = document.querySelector('#form4');

	document.querySelectorAll("input").forEach(inputField=>{
		if(!inputField.required){
			inputField.addEventListener('change',()=>{
				if(inputField.value==='') 
					inputField.removeAttribute('required');
				else inputField.setAttribute('required','');
			});	
		}
		
	});

	function next1(){
	// change to next step check all required field haved been fill and comfirm pass is correctly with password above.
		let result = checkinput(form1);
		if(result!==true) {
			createMessage(result); 
			return false;
		}
		if(!comfirm_pass()){
			createMessage('Comfirm password is incorrect!');
			return false;
		}
		// toggle class in box to assign already style in css file
		form1.classList.toggle('toleft');
		form2.classList.toggle('toright');
		form2.classList.toggle('tocenter');
		step1.innerHTML='&#10003';
		step1.classList.toggle('instep');
		step2.classList.toggle('instep');
		progess.style.width='85px';
	}

	function next2(){
		let result = checkinput(form2);
		if((result!==true)) {
			createMessage(result); 
			return false;
		}
		form2.classList.toggle('toleft');
		form3.classList.toggle('toright');
		form3.classList.toggle('tocenter');
		step2.innerHTML='&#10003';
		step2.classList.toggle('instep');
		step3.classList.toggle('instep');
		progess.style.width='170px';
	}
	function next3(){
                let result = checkinput(form3);
		if((result!==true)) {
			createMessage(result); 
			return false;
		}
		form4.classList.toggle('toright');
		form3.classList.toggle('tocenter');
		form3.classList.toggle('toleft');
		step3.innerHTML='&#10003';
		step3.classList.toggle('instep');
		step4.classList.toggle('instep');
		progess.style.width='255px';
	}
	function back1(){
		form2.classList.toggle('toright');
		form1.classList.toggle('toleft');
		form1.classList.toggle('tocenter');
		step1.innerHTML=1;
		step2.classList.toggle('instep');
		step1.classList.toggle('instep');
		progess.style.width='0';
	}
	function back2(){
		form3.classList.toggle('toright');
		form2.classList.toggle('toleft');
		form2.classList.toggle('tocenter');
		step2.innerHTML=2;
		step3.classList.toggle('instep');
		step2.classList.toggle('instep');
		progess.style.width='85px';
	}
	function back3(){
		form4.classList.toggle('toright');
		form3.classList.toggle('toleft');
		form3.classList.toggle('tocenter');
		step3.innerHTML='3';
		step3.classList.toggle('instep');
		step4.classList.toggle('instep');
		progess.style.width='170px';
	}
	function checkinput(e){
		let listInput = e.querySelectorAll('input');
		for (let i = 0; i<listInput.length; i++) {
			if(!(listInput[i].required)) {
				return true;
			}
			else if (listInput[i].value=='') { 
				return 'Vui lòng điền hết các trường có dấu *';
			}
			else if(!(listInput[i].checkValidity())) {// checkValidate(return true if valid)
				return listInput[i].getAttribute('title');
			} 
		}
		return true;
	}
	function comfirm_pass(){
		let pass = document.querySelector('#pass');
		let comfirmpass= document.querySelector('#comfirmpass');
		// get password and comfirmpassword to check synch.
		if(pass.value === comfirmpass.value) return true;
		else return false;
	}

	// error message js
	// get div.error_box de noi them nhieu mess
	let error_box = document.querySelector('.error-box');
	let message = error_box.querySelector('.error-message');
	let close_error =message.querySelector('.close-error-message');
	close_error.addEventListener('click',()=>{
		message.classList.toggle('hidden');
	});
	function createMessage(s){
		let message_clone = message.cloneNode(true);
		message_clone.querySelector('p').innerHTML=s;
		if(message_clone.classList.length===3) 
			message_clone.classList.toggle('hidden');
		message_clone.classList.add('clone_mess');
		setClose(message_clone);
		let error_messages = error_box.querySelectorAll('.clone_mess');
		error_messages.forEach(c=>{if(c.offsetWidth===0) c.classList.add('absolutely');});
		error_box.appendChild(message_clone);
	}
	function setClose(m){
		let error_messages = error_box.querySelectorAll('.error-message');
		m.querySelector('.close-error-message').addEventListener('click',()=>{m.classList.toggle('hidden');});
	}
	step1.addEventListener('click',e=>createMessage('step 1'));
	

</script>
    </body>
</html>
