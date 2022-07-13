<%-- 
    Document   : hotel_search
    Created on : Jun 15, 2022, 12:10:39 PM
    Author     : pham quoc an
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>

            *{
                box-sizing: border-box;
                padding: 0;
                margin: 0;
            }
            body{
                margin:0;
            }
            i{
                margin-right: 30px;
            }
            a{
                padding: 0px 15px;
                border-right: 1px solid;
                color: black;
            }
            .post-header{
                background-image: url("images/hotelDetail-background.jpg");
                background-attachment: fixed;
                background-repeat: no-repeat;
                background-size:100%;
                background-position: center;
                padding:80px;
            }
            .nav,.search-input,.search-map,.search-right,.hotel-info{
                background-color: white;
            }
            input{
                width: 90%;
                padding: 5px;
                margin-top: 2px;
            }

            /*search box*/
            .info-input{
                width:80%;
                margin: auto;
                text-align:left;
            }
            input{
                width: 100%;
                margin-bottom: 25px;
            }
            .point{
                display: flex; 
                width: 100%; 
                height: 80px;
                border:1px solid;
                border-radius: 30px ; 
                align-items: center; 
                justify-content: center; 
                background-color: blue; 
                color: white; 
                font-family: Arial; 
                font-size: 30px;
                font-weight: bold;
            }
            .title{
                text-align: center; color: #F79B47;
                font-family: 'Inter';
                font-style: normal;
                font-weight: 600;
                font-size: 20px;
            }
            .extensions, .regulations{
                font-family: Arial;
            }
            span{
                font-size: 20px;
            }
            .service-list{
                margin: 0px 50px
            }
            .service{
                width: 80%;

            }
            .service-img img{
                width: 100%;
                border: 1px solid;
                border-radius: 20px;
                height: 200px;
            }
            .service-name{
                margin: 10px 0px;
                border: 1px solid;
                height: 100px;
                border-radius: 15px;
                padding-top: 20px;
            }
            button{
                border-color: #F79B47;
                border-radius: 20px;
                background-color: white;
                color:  #F79B47;
                width: 100px;
                padding: 7px 10px;
                margin: 10px;
            }
            .multi-item-carousel .carousel-inner > .item {
                transition: 500ms ease-in-out left;
            }
            .multi-item-carousel .carousel-inner .active.left {
                left: -33%;
            }
            .multi-item-carousel .carousel-inner .active.right {
                left: 33%;
            }
            .multi-item-carousel .carousel-inner .next {
                left: 33%;
            }
            .multi-item-carousel .carousel-inner .prev {
                left: -33%;
            }
            @media all and (transform-3d), (-webkit-transform-3d) {
                .multi-item-carousel .carousel-inner > .item {
                    transition: 500ms ease-in-out left;
                    transition: 500ms ease-in-out all;
                    -webkit-backface-visibility: visible;
                    backface-visibility: visible;
                    transform: none!important;
                }
            }
            .multi-item-carousel .carouse-control.left,
            .multi-item-carousel .carouse-control.right {
                background-image: none;
            }
            hr{
                border: 1px solid;
                margin: 30px 0px;
            }
            .checked{
                color: orange;
            }
            .container{
                width: 100%;
            }
            .item a{
                border: none;
            }
            .item img{
                margin: auto;
                border-radius: 30px;
                width: 100%;
                height:245px;

            }

            .item{
                padding-left: 60px;
            }
        </style>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        <div>
            <div>
                <!--header-->
                <div class="header" style="display: flex; justify-content: space-between;">
                    <!--logo-->
                    <div style="width: 10%; display: flex;align-items: center; justify-content: center">
                        <img src="https://scontent.fhan14-1.fna.fbcdn.net/v/t1.15752-9/284350891_774521380211160_7483915284289755930_n.png?_nc_cat=110&ccb=1-7&_nc_sid=ae9488&_nc_ohc=lHtUQna_-U0AX-ZUK9J&_nc_ht=scontent.fhan14-1.fna&oh=03_AVL6HXjzscdG0vXsLQKr2kyL7gkzD2eSNVwZzwIjJMYv7Q&oe=62CEDBF6" alt="logo" width="100" height="50">
                    </div>
                    <!--user avatar & notification-->
                    <div style="display: flex; width:20%; justify-content: flex-end; align-items: center">
                        <!--notification-->
                        <div><i class="fa fa-bell" aria-hidden="true"></i></div>
                        <!--booking-->
                        <div><i class="fa fa-book" aria-hidden="true"></i></div>
                        <!--hotels-->
                        <div><i class="fa fa-building" aria-hidden="true"></i></div>
                        <!--user avatar-->
                        <div>user avatar</div>
                    </div>
                </div>

                <div class="post-header">
                    <!--navigation bar-->
                    <div class="nav" style="text-align: center;width: 99%;margin: auto; border:1px solid; border-radius: 15px; padding: 10px 0px">
                        <div style="display: flex;justify-content: center;width: 30%; margin: auto;">
                            <a href="#">Thông tin</a>
                            <a href="#">Phòng và giá</a>
                            <a href="#">TIện ích</a>
                            <a href="#">Xung quanh</a>
                            <a href="#">Đánh giá</a> 
                        </div>
                    </div>



                    <!--search-->     
                    <div class="search" style="display: flex; width: 100%; margin-top: 20px">
                        <!--search left-->
                        <div class="search-left" style="border-radius: 20px; width: 30%;margin-left: 10px;">
                            <!--search box-->
                            <div class="search-input" style="border: 1px solid; border-radius: 20px; padding-bottom: 50px">
                                <div class="title" style="text-align: center; margin: 15px 0px 20px 0px">Bạn tìm kiếm</div>  
                                <form action="" method="POST">                  
                                    <div class="info-input">
                                        Nơi đến<br/>
                                        <input type="text"/><br/>
                                    </div>
                                    <div class="info-input">
                                        Ngày nhận phòng<br/>
                                        <input type="date"/><br/>
                                    </div>
                                    <div class="info-input">
                                        Ngày trả phòng<br/>
                                        <input type="date"/><br/>
                                    </div>
                                    <div class="info-input">
                                        Chi tiết phòng<br/>
                                        <input type="text"/><br/>
                                    </div>
                                    <div class="info-input">
                                        <input type="submit" value="Tìm kiếm"/><br/>
                                    </div>
                                </form>
                            </div>
                            <!--image-->
                            <div class="search-map" style="border: 10px solid;border-color: #F79B47; border-radius: 20px; margin-top: 20px">
                                <iframe style="border: 1px solid; border-radius: 20px" src="${hotel.map}" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                        </div>
                        <!--search right-->
                        <div class="search-right" style=" border: 1px solid; width:70%;border-radius: 20px; margin: 0px 0px 0px 30px">
                            <!--name & rating-->
                            <div style="display: flex; justify-content: space-between; padding:30px 30px 0px">
                                <!--name & stars-->
                                <div style="">
                                    <div class="title">${hotel.name}</div>
                                    <div>
                                        <c:forEach var = "i" begin = "1" end ="${hotel.noOfStar}">
                                            <span class="fa fa-star checked"></span>
                                        </c:forEach>
                                        <c:forEach  var = "i" begin = "1" end ="${5 - hotel.noOfStar}">
                                            <span class="fa fa-star "></span>
                                        </c:forEach>


                                    </div>
                                </div>
                                <!--rating-->
                                <div style="text-align: right;">
                                    <div class="point" >9.0</div>
                                    <div style="font-family: Arial;">number of ratings</div>
                                </div>
                            </div>
                            <div style="margin: 0px 0px 0px 30px">
                                <div>${hotel.hotelAdvance}<br/>
                                    ${hotel.address}
                                </div>
                                <div>
                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                    <i class="fa fa-share-alt" aria-hidden="true"></i>
                                </div>
                            </div>

                            <div style="display:flex; width:100%; justify-content: center; margin-bottom:  50px"><img style="border-radius: 20px; border: 1px solid;" src="https://s3.cloud.cmctelecom.vn/tinhte2/2019/08/4754966_cover_.jpg" alt="logo" width="90%" height="380px"></div>
                            <hr>
                            <!--img slideshow-->
                            <div style="">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="carousel slide multi-item-carousel" id="theCarousel">
                                                <div class="carousel-inner">
                                                    <div class="item active">
                                                        <div class="col-xs-4"><a href="#1"><img src="" class="img-responsive"></a></div>
                                                    </div>
                                                    <c:forEach  var="user" items="${gallery}" >
                                                        <div class="item">
                                                            <div class="col-xs-4"><a href="#1"><img src="${user.image}" class="img-responsive"></a></div>
                                                        </div>
                                                    </c:forEach>
                                                    <!--                                            <div class="item">
                                                                                                  <div class="col-xs-4"><a href="#1"><img src="https://source.unsplash.com/300x300/?fremantle,australia" class="img-responsive"></a></div>
                                                                                                </div>
                                                                                                <div class="item">
                                                                                                  <div class="col-xs-4"><a href="#1"><img src="https://source.unsplash.com/300x300/?west-australia" class="img-responsive"></a></div>
                                                                                                </div>
                                                                                                <div class="item">
                                                                                                  <div class="col-xs-4"><a href="#1"><img src="https://source.unsplash.com/300x300/?perth" class="img-responsive"></a></div>
                                                                                                </div>
                                                                                                <div class="item">
                                                                                                  <div class="col-xs-4"><a href="#1"><img src="https://source.unsplash.com/300x300/?quokka,perth" class="img-responsive" style="margin-left: 50px"></a></div>
                                                                                                </div>
                                                                                                <div class="item">
                                                                                                  <div class="col-xs-4"><a href="#1"><img src="https://source.unsplash.com/300x300/?margaretriver,australia" class="img-responsive"></a></div>
                                                                                                </div>-->
                                                    <!-- add  more items here -->
                                                    <!-- Example item start:  -->
                                                    <!--
                                                                                                <div class="item">
                                                                                                  <div class="col-xs-4"><a href="#1"><img src="https://source.unsplash.com/300x300/?perth,australia&r=7" class="img-responsive"></a></div>
                                                                                                </div>-->

                                                    <!--  Example item end -->
                                                </div>
                                                <a class="left carousel-control" href="#theCarousel" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i></a>
                                                <a class="right carousel-control" href="#theCarousel" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr>
                        </div>
                    </div>


                    <!--hotel info-->
                    <div class="hotel-info" style="border:1px solid; margin-top: 30px; border-radius: 30px; padding: 40px 20px">
                        <!--Our hotel-->
                        <div class="title" style="margin-bottom: 20px">Khách sạn của chúng tôi</div>
                        <div>
                            <p>Tọa lạc tại thành phố Hà Nội, cách Bảo tàng Dân tộc học 
                                Việt Nam 1,7 km, VNAHOMES APARTHOTEL có dịch vụ nhận phòng/
                                trả phòng cấp tốc, phòng nghỉ không hút thuốc, sảnh khách 
                                chung, WiFi miễn phí trong toàn bộ khuôn viên và khu vườn. 
                                Chỗ nghỉ này nằm trong bán kính khoảng 2,5 km từ Hồ Tây, 2,9
                                km từ Đền Quán Thánh và 3 km từ Chùa Một Cột. Chỗ nghỉ cung 
                                cấp dịch vụ lễ tân 24 giờ và phòng giữ hành lý cho khách.
                            </p>
                            <p>
                                Phòng nghỉ tại VNAHOMES APARTHOTEL có máy điều hòa, bàn
                                làm việc, ấm đun nước, lò vi sóng, tủ lạnh, két an toàn, TV 
                                màn hình phẳng và phòng tắm riêng với vòi sen. Trong phòng 
                                được trang bị ga trải giường và khăn tắm.</p>

                            <p>Khách lưu trú tại chỗ nghỉ có thể tham gia các 
                                hoạt động trong và xung quanh thành phố Hà Nội, như đi xe 
                                đạp.</p>

                            <p>VNAHOMES APARTHOTEL nằm cách Lăng Chủ tịch Hồ Chí 
                                Minh 3 km và trung tâm thương mại Vincom Center Nguyễn Chí 
                                Thanh 3,1 km. Sân bay gần nhất là sân bay quốc tế Nội Bài, 
                                nằm trong bán kính 18 km từ khách sạn, và chỗ nghỉ cung cấp 
                                dịch vụ đưa đón sân bay với một khoản phụ phí.
                            </p>
                            <p>Khách sạn của chúng tôi</p>
                            <p>Phòng view lên núi - Phục vụ 24/7 - Có xe đưa đón trong khuôn viên khách sạn</p>

                        </div>
                        <!--Our room-->
                        <div>
                            <div class="title">
                                Phòng của chúng tôi
                            </div>
                            <hr style="border: 2px solid #F79B47;">
                            <!--slideshow-->
                            <div>
                                <div class="owl-one owl-carousel owl-theme">
                                    <div class="item" style="display:block">
                                        <div style="display:flex; justify-content: space-between">
                                            <div style="width:48%"><img src="https://images.unsplash.com/photo-1625244724120-1fd1d34d00f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG90ZWxzfGVufDB8fDB8fA%3D%3D&w=1000&q=80" height="100"></div>
                                            <div style="border:1px solid; width:48%">
                                                <p>Phòng đơn tiêu chuẩn</p>
                                                <i class="fa fa-bed" aria-hidden="true"> 1 giường đơn</i>
                                                <p>Diện tích phòng:25 m2</p>
                                                <p>Loại phòng: Phòng khép kín</p>
                                                <a href="#">Tiện ích khác</a>
                                                <p>Giá: 350.000 VNĐ</p>
                                                <form>
                                                    Đặt <input style="width:50px" type="text" name="NumOfRoom"/> Phòng
                                                    <input type="submit" value="Đặt phòng">
                                                </form>

                                            </div>
                                        </div>
                                        <div style="display:flex; justify-content: space-between">
                                            <div style="width:48%"><img src="https://images.unsplash.com/photo-1625244724120-1fd1d34d00f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG90ZWxzfGVufDB8fDB8fA%3D%3D&w=1000&q=80" height="100"></div>
                                            <div style="border:1px solid; width:48%">
                                                <p>Phòng đơn tiêu chuẩn</p>
                                                <i class="fa fa-bed" aria-hidden="true"> 1 giường đơn</i>
                                                <p>Diện tích phòng:25 m2</p>
                                                <p>Loại phòng: Phòng khép kín</p>
                                                <a href="#">Tiện ích khác</a>
                                                <p>Giá: 350.000 VNĐ</p>
                                                <form>
                                                    Đặt <input style="width:50px" type="text" name="NumOfRoom"/> Phòng
                                                    <input type="submit" value="Đặt phòng">
                                                </form>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="item" style="display:block">
                                        <div style="display:flex; justify-content: space-between">
                                            <div style="width:48%"><img src="https://images.unsplash.com/photo-1625244724120-1fd1d34d00f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG90ZWxzfGVufDB8fDB8fA%3D%3D&w=1000&q=80" height="100"></div>
                                            <div style="border:1px solid; width:48%">
                                                <p>Phòng đơn tiêu chuẩn</p>
                                                <i class="fa fa-bed" aria-hidden="true"> 1 giường đơn</i>
                                                <p>Diện tích phòng:25 m2</p>
                                                <p>Loại phòng: Phòng khép kín</p>
                                                <a href="#">Tiện ích khác</a>
                                                <p>Giá: 350.000 VNĐ</p>
                                                <form>
                                                    Đặt <input style="width:50px" type="text" name="NumOfRoom"/> Phòng
                                                    <input type="submit" value="Đặt phòng">
                                                </form>
                                            </div>
                                        </div>
                                        <div style="display:flex; justify-content: space-between">
                                            <div style="width:48%"><img src="https://images.unsplash.com/photo-1625244724120-1fd1d34d00f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG90ZWxzfGVufDB8fDB8fA%3D%3D&w=1000&q=80" height="100"></div>
                                            <div style="border:1px solid; width:48%">
                                                <p>Phòng đơn tiêu chuẩn</p>
                                                <i class="fa fa-bed" aria-hidden="true"> 1 giường đơn</i>
                                                <p>Diện tích phòng:25 m2</p>
                                                <p>Loại phòng: Phòng khép kín</p>
                                                <a href="#">Tiện ích khác</a>
                                                <p>Giá: 350.000 VNĐ</p>
                                                <form>
                                                    Đặt <input style="width:50px" type="text" name="NumOfRoom"/> Phòng
                                                    <input type="submit" value="Đặt phòng">
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="item" style="display:block">
                                        <div style="display:flex; justify-content: space-between">
                                            <div style="width:48%"><img src="https://images.unsplash.com/photo-1625244724120-1fd1d34d00f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG90ZWxzfGVufDB8fDB8fA%3D%3D&w=1000&q=80" height="100"></div>
                                            <div style="border:1px solid; width:48%">
                                                <p>Phòng đơn tiêu chuẩn</p>
                                                <i class="fa fa-bed" aria-hidden="true"> 1 giường đơn</i>
                                                <p>Diện tích phòng:25 m2</p>
                                                <p>Loại phòng: Phòng khép kín</p>
                                                <a href="#">Tiện ích khác</a>
                                                <p>Giá: 350.000 VNĐ</p>
                                                <form>
                                                    Đặt <input style="width:50px" type="text" name="NumOfRoom"/> Phòng
                                                    <input type="submit" value="Đặt phòng">
                                                </form>
                                            </div>
                                        </div>
                                        <div style="display:flex; justify-content: space-between">
                                            <div style="width:48%"><img src="https://images.unsplash.com/photo-1625244724120-1fd1d34d00f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG90ZWxzfGVufDB8fDB8fA%3D%3D&w=1000&q=80" height="100"></div>
                                            <div style="border:1px solid; width:48%">
                                                <p>Phòng đơn tiêu chuẩn</p>
                                                <i class="fa fa-bed" aria-hidden="true"> 1 giường đơn</i>
                                                <p>Diện tích phòng:25 m2</p>
                                                <p>Loại phòng: Phòng khép kín</p>
                                                <a href="#">Tiện ích khác</a>
                                                <p>Giá: 350.000 VNĐ</p>
                                                <form>
                                                    Đặt <input style="width:50px" type="text" name="NumOfRoom"/> Phòng
                                                    <input type="submit" value="Đặt phòng">
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!--
                                    <div class="item">
                                        <img src="https://cdn.britannica.com/96/115096-050-5AFDAF5D/Bellagio-Hotel-Casino-Las-Vegas.jpg" height="100">
                                    </div>
                                    <div class="item">
                                        <img src="https://cf.bstatic.com/xdata/images/hotel/max1280x900/159964531.jpg?k=98c31e4eb1d030ea9fadac5eb6c94c5ebe416d8295dd4d2a0ca2a0b3593306b0&o=&hp=1" height="100">
                                    </div>
                                    <div class="item">
                                        <img src="https://go2joy.s3-ap-southeast-1.amazonaws.com/hotel/10983/3973_1646280838_622040862038b.jpg" height="100">
                                    </div>
                                    <div class="item">
                                        <img src="https://q-xx.bstatic.com/xdata/images/hotel/max1024x768/256012439.jpg?k=ccc98f20816dab66ecf132d1db3c77780f066ec00ea9680fe50fb56173315d93&o=" height="100">
                                    </div>-->

                                </div>
                            </div>
                            <hr style="border: 2px solid #F79B47;">
                        </div>
                        <!--Our extensions-->
                        <div class="extensions">
                            <div style="text-align: center">
                                <!--extension header-->
                                <div style="color: #CF6D0C; margin:20px">Các tiện ích của chúng tôi</div>
                                <div style="margin-bottom:15px">Sự thoải mái của bạn luôn được chúng tôi đặt lên hàng 
                                    đầu -- All for your confort!</div>
                                <!--extension list-->
                                <div>
                                    <!--upper part-->
                                    <div style="display:flex;text-align:left; justify-content: space-evenly; margin-bottom: 20px">
                                        <div><span>An ninh</span>
                                            <div>
                                                <ul>
                                                    <li>Thiết bị báo cháy</li>
                                                    <li>CCTV 24/7</li>
                                                    <li>Báo động an ninh</li>
                                                    <li>Bảo vệ 24/7</li>
                                                    <li>Két an toàn</li>
                                                </ul>
                                            </div>                    
                                        </div>
                                        <div>
                                            <div><span>Đồ ăn & Đồ uống</span>
                                                <div>
                                                    <ul>
                                                        <li>Nhà hàng</li>
                                                        <li>Quầy mini bar</li>
                                                    </ul>
                                                </div>                    
                                            </div>
                                        </div>
                                        <div>
                                            <div><span>Vị trí</span>
                                                <div>
                                                    <ul>
                                                        <li>Gần trung tâm</li>
                                                        <li>Gần nhiều di tích,<br/>
                                                            danh lam, thắng cảnh</li>
                                                    </ul>
                                                </div>                    
                                            </div>
                                        </div>
                                    </div>
                                    <!--lower part-->
                                    <div style="display:flex;width: 100%; text-align:left;justify-content: space-evenly">
                                        <div>
                                            <div><span>Phòng</span>
                                                <ul>
                                                    <li>TV, Tủ lạnh</li>
                                                    <li>Đồ dùng cá nhân</li>
                                                    <li>Ga trải giường</li>
                                                    <li>Có ban công</li>
                                                </ul>                    
                                            </div>
                                        </div>
                                        <div>
                                            <div><span>Dịch vụ</span>
                                                <div>
                                                    <ul>
                                                        <li>Phục vụ 24/7</li>
                                                        <li>Gọi đồ 24/7</li>
                                                        <li>Wifi free</li>
                                                        <li>Phòng hội trường <br/>
                                                            rộng rãi</li>
                                                    </ul>
                                                </div>                    
                                            </div>
                                        </div>
                                        <div>
                                            <div style="visibility: hidden">
                                                <ul>
                                                    <li>Thiết bị báo cháy</li>
                                                    <li>CCTV 24/7</li>
                                                    <li>Báo động an ninh</li>
                                                    <li>Bảo vệ 24/7</li>
                                                    <li>Két an toàn</li>
                                                </ul>     
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Booking regulations-->
                        <div class="regulations">
                            <div style="text-align: center">
                                <!--extension header-->
                                <div style="color: #CF6D0C; margin:50px 20px 10px 20px">Các quy đinh đặt phòng</div>
                                <div style="margin-bottom:15px">Tất cả quy định mà chúng tôi đề ra đều nhàm mục đích bảo vệ lơi ích của khách hàng :)</div>
                            </div>
                            <div style="display:flex; justify-content: center; margin-top: 30px">
                                • Những đơn đặt phòng không được đảm bảo sẽ bị huỷ vào 12h ngày hôm sau nếu khách hàng không thực hiện việc check-in.
                                <br/>• Giờ check-in: sau 12h trưa
                                <br/>• Không ở quá 3 người theo đơn vị phòng
                            </div>
                        </div>
                        <!--Our services-->
                        <div style="text-align: center">
                            <!--services-header-->
                            <div style="color: #CF6D0C; margin:50px 20px 10px 20px">Các quy đinh đặt phòng</div>
                            <div style="margin-bottom:15px">Danh sách các dịch vụ mà quý khách có thể chọn thêm khi đặt phòng ơr khách sạn của chúng tôi</div>
                            <!--service list-->
                            <!--                            <div class="service-list" style="display:flex; justify-content: space-around">
                                                            <div class="service">
                                                                <div class="service-img"><img src="../img/hotelDetail-background.jpg" alt="logo" width="100" height="50"></div>
                                                                <div class="service-name">
                                                                    <div>Bể bơi 4 mùa<br/></div>
                                                                    <button type="button">Add</button>
                                                                </div>
                                                            </div>
                                                            <div class="service">
                                                                <div class="service-img"><img src="../img/7.png" alt="logo" width="100" height="50"></div>
                                                                <div class="service-name">
                                                                    <div>Bể bơi 4 mùa<br/></div>
                                                                    <button type="button">Add</button>
                                                                </div>
                                                            </div>
                                                            <div class="service">
                                                                <div class="service-img"><img src="../img/6.jpeg" alt="logo" width="100" height="50"></div>
                                                                <div class="service-name">
                                                                    <div>Bể bơi 4 mùa<br/></div>
                                                                    <button type="button">Add</button>
                                                                </div>
                                                            </div>
                                                            <div class="service">
                                                                <div class="service-img"><img src="../img/logo.png" alt="logo" width="100" height="50"></div>
                                                                <div class="service-name">
                                                                    <div>Bể bơi 4 mùa<br/></div>
                                                                    <button type="button">Add</button>
                                                                </div>-->
                            <div class="owl-two owl-carousel owl-theme">
                                <div class="item">
                                    <div class="service">
                                        <div class="service-img"><img src="../img/hotelDetail-background.jpg" alt="logo" width="100" height="50"></div>
                                        <div class="service-name">
                                            <div>Bể bơi 4 mùa<br/></div>
                                            <button type="button">Add</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="service">
                                        <div class="service-img"><img src="../img/hotelDetail-background.jpg" alt="logo" width="100" height="50"></div>
                                        <div class="service-name">
                                            <div>Bể bơi 4 mùa<br/></div>
                                            <button type="button">Add</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="service">
                                        <div class="service-img"><img src="../img/hotelDetail-background.jpg" alt="logo" width="100" height="50"></div>
                                        <div class="service-name">
                                            <div>Bể bơi 4 mùa<br/></div>
                                            <button type="button">Add</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="service">
                                        <div class="service-img"><img src="../img/hotelDetail-background.jpg" alt="logo" width="100" height="50"></div>
                                        <div class="service-name">
                                            <div>Bể bơi 4 mùa<br/></div>
                                            <button type="button">Add</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="service">
                                        <div class="service-img"><img src="../img/hotelDetail-background.jpg" alt="logo" width="100" height="50"></div>
                                        <div class="service-name">
                                            <div>Bể bơi 4 mùa<br/></div>
                                            <button type="button">Add</button>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>    
    </div>
</div>
<script>
    // Instantiate the Bootstrap carousel
    $('.multi-item-carousel').carousel({
        interval: false
    });

    // for every slide in carousel, copy the next slide's item in the slide.
    // Do the same for the next, next item.
    $('.multi-item-carousel .item').each(function () {
        var next = $(this).next();
        if (!next.length) {
            next = $(this).siblings(':first');
        }
        next.children(':first-child').clone().appendTo($(this));

        if (next.next().length > 0) {
            next.next().children(':first-child').clone().appendTo($(this));
        } else {
            $(this).siblings(':first').children(':first-child').clone().appendTo($(this));
        }
    });
</script>   
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
    $('.owl-one').owlCarousel({
        loop: true,
        margin: 10,
        nav: false,
        autoplay: true,
        autoplayTimeout: 2500,
        stagePadding: 0,
        dots: false,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 2
            },
            1000: {
                items: 3
            }
        }
    })
    $('.owl-two').owlCarousel({
        loop: true,
        margin: 10,
        nav: false,
        autoplay: false,
        autoplayTimeout: 1500,
        stagePadding: 0,
        dots: false,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 2
            },
            1000: {
                items: 4
            }
        }
    })
</script>
</body>
</html>
