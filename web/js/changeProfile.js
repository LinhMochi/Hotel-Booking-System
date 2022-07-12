/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function changeInfo() {
    sign = document.getElementById("changeInfo").innerHTML;
    birth = document.getElementById("birth").innerHTML;
    if (sign === "Chỉnh sửa") {
        document.getElementById("info-display").style.display = "none";
        document.getElementById("info-change").style.display = "block";
        document.getElementById("changeInfo").innerHTML = "Hủy";
    } else {
        document.getElementById("info-display").style.display = "block";
        document.getElementById("info-change").style.display = "none";
        document.getElementById("changeInfo").innerHTML = "Chỉnh sửa";
    }
    if (gender === "Nam") {
        document.getElementById("isMale").checked = true;
    } else if (gender === "Nữ") {
        document.getElementById("isFemale").checked = true;
    }
}

function changeUserName() {
    sign = document.getElementById("changeUser").innerHTML;
    if (sign === "Sửa tên tài khoản") {
        document.getElementById("username").style.display = "none";
        document.getElementById("user_change").style.display = "block";
        document.getElementById("changePass").style.display = "none";
        document.getElementById("changeUser").innerHTML = "Hủy";
    } else {
        document.getElementById("username").style.display = "block";
        document.getElementById("user_change").style.display = "none";
        document.getElementById("changePass").style.display = "inline-block";
        document.getElementById("changeUser").innerHTML = "Sửa tên tài khoản";
    }
}

function changePassword() {
    sign = document.getElementById("changePass").innerHTML;
    if (sign === "Thay đổi mật khẩu") {

        document.getElementById("pass_change").style.display = "inline-block";
        document.getElementById("changeUser").style.display = "none";
        document.getElementById("changePass").innerHTML = "Hủy";
    } else {

        document.getElementById("pass_change").style.display = "none";
        document.getElementById("changeUser").style.display = "inline-block";
        document.getElementById("changePass").innerHTML = "Thay đổi mật khẩu";
    }
}

function add(sign) {
    if (sign) {
        document.getElementById("add").style.display = "block";
    } else {
        document.getElementById("add").style.display = "none";
    }
}


