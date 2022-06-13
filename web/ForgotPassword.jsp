<%-- 
    Document   : forgotpass
    Created on : 12-Jun-2022, 08:03:57
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Forgot password</title>
	<link rel="stylesheet" href="css/forgot-style.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<div class="reset-box box 1">
	<h3>Đặt lại mật khẩu</h3>
	<p>Để bảo đảm an toàn cho tài khoản mời bạn nhập đúng email đã đăng ký để nhận mật khẩu khôi phục</p>
	<form action="">
		<div class="input-box">
			<div class="lable">Email khôi phục</div>
			<input type="email" id="emailfield" placeholder="abc@gmail.com" pattern="[a-zA-Z][a-zA-Z0-9]{4,}@gmail.com" title="Nhập đúng định dạng email @gmail.com trước @ gồm 5 ký tự chữ và số" required>
		</div>
		<button type="button" class="submit">Gửi mật khẩu</button>
	</form>
</div>
<div class="reset-box box hidden">
	<h3>Nhập mã xác nhận</h3>
	<p>Vui lòng kiểm tra email và nhập mã xác nhận để thực hiện việc lấy lại mật khẩu</p>
	<form action="" class="flex-column">
		<div class="input-box">
			<div class="lable">Mã xác nhận</div>
                        <input type="text" class="otp" name="otp" id="otpfield" required pattern="[0-9]{5}" title="OTP là một chuỗi 5 chữ số" placeholder="01234">
		</div>
		<div class="footer flex-center flex-between">
			<button class="back sendback" type="button">Gửi lại mã</button>
			<button type="button" class="submit">Xác nhận</button>
		</div>
	</form>
</div>
<div class="reset-box box hidden">
	<h3>Đặt lại mật khẩu</h3>
	<form action="" class="flex-column">
		<div class="input-box">
			<div class="lable">Mật khẩu</div>
			<input type="password" class="password" id="password" name="password" required pattern="[a-zA-Z0-9]{4,}" title="Mật khẩu ít nhất 4 ký tụ gồm chữ và số">
			<div class="eye" id="eye1">
				<i class="fa fa-eye-slash hidden" aria-hidden="true"></i>
				<i class="fa fa-eye" aria-hidden="true"></i>
			</div>
		</div>
		<div class="input-box">
			<div class="lable">Xác nhận mật khẩu</div>
			<input type="password" class="repassword" name="repassword" required pattern="[a-zA-Z0-9]{4,}" title="Mật khẩu ít nhất 4 ký tụ gồm chữ và số">
			<div class="eye" id="eye1">
				<i class="fa fa-eye-slash hidden" aria-hidden="true"></i>
				<i class="fa fa-eye" aria-hidden="true"></i>
			</div>
		</div>
		<div class="footer flex-center flex-between">
			<button type="button" class="submit">Đổi mật khẩu</button>
		</div>
	</form>
</div>
<div class="error-box">
		<div class="error-message active hidden">
			<div class="close-error-message">&#128473;</div>
			<p>Mật khẩu sai</p>
		</div>
</div>
    ${email}
<div class="preloading flex-center">
	<div class="loading"></div>
</div>
<script type="text/javascript">
	// get error mess, addevent to x toggle class hidden to this box and hidden it by style have been initialized in style file
	const error_message = document.querySelector('.error-message');
	const close_error =document.querySelector('.close-error-message');
	close_error.addEventListener('click',()=>{
		error_message.classList.toggle('hidden');
	});

	
	let form_box = document.querySelectorAll('.reset-box');
	for(let i = 0; i< form_box.length;i++){
		form_box[i].querySelectorAll('button').forEach(form_button=>{
			if(form_button.classList[0]=="submit"){
				form_button.addEventListener('click',()=>{
					if(!isInput(form_box[i])) return;
                                        calltoserver(i);
//					console.log(calltoserver(i));
//					form_box[i].classList.toggle('hidden');
//					form_box[i+(i<2?1:0)].classList.toggle('hidden');
				});
			}
		});
	}
        function nextForm(j){
            let form_box = document.querySelectorAll('.reset-box');
            for(let i=0;i<form_box.length;i++){
                if(i===j) {
                    form_box[i].classList.toggle('hidden');
                    form_box[i+(i<2?1:0)].classList.toggle('hidden');
                    break;
                }
            }
            
        }
        
	function isInput(formNo){
		let check = 0;
		formNo.querySelectorAll('input').forEach(inputField=>{
			if (inputField.value==='') { 
				getMessage("Vui lòng điền hết ô còn trống");
				check++;
			}
			else if(!inputField.checkValidity()) {
				getMessage(inputField.getAttribute('title'));
				check++;
			}
		});
		if(check===0) return true;
		else return false;
	}
        
        document.querySelector('.sendback').addEventListener('click',()=>{
            calltoserver(0)
            nextForm(0);
        });
// XMLHttp send request and rend json 
	
	function calltoserver(i){
//		document.querySelector('.preloading').classList.toggle('active');   
		if( i === 0){
                    console.log('req=get&email='+document.querySelector('#emailfield').value);
                    sendRequest('forgotpassword','req=get&email='+document.querySelector('#emailfield').value,getOtp);
 	// sendRequest('url',document.querySelector('#emailfield').value,getOtp(res));
		}
		if ( i=== 1 ) {
                    sendRequest('forgotpassword','req=check&otp='+document.querySelector('#otpfield').value,checkOtp);
	// sendRequest('url',document.querySelector('#otpfield').value,checkOtp(res));
		}
		if ( i === 2) {
		    if(!confirmpassword()) return;
                    else sendRequest('forgotpassword','req=reset&password='+document.querySelector('#password').value,newpass);
		}
	}

	function getOtp(param){
                console.log(param);
//		let res = JSON.parse(param);
		if(param === 'sended'){
			getMessage('Mã otp đã được gửi đến email của bạn');
                        nextForm(0);
			return true;
		}
		else {
			getMessage('Email không tồn tại ');
			return false;
		}
	}

	function checkOtp(param){
		console.log(param);
		if (param === 'fail') {
			getMessage('Mã otp không chính xác');
			
		} else if(param === 'pass'){
                    nextForm(1);
                }
	}
        
        function newpass(){
            getMessage('Cập nhật mật khẩu thành công');
        }

	function confirmpassword(){
		let pass = document.querySelector('.password');
		let repass = document.querySelector('.repassword');
		if(pass.value==repass.value) return true;
		else {
			getMessage('Mật khẩu xác nhận và mật khẩu không giống nhau');
			return false;
		}
	}

	function sendRequest(url,param,cfunction){
		const xmlhttp = new XMLHttpRequest();
                console.log(this.readyState);
		xmlhttp.onload = function(){
                    cfunction(this.responseText);
                    console.log(this.readyState);
		};
		xmlhttp.open("POST",url,true);
                xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xmlhttp.send(param);
	};


//

        let reset_box = document.querySelectorAll(".reset-box")[2];
        reset_box.querySelectorAll('.input-box').forEach(input_box=>{
            input_box.querySelector('.eye').addEventListener('click',()=>{
                let input = input_box.querySelector('input');
                if(input.type==password) input.type=text;
                else input.type=password;
            input_box.querySelectorAll('.fa').toggle('hidden');
        });
            
        });
	
	function getMessage(message){
		let error_box = document.querySelector('.error-box');
		let clone = error_message.cloneNode(true);
		if (clone.classList.length >= 3) { 
			clone.classList.remove('hidden');
			clone.classList.remove('absolutely');
		}
		clone.querySelector('p').innerHTML = message;
		addClose(clone);
		error_box.querySelectorAll('.error-message').forEach(err=>{
			if(err.offsetWidth==0) err.classList.add('absolutely');
		});
		error_box.appendChild(clone);
	}

	function addClose(mess){
		mess.querySelector('.close-error-message').addEventListener('click',()=>{
			mess.classList.toggle('hidden');
		});
	}
</script>
</body>
</html>
