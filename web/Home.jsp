<%-- 
    Document   : Home
    Created on : 23-Jun-2022, 08:58:39
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- fontawe some cnd-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!-- owlCarouse CND -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!-- owlCarouse CND -->
        <!-- jQueryCND -->
        <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
        <!-- jQueryCND -->
        <link href="css/nav-top.css" rel="stylesheet" type="text/css"/>
        <link href="css/datepicker-style.css" rel="stylesheet" type="text/css"/>
        <link href="css/layout-style.css" rel="stylesheet" type="text/css"/>
        <link href="css/home-styles.css" rel="stylesheet" type="text/css"/>    
    </head>
    <body>
        <header class="header nav-top">
            <jsp:include page="component/nav-top.jsp"/>
        </header>
       <header class="buffer hidden">
        </header>
        <jsp:include page="component/message.jsp"/>
        <script src="js/message.js" type="text/javascript"></script>
        <script src="js/nav-top.js" type="text/javascript"></script>
        <script type="text/javascript">
            let previous = 0;
            window.addEventListener('scroll', function () {
                let header = document.querySelector('.nav-top');
                header.classList.toggle('sticky', previous > window.scrollY);
                // console.log(previous>window.scrollY);
                previous = window.scrollY;
            });

            let dropcart = document.querySelector('.drop-cart');
            let footer = dropcart.querySelector(".footer");
            let toggle = dropcart.querySelector(".toggle");
            toggle.addEventListener("click", () => {
                footer.classList.toggle("active");
                toggle.classList.toggle("active");
            });
        </script>
        <div class="search-wrapper">
            <h1>Make memory</h1>
            <div class="h3">Discover the places where you fun and enjoy a lots</div>
            <form action="searchresult" method="POST">
                <div class="search-box search-box-x">
                    <div class="input-box flex-center">
                        <input type="text" name="search" placeholder="Bạn muốn đi đâu?" required >
                    </div>	
                    <div class="date-select-box flex-center">
                        <div class="input-date-box">
                            <input type="date" class="arrival-date" name="arrival" >
                        </div>
                        <div class="input-date-box">
                            <input type="date" class="department-date" name="department" >
                        </div>
                        <div class="pick-box">
                            <span class="arrival"></span>
                            <span class="department"></span>
                        </div>
                        <jsp:include page="component/date-picker.jsp"/>
                    </div>
                    <div class="select-box drop-box">
                        <div class="drop-title flex-around">
                            <div class="label adult-show ">
                                <span class="number">1</span><span class="lable">Người lớn</span>
                            </div>

                            <div class="label child-show">
                                <span class="number">0</span><span class="lable">Trẻ em</span>
                            </div>

                            <div class="label room-show">
                                <span class="number">1</span><span class="lable">Phòng</span>
                            </div>
                        </div>
                        <input class="adult" name="adult" value="1">
                        <input class="child" name="child" value="0">
                        <input class="room" name="room" value="1">
                        <div class="drop-items flex-between flex-column drop hidden">
                            <div class="drop-item flex-between ">
                                <div class="adult-change grid-3">
                                    <span class="btn flex-center des">-</span>
                                    <span class="number">1</span>
                                    <span class="btn flex-center inc">+</span>
                                </div>
                                <div class="lable">Người lớn</div>
                            </div>
                            <div class="drop-item flex-between">
                                <div class="child-change grid-3">
                                    <span class="btn flex-center  des">-</span>
                                    <span class="number">0</span>
                                    <span class="btn flex-center  inc">+</span>
                                </div>
                                <div class="lable">Trẻ em</div>
                            </div>
                            <div class="drop-item flex-between">
                                <div class="room-change grid-3">
                                    <span class="btn flex-center  des">-</span>
                                    <span class="number">1</span>
                                    <span class="btn flex-center  inc">+</span>
                                </div>
                                <div class="lable">Phòng</div>
                            </div>
                        </div>		
                    </div>
                    <div class="footer flex-center">
                        <button class="btn btn-large flex-center">
                            Tìm
                        </button>
                    </div>
                </div>
            </form>
        </div>
        <script src="js/pick-date.js"></script>
        <!--console.log(document.querySelector('.arrival-date').value);-->
        <script type="text/javascript">
        </script>
        <script src="js/search-box.js" type="text/javascript"></script>
        <div class="explore-wrapper border-wrapper border1">
            <h5>Khám phá</h5>
            <h3>Đến với các thành phố nổi tiếng với nhiều điểm đến đang chờ đợi bạn</h3>
            <div class="contain flex-center">
                <div class="owl-carousel owl-theme">
                    <c:forEach var="city" items="${sessionScope.topCities}">
                        <div class="item">
                            <div class="vertical-card city-card">
                                <div class="item-image">
                                    <img src="${city.image}" alt="${city.name}">
                                </div>
                                <div class="card-content flex-center">
                                    <div class="item-info flex-center flex-column">
                                        <div class="item-name">
                                            ${city.name}
                                        </div>
                                        <div class="item-decription">
                                            <p>${city.noHotel} khách sạn</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>                            
                </div>
            </div>
        </div>
        <!-- <script src="js/message.js"></script> -->
        <!-- js slider CND -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js" integrity="sha512-gY25nC63ddE0LcLPhxUJGFxa2GoIyA5FLym4UJqHDEMHjp8RET6Zn/SHo1sltt3WuVtqfyxECP38/daUc/WVEA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <!-- js slider CND -->
        <script type="text/javascript">
            $('.owl-carousel').owlCarousel({
                // loop:true,
                margin: 0,
                nav: true,
                dots: false,
                navText: ['<i class="fa fa-arrow-left" aria-hidden="true"></i>', '<i class="fa fa-arrow-right" aria-hidden="true"></i>'],
                responsive: {
                    0: {
                        items: 1
                    },
                    786: {
                        items: 3
                    },
                    1000: {
                        items: 4
                    }
                }
            });
        </script>

        <div class="hotel-type-wrapper border-wrapper border2">
            <h5>Các loại khách sạn</h5>
            <h3>Chúng tôi cung cấp nhiều loại khách sạn đạt chuẩn ...</h3>
            <div class="container flex-around">
                <div class="owl-carousel owl-theme">
                    <c:forEach var ="hc" items="${sessionScope.topHCs}">
                        <div class="item">
                            <div class="vertical-cicle-card">
                                <div class="item-image">
                                    <img src="${hc.image}" alt="${hc.category}"/>
                                </div>
                                <div class="card-content flex-center">
                                    <div class="item-info flex-center flex-column">
                                        <div class="item-name">${hc.category}</div>
                                        <div class="item-decription"><p>${hc.noHotel} khách sạn</p></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js" integrity="sha512-gY25nC63ddE0LcLPhxUJGFxa2GoIyA5FLym4UJqHDEMHjp8RET6Zn/SHo1sltt3WuVtqfyxECP38/daUc/WVEA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <!--js slider CND--> 
        <script type="text/javascript">
            $('.owl-carousel').owlCarousel({
                // loop:true,
                margin: 0,
                nav: true,
                dots: false,
                navText: ['<i class="fa fa-arrow-left" aria-hidden="true"></i>', '<i class="fa fa-arrow-right" aria-hidden="true"></i>'],
                responsive: {
                    0: {
                        items: 1
                    },
                    786: {
                        items: 2
                    },
                    1000: {
                        items: 4
                    }
                }
            });
        </script>
        <%----%>
        <div class="suggest-hotel-wrapper">
            <h5>Góc đề cử :V</h5>
            <h3>Một số khách sạn có lượt yêu thích và điểm đánh giá của khách cao</h3>
            <div class="container">
                <div class="owl-carousel owl-theme">
                    <c:forEach var="hs" varStatus="status" items="${sessionScope.suggestHotels}">
                        <div class="item flex-center">
                            <div class="card-ex grid-3">
                                <div class="card-image"><img src="${hs.image}" alt="${hs.name}"></div>
                                <div class="card-contain">
                                    <div class="card-header">
                                        <h2 class="hotel-name">${hs.name}</h2>
                                        <div class="add-box">
                                            <div class="hotel-start"><c:forEach begin="1" end="${hs.noOfStar}"><i class="fa fa-star" aria-hidden="true"></i></c:forEach></div>
                                            <div class="hotel-address"><i class="fa fa-map-marker" aria-hidden="true"></i>${hs.address}</div>
                                        </div>
                                    </div>
                                    <div class="card-infor">
                                        <ul class="hotel-sd">
                                            <%--<li>${hs.hotelAdvance}</li>--%>
                                            <c:if test="${sessionScope.cList.getSize(hs.id)==2||sessionScope.cList.getSize(hs.id)==1}">                       
                                                <c:forEach var="hc" items="${sessionScope.cList.getHotelConvenient(hs.id)}" varStatus="i">
                                                    <li>${hc.convenient}</li>
                                                    </c:forEach>                                                                                                                                                                                                            
                                                </c:if>
                                                <c:if test="${sessionScope.cList.getSize(hs.id) > 2}">                                                                    
                                                    <c:forEach var="hc" items="${sessionScope.cList.getHotelConvenient(hs.id)}" begin="0" end="0">
                                                    <li>${hc.convenient}</li>
                                                    </c:forEach>                                                                            
                                                <li class="show-more">+${sessionScope.cList.getSize(hs.id)-1}</li>
                                                <div class = "show-dd">
                                                    <ol>
                                                        <c:forEach var="hc" items="${sessionScope.cList.getHotelConvenient(hs.id)}" begin="1" end="4">
                                                            <li>${hc.convenient}</li>
                                                            </c:forEach>                                             
                                                    </ol>                                                                  
                                                </div>
                                            </c:if>
                                        </ul>
                                    </div>
                                    <div class="add-infor">Giảm giá mùa du lịch</div>
                                    <div class="add-infor">Miễn phí đặt&huỷ phòng</div>					
                                </div>
                                <div class="card-footer flex-center flex-column">
                                    <div class="flex-center flex-column like-card like">
                                        <i class="fa fa-heart-o" aria-hidden="true"></i>
                                        <div class="no-like">${hs.noLike}<span class="lable">lượt thích</span></div>
                                    </div>
                                    <div class="card-score flex-center">
                                        <div class="left-side">
                                            <div class="rate">${hs.getrate()}</div>
                                            <div class="no-rate">${hs.noRate} đánh giá</div>
                                        </div>
                                        <div class="score right-side flex-center">${hs.avgScore}</div>
                                    </div>
                                    <div class="card-price flex-end flex-column"><%----%>
                                        <c:set var="pL" value="${sessionScope.pList.get(status.index)}"/>
                                        <c:if test="${pL.discount > 0}">
                                            <div class="title">Giá ưu đãi</div>
                                            <div class="unit-price"><fmt:formatNumber type="number" pattern="###,###" value="${pL.price}"/></div>
                                            <div class="current-price"><span class="price"><fmt:formatNumber type="number" pattern="###,###" value="${pL.price*(1-pL.discount)}"/></span>
                                                <span class="unit lable">đ</span></div>
                                            </c:if>
                                            <c:if test="${pL.discount == 0}">
                                            <div class="title">Giá thấp nhất</div>
                                            <div class="current-price"><span class="price"><fmt:formatNumber type="number" pattern="###,###" value="${pL.price}"/></span>
                                                <span class="unit lable">đ</span></div>
                                            </c:if>

                                    </div>
                                    <div class="btn pick-room"><a href="http://localhost:8080/Hotel-Booking-System/hoteldetail?hotelId=${hs.id}&model=view">Xem phòng</a></div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- js slider CND -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js" integrity="sha512-gY25nC63ddE0LcLPhxUJGFxa2GoIyA5FLym4UJqHDEMHjp8RET6Zn/SHo1sltt3WuVtqfyxECP38/daUc/WVEA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <!-- js slider CND -->
        <script type="text/javascript">
            $('.owl-carousel').owlCarousel({
                // loop:true,
                margin: 20,
                nav: true,
                dots: false,
                navText: ['<i class="fa fa-arrow-left" aria-hidden="true"></i>', '<i class="fa fa-arrow-right" aria-hidden="true"></i>'],
                responsive: {
                    0: {
                        items: 1
                    },
                    786: {
                        items: 1
                    },
                    1000: {
                        items: 1
                    }
                }
            });
        </script>
        <footer class="footer">
            this is footer${sessionScope.message}
        </footer>
    </body>
</html>
