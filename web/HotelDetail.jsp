<%-- 
    Document   : HotelDetail
    Created on : 14-Jul-2022, 11:02:58
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Hotel Detail</title>
        <!-- fontawe some cnd-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" type="text/css" href="css/nav-top.css">
        <link href="css/datepicker-style.css" rel="stylesheet" type="text/css"/>
        <link href="css/search-box-style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="css/layout-style.css">
        <link rel="stylesheet" type="text/css" href="css/hoteldetail-style.css">
    </head>
    <body>
        <header id="top" class="header nav-top">
            <jsp:include page="component/nav-top.jsp"/>
        </header>

        <script src="js/nav-top.js" type="text/javascript"></script>
        <script type="text/javascript">
            let dropcart = document.querySelector('.drop-cart');
            let footer = dropcart.querySelector(".footer");
            let toggle = dropcart.querySelector(".toggle");
            toggle.addEventListener("click", () => {
                footer.classList.toggle("active");
                toggle.classList.toggle("active");
            });
        </script>
        <div class="search-wrapper flex-center">
            <c:set scope="request" value="hoteldetail" var="p"/>
            <jsp:include page="component/search-box.jsp">
                <jsp:param name="p" value="hoteldetail"/>
            </jsp:include>
            </div>
            <script src="js/pick-date.js"></script>
            <script src="js/search-box.js"></script>
            <div class="quick-link flex-center">
                <a href="#gallery"><span>Thông tin</span> </a>
                <a href="#about"><span>Giới thiệu</span></a>
                <a href="#room"><span>Phòng</span></a>
                <a href="#service"><span>Dịch vụ</span></a>
                <a href="#convenient"><span>Tiện ích</span></a>
                <a href="#suggest-place"><span>Xung quanh</span></a>
                <a href="#top"><span>Về đầu trang</span></a>
                <span class="pop pop-fb">Đánh giá</span>
            </div>
            <script type="text/javascript">
            let previous = 0;
            window.addEventListener('scroll', function () {
                let search = document.querySelector('.search-wrapper');
                let nav = document.querySelector('.quick-link');
                search.classList.toggle('sticky-1', previous > window.scrollY);
                nav.classList.toggle('sticky-2', previous > window.scrollY);
                // console.log(previous>window.scrollY);
                previous = window.scrollY;
            });
            </script>
            <jsp:include page="component/message.jsp"></jsp:include>
            <div id="gallery" class="gallery">
            <c:if test="${not empty sessionScope.homegallery}">
            <c:forEach var="pic" begin="0" end="6">
                <div class="gallery-item gallery-${pic+1}">
                    <img src="${sessionScope.homegallery.get(pic).image}" alt="${sessionScope.homegallery.get(pic).title}">
                    <c:if test = "${sessionScope.homegallery.size()>7&&pic==6}">
                        <div class="number-gallery flex-center">+${sessionScope.homegallery.size() - 7} ảnh</div>
                    </c:if>
                </div>
            </c:forEach></c:if>
        </div>
        
        <div class="pop-up-g hidden">
            <div class="pop-up-bg"></div>
            <div class="gallery-pop-up">
                <header class="flex-between">
                    <h2>Bộ sưu tập</h2>
                    <i class="fa fa-times" aria-hidden="true"></i>
                </header>
                <div class="empty-cart flex-center <c:if test="${empty sessionScope.homegallery}">hidden</c:if>  ">
                    <div>
                        <i class="fa fa-archive" aria-hidden="true"></i>
                    </div>
                    <div>Bộ sưu tập trống</div>
                </div>
        <c:if test="${not empty sessionScope.homegallery}">
                <div class="gallery-container">
                    <c:forEach var="pic"  varStatus="s" items="${sessionScope.homegallery}">
                        <div class="gallery-item">
                            <img src="${pic.image}" alt="${pic.title}">
                            <div class="gallery-footer flex-between">
                                <div class="gallery-title">${pic.title}</div>
                                <div class="gallery-count">${s.index+1} / ${sessionScope.homegallery.size()}</div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
        </c:if>        
            </div >
        </div>
        <script type="text/javascript">
            let popupg = document.querySelector('.pop-up-g');
            let gallery = document.querySelector('.gallery');

            gallery.querySelectorAll('.gallery-item').forEach(i => {
                i.addEventListener('click', () => {
                    popupg.classList.toggle('hidden');
                });
            });


            let gallerypopup = document.querySelector('.gallery-pop-up');
            gallerypopup.querySelectorAll('.gallery-item').forEach((li) => {
                let random = Math.random();
                if (random > 0.85)
                    li.classList.add('span-3');
                else if (random > 0.3)
                    li.classList.add('span-2');
            });
            gallerypopup.querySelector('.fa-times').addEventListener('click', () => popupg.classList.toggle('hidden'));
            document.querySelector('.pop-up-bg').addEventListener('click', () => {
                popupg.classList.toggle('hidden');
            });

        </script>

        <div class="pop-up-f hidden">
            <div class="pop-up-bf">
            </div>
            <div class="feedback-popup">
                <header class="flex-between" >
                    <h2>Đánh giá</h2>
                    <i class="fa fa-times flex-center" aria-hidden="true"></i>
                    <div class="header">
                        <div class="common">${sessionScope.hotel.getrate()}</div>
                        <div class="noOfFeedback">${sessionScope.hotel.noRate} lượt đánh giá</div>
                        <div class="score flex-center">${sessionScope.hotel.avgScore}</div>
                    </div>
                </header>
                <%-- --%>  <%----%> 
                <div class="feedback-container">
                    <c:forEach var="hf" items="${sessionScope.feedbacks}" >
                        <div class="feedback-wrapper">
                            <div class="feedback-item">

                                <div class="user-base-infor flex-center flex-column">

                                    <div class="avatar-box">
                                        <img src="${hf.image}" alt="avatar">
                                    </div>

                                    <div class="add-infor">
                                        <div>${hf.name}</div>
                                        <div>${hf.getAdult()} người lớn<c:if test="${hf.getChild() != 0}">- ${hf.getChild()} trẻ nhỏ</c:if></div>
                                        <div>${hf.getNoRoom()} phòng</div>
                                        <div>${hf.parseTime()}</div>
                                    </div>

                                </div>

                                <div class="feedback-infor">
                                    ${hf.detail}
                                </div>
                                <div class="score-rate flex-center flex-column">
                                    <div class="score flex-center">${hf.score}</div>
                                    <div class="rate">${hf.getrate()}</div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <%--Pagin--%> 
                    <div class="pagin">
                        <c:if test="${page>1}"><a href="http://localhost:8080/Hotel-Booking-System/hoteldetail?page=${page-1}&filter=pagin" class="btn">Pre</a></c:if>
                        <c:forEach begin="1" end="${endpage}" var="p">
                            <a href="http://localhost:8080/Hotel-Booking-System/hoteldetail?page=${p}&filter=pagin" class="btn <c:if test="${p==page}">current-page</c:if>">${p}</a>
                        </c:forEach>
                        <c:if test="${page<endpage}"><a href="http://localhost:8080/Hotel-Booking-System/hoteldetail?page=${page+1}&filter=pagin" class="btn">Next</a></c:if>
                        </div>
                    </div>    
                </div>
            </div>
            <script type="text/javascript">
                let popupf = document.querySelector('.pop-up-f');
                popupf.querySelector('.pop-up-bf').addEventListener('click', () => {
                    popupf.classList.toggle('hidden');
                });
                popupf.querySelector('.fa-times').addEventListener('click', () => {
                    popupf.classList.toggle('hidden');
                });
                document.querySelector('.pop-fb').addEventListener('click', () => {
                    popupf.classList.toggle('hidden');
                    console.log('click');
                });

                // show and hidden reply

                let feedbackcontainer = document.querySelector('.feedback-container');

                feedbackcontainer.querySelectorAll('.feedback-wrapper').forEach((feedback) => {

                    let reply = feedback.querySelector('.reply-box');
                    if (reply !== null) {
                        let show = feedback.querySelector('.reply-show');
                        let hidden = feedback.querySelector('.reply-hidden');

                        show.addEventListener('click', () => {
                            reply.classList.toggle('hidden');
                            show.classList.toggle('hidden');
                            hidden.classList.toggle('hidden');
                        });
                        hidden.addEventListener('click', () => {
                            reply.classList.toggle('hidden');
                            show.classList.toggle('hidden');
                            hidden.classList.toggle('hidden');
                        });
                    }
                });
            </script>

            
        <c:set var="hotel" value="${sessionScope.hotel}"/>

        <div id="about" class="about">
            <div class="base-infor left-aside">
                <h1 class="hotel-name">
                    ${hotel.name}
                </h1>
                <div class="noOfStar">
                    <c:forEach begin="1" end="${hotel.noOfStar}">
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </c:forEach>
                </div>
                <div class="hotel-address">
                    <i class="fa fa-map-marker" aria-hidden="true"></i><span>${hotel.address}</span>
                </div>
                <div class="hotel-description">
                    <p>${h.description}</p>
                    <p>${h.policies}</p>
                </div>
                <div class="hotel-advance">
                    ${hotel.hotelAdvance}
                </div>
            </div>
            <div class="left-aside-2">
                <h2>Các tiện ích nổi bật</h2>
                <div class="rated-convenience">
                    <c:forEach items="${sessionScope.ratedConvenience}" var="rc">
                        <li>${rc.convenient}</li>
                        </c:forEach>
                </div>
            </div>

            <div class="right-aside-1 add-infor-hotel">
                <div class="like">
                    <div class="like-btn like flex-center">
                        <i class="fa fa-heart-o" aria-hidden="true"></i>
                    </div>
                    <div class="noLike">${hotel.noLike} lượt thích</div>	
                </div>
                <div class="rate">
                    <div>${hotel.getrate()}</div>
                    <div>${hotel.noRate} lượt đánh giá</div>
                    <div class="score flex-center">${hotel.avgScore}</div>
                </div>	
            </div>
            <div class="right-aside-2">
                <h2>Trên bản đồ</h2>
                <div class="iframe flex-center">
                    ${hotel.map} 
                </div> 
            </div>
        </div>

        <div id="room" class="room-wrapper">
            <h3>Phòng của khách sạn</h3>           
            <div class="room-wrapper-container flex-center flex-column">
                <c:set var="homepromotion" value="${sessionScope.promotion}"/>

                <c:forEach var="room" varStatus="status" items="${sessionScope.availableRoom}">
                    <div class="card-ex grid-3">
                        <div class="card-image"><img src="${room.image}" alt="${room.name}"></div>
                        <div class="card-contain">
                            <div class="card-header">
                                <h2 class="room-name">${room.name}</h2>
                                <div class="add-box">
                                    <div class="hotel-address"></i>${room.bed}</div>                                 
                                    <div class="hotel-address"></i>${room.maxAdult} người lớn <c:if test="${room.maxChild != 0}">${room.maxChild} trẻ nhỏ</c:if></div>                        
                                </div>
                            </div>
                            <div class="card-infor">
                                <ul class="room-sd">
                                    <li>${room.area}</li>                                    
                                    <li>${room.description}</li>
                                </ul>
                            </div>
                            <c:if test="${not empty homepromotion.getPromotion(room.promotionId)}"> 
                                <div class="add-infor">${homepromotion.getPromotion(room.promotionId).getPromotion()}</div>
                            </c:if>  
                            <c:if test="${room.quantity==1}">
                                <div class="add-infor">Chỉ còn 1 phòng loại này</div>
                            </c:if>
                            <div class="add-infor">Miễn phí đặt&huỷ phòng</div>				
                        </div>


                        <div class="card-footer flex-center flex-column">

                            <div class="card-price flex-end flex-column">
                                <c:if test="${room.promotionId > 0}">
                                    <c:set var="roomP" value="${homepromotion.getPromotion(room.promotionId)}"/>
                                    <div class="title">Giá ưu đãi</div>
                                    <div class="unit-price"><fmt:formatNumber type="number" pattern="###,###" value="${room.price}"/></div>
                                    <div class="current-price"><span class="price">
                                            <fmt:formatNumber type="number" pattern="###,###" value="${room.price*(1-roomP.discount)}"/></span>
                                        <span class="unit lable">đ/đêm</span>
                                    </div>
                                </c:if>
                                <c:if test="${room.promotionId == 0}">
                                    <div class="title">Giá</div>
                                    <div class="current-price"><span class="price"><fmt:formatNumber type="number" pattern="###,###" value="${room.price}"/></span>
                                        <span class="unit lable">đ/đêm</span></div>
                                    </c:if>
                            </div>
                            <div>
                                <div class="btn pick-room">Thêm vào giỏ</div>
                                <div class="btn pick-room">Đặt ngay</div>  
                            </div>


                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>
                
        <div id="service" class="service-wrapper">
            <h3>Dịch vụ kèm theo</h3>
            <div class="service-container">
                <c:forEach items="${sessionScope.availableService}" var="service">
                    <div class="service-item">
                        <div class="service-name">${service.name}</div>
                        <div class="quantity">
                            <div class="label">Số lượng</div>
                            <div class="setbox g-3-center">
                                <div class="btn des flex-center">
                                    -
                                </div>
                                <div class="quan">
                                    <input type="number" name="quantity" value="0">
                                </div>
                                <div class="btn inc flex-center">
                                    +
                                </div>
                            </div>
                        </div>
                        <div class="card-price">
                            <div class="label">Giá</div>
                            <div class="current-price"><fmt:formatNumber type="number" pattern="###,###" value="${service.price}"/><span class="unit">${service.unit}</span></div>

                        </div>
                        <div class="btn add-cart">Thêm vào giỏ</div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <script src="js/message.js">
                    
        </script>
        <script type="text/javascript">
            let service_list = document.querySelector('.service-wrapper .service-container');
            if (service_list !== null) {
                service_list.querySelectorAll('.service-item').forEach((service_item) => {
                    let des = service_item.querySelector('.btn.des');
                    let inc = service_item.querySelector('.btn.inc');
                    const quan = service_item.querySelector('.quan input');
                    let add = service_item.querySelector('.add-cart');

                    des.addEventListener('click', () => {
                        if (quan.value > 1) {
                            quan.value = quan.value - 1;
                        } else {
                            console.log('cant des');
                        }

                    });

                    inc.addEventListener('click', () => {
                        quan.value++;
                    });

                    add.addEventListener('click', () => {
                        let newForm = document.createElement("form");
                        newForm.classList.toggle("temp_form");
                        newForm.method = "POST";
                        newForm.action = "#?id=" + 1 + "&quantity=" + 1;
                        service_item.appendChild(newForm);

                        // console.log(document.querySelector('form.temp_form'));
                        newForm.submit();
                    });
                });
            }
        </script>

        <c:set var="ic" value="-1"/>
        <div id="convenient" class="convenient-wrapper">
            <h2>Tiện ích của chúng tôi</h2>
            <div class="convenient-contain">
                <c:forEach items="${sessionScope.convenience}" var="con" varStatus="i">
                    <c:if test="${con.categoryId!=ic}">
                        <c:set var="ic" value="${con.categoryId}"/>
                        <div class="convenient-item">
                            <div class="category">${con.category}</div>
                            <div class="ul">
                            </c:if>
                            <div class="li">${con.convenient}</div>

                            <c:if test="${con.categoryId != sessionScope.convenience.get(i.last?i.index:(i.index+1)).categoryId|| i.last}">
                            </div>
                        </div>
                    </c:if>

                </c:forEach>

            </div>
        </div>
        <c:set var="isp" value="-1"/>
        <div id="suggest-place" class="suggest-places-wrapper">
            <h2>Xung quanh khách sạn</h2>
            <div class="suggest-place-contain">
                <c:forEach items="${sessionScope.hotelsp}" var="sgp" varStatus="i">
                    <c:if test="${sgp.category!=isp}">
                        <c:set var="isp" value="${sgp.category}"/>
                        <div class="suggest-place">
                            <div class="category">${sgp.placeCategory}</div>
                            <div class="ul">
                            </c:if>
                            <div class="li flex-between"><span>${sgp.place}</span><span>${sgp.distance} km</span>
                        </div>
                            <c:if test="${sgp.category != sessionScope.hotelsp.get(i.last?i.index:(i.index+1)).category|| i.last}">
                            </div>
                        </div>
                    </c:if>                 
                </c:forEach>                   
            </div>
        </div>
        <div class="footer-bottom"></div>
    </body>
</html>
