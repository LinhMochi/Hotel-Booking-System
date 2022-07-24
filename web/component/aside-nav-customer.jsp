<%-- 
    Document   : aside-nav-customer
    Created on : 21-Jul-2022, 12:33:31
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>-->
<div class="avatar-box">
    <div class="image-box">
        <img src=<%----%>"${sessionScope.user.avatar}" alt="${sessionScope.user.fullName}">
    </div>
    <div class="name">
        ${sessionScope.user.fullName}
    </div>
    <div class="link">
        <a href="#">Về home</a>
    </div>
    <div class="link">
        <a href="#">Đăng xuất</a>
    </div>
</div>
<a href="#"><div>Dashboard</a></div>
<div class="slide-nav">
    <div>Thông tin chung</div>
    <div class="sub-nav">
        <div><a href="#">User profile</a></div>
        <div><a href="#">Đổi mật khẩu</a></div>
        <div><a href="#">My faverist hotel</a></div>
    </div>
</div>
<div class="slide-nav">
    <div>Đơn đặt phòng</div>
    <div class="sub-nav">
        <div><a href="#">Đơn đặt phòng của tôi</a></div>
        <div><a href="#">Lịch sử đặt phòng</a></div>
        <div><a href="#">Lịch sử đánh giá</a></div>
    </div>
</div>
<!--</div>-->
<!--    </body>
</html>-->
