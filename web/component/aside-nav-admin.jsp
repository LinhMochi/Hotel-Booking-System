<%-- 
    Document   : aside-nav-admin
    Created on : 21-Jul-2022, 06:33:18
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
        <a href="#">Về home</a>
    </div>
    <div class="link">
        <a href="../Hotel-Booking-System/logout">Đăng xuất</a>
    </div>
</div>
<a href="#"><div>Dashboard</a></div>
<div class="slide-nav">
    <div>Quản lý thông tin</div>
    <div class="sub-nav">
        <div><a href="ListCityHotelController">Danh sách khách sạn</a></div>
        <div><a href="#">Danh sách người dùng</a></div>
        <div><a href="#">Chương trình khuyến mãi</a></div>
        <div><a href="AdminRoom">Danh sách các phòng</a></div>
        <div><a href="CityListController">Danh sách Thành Phố</a></div>
        <div><a href="SuggestPlace">Danh sách Địa điểm đề cử</a></div>
        
    </div>
</div>
<div class="slide-nav">
    <div>Quản lý thể loại</div>
    <div class="sub-nav">
        <div><a href="ManagerHomeCategory">Loại khách sạn</a></div>
        <div><a href="suggestPlaceCategoryManager">Loại địa điểm đề cử</a></div>
        <div><a href="#">Loại tiện ích</a></div>
        <div><a href="serviceCategoryManager">Loại dịch vụ</a></div>
    </div>
</div>

<!--</div>-->



<!--                <script src="../js/aside-nav.js">
                    
                </script>
    </body>
</html>-->