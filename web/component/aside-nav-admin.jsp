<%-- 
    Document   : aside-nav-admin1
    Created on : Jul 24, 2022, 2:50:53 PM
    Author     : pham quoc an
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
        <div><a href="#">Danh sách khách sạn</a></div>
        <div><a href="#">Danh sách người dùng</a></div>
        <div><a href="#">Chương trình khuyến mãi</a></div>
    </div>
</div>
<div class="slide-nav">
    <div>Quản lý thể loại</div>
    <div class="sub-nav">
        <div><a href="#">Loại khách sạn</a></div>
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
