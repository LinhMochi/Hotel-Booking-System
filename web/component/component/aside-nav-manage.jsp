<%-- 
    Document   : aside-nav-manage
    Created on : 21-Jul-2022, 06:32:33
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/layout-style.css" rel="stylesheet" type="text/css"/>
        <link href="../css/aside-nav.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <div class="aside-navigation">-->
		<div class="avatar-box">
			<div class="image-box">
                            <img src=<%----%>"${sessionScope.user.avatar}" alt="${sessionScope.user.fullName}">
			</div>
			<div class="name">
				${sessionScope.user.fullName}
			</div>
			<div class="link">
                            <a href="home">Về home</a>
			</div>
                        <div class="link">
				<a href="userprofile">Thông tin cá nhân</a>
			</div>
			<div class="link">
				<a href="../Hotel-Booking-System/logout">Đăng xuất</a>
			</div>
		</div>
		<a href="managerdashboard"><div>Dashboard</a></div>
		<div class="slide-nav">
			<div>Thông tin chung</div>
			<div class="sub-nav">
                            <div><a href="#">Hotel profile</a></div>
                            <div><a href="#">Tiện ích khách sạn</a></div>
                            
                            <div><a href="galleryManager">Bộ sưu tập</a></div>
			</div>
		</div>
		<div class="slide-nav">
			<div>Quản lý đơn hàng</div>
			<div class="sub-nav">
			<div><a href="#">Khách hàng</a></div>
			<div><a href="#">Đơn đặt phòng</a></div>
			<div><a href="#">Đánh giá của khách</a></div>
			</div>
		</div>
		<div class="slide-nav">
			<div>Phòng và dịch vụ</div>
			<div class="sub-nav">
			<div><a href="RoomManager">Phòng</a></div>
			<div><a href="#">Dịch vụ</a></div>
			<div><a href="#">Khuyến mãi</a></div>
			</div>
		</div>
	<!--</div>-->
<!--                <script src="../js/aside-nav.js">
                    
                </script>
    </body>
</html>-->
