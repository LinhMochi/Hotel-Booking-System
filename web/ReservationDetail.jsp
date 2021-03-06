<%-- 
    Document   : ReservationDetail
    Created on : 18-Jul-2022, 07:24:23
    Author     : Linh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reservation Detail</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" type="text/css" href="css/nav-top.css">
        <link href="css/datepicker-style.css" rel="stylesheet" type="text/css"/>
        <link href="css/search-box-style.css" rel="stylesheet" type="text/css"/> 
        <link rel="stylesheet" type="text/css" href="css/layout-style.css">
        <link rel="stylesheet" type="text/css" href="css/reservationdetail-style.css">
    </head>
    <body>
        <c:set scope="request" value="rd" var="p"/>
        <header id="top" class="header nav-top">
            <jsp:include page="component/nav-top.jsp"/>
        </header>
        <script src="js/nav-top.js" type="text/javascript"></script>
        <jsp:include page="component/message.jsp"></jsp:include>

        <c:if test="${not empty sessionScope.cart}">
            <c:set var="rcart" value="${sessionScope.cart}"/>
            <section class="main">
                <div class="search-sticky">
                    <div class="header flex-between">
                        <a href="hoteldetail" class="flex-center"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                        <h3>Đặt phòng</h3>
                    </div>
                    <%-- --%>

                    <jsp:include page="component/search-box.jsp"></jsp:include>
                    </div>
                    <script src="js/pick-date.js"></script>
                    <script src="js/search-box.js"></script>
                    <div class="cart-wrapper">
                    <c:choose>                            
                        <c:when test="${empty cart}"> <h2>Giở hàng chưa tạo <h2></c:when> 
                                <c:when test="${not empty cart && cart.getBookedRooms().size()>0 }"><h2>Bạn đã chọn</h2> </c:when> 
                                <c:when test="${cart.getBookedRooms().size()==0}"> <h2>Chưa có phòng trong giỏ hàng</h2></c:when> 
                                <c:otherwise></c:otherwise>
                            </c:choose>



                            <div class="room-wrapper 
                                 <c:choose>
                                     <c:when test="${empty cart}">hidden</c:when>  
                                     <c:when test="${cart.getBookedRooms().size()==0}">hidden</c:when>  
                                     <c:otherwise></c:otherwise>
                                 </c:choose>
                                 ">
                                <c:forEach var="br" items="${sessionScope.cart.getBookedRooms()}">
                                    <div class="picked-room grid-3" id="${br.getId()}">
                                        <div class="card-image">
                                            <img src="${br.getImage()}" alt="${br.getName()}">
                                        </div>
                                        <div class="card-contain">
                                            <div class="room-type">
                                                ${br.getName()}
                                            </div>
                                            <div class="room-bed">${br.getBed()}</div> 
                                            <div class="quantity flex-between flex-column">
                                                <div class="lable">Số lượng</div>
                                                <div class="setbox g-3-center">
                                                    <div class="btn des flex-center">-</div>
                                                    <div class="quan"><input type="number" name = quantity value="${br.getQuantity()}" /></div>
                                                    <div class="btn inc flex-center">+</div>
                                                </div>
                                            </div>
                                        </div>                                         

                                        <div class="card-price flex-ja-end flex-column">
                                            <div class="lable">Giá phòng</div>
                                            <c:if test="${br.getDiscount() == 0}">    
                                                <div class="curent-price">
                                                    <fmt:formatNumber type="number" pattern="###,###" value="${br.getPrice()}"/><span class="unit">đ/đêm</span>
                                                </div>
                                            </c:if>
                                            <c:if test="${br.getDiscount() > 0}">
                                                <div class="unit-price"><fmt:formatNumber type="number" pattern="###,###" value="${br.getPrice()}"/><</div>
                                                <div class="curent-price">
                                                    <fmt:formatNumber type="number" pattern="###,###" value="${br.getPrice()*(1-br.getDiscount())}"/><<span class="unit">đ/đêm</span>
                                                </div>                                    
                                            </c:if>
                                        </div>
                                        <div class="close-btn flex-center"><i class="fa fa-times" aria-hidden="true"></i></div>
                                    </div>	
                                </c:forEach>

                            </div>

                            <div id="service" class="service-wrapper <c:if test="${empty cart}">hidden</c:if>">
                                <c:if test="${cart.getBookedServices().size()>0}"><h3>Dịch vụ kèm theo</h3></c:if>
                                    <div class="service-container">
                                    <c:forEach var="bservice" items="${sessionScope.cart.getBookedServices()}">
                                        <div class="service-item" id="${bservice.id}">
                                            <div class="service-name">${bservice.name}</div>
                                            <div class="quantity">
                                                <div class="label">Số lượng</div>
                                                <div class="setbox g-3-center">
                                                    <div class="btn des flex-center">
                                                        -
                                                    </div>
                                                    <div class="quan">
                                                        <input type="number" name="quantity" value="${bservice.quantity}">
                                                    </div>
                                                    <div class="btn inc flex-center">
                                                        +
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-price">
                                                <div class="label">Giá</div>
                                                <div class="current-price"><fmt:formatNumber type="number" pattern="###,###" value="${bservice.price}"/><span class="unit">${bservice.unit}</span></div>

                                            </div>
                                            <div class="close-btn flex-center"><i class="fa fa-times" aria-hidden="true"></i></div>
                                        </div>
                                    </c:forEach>

                                </div>
                            </div>


                            </div>
                            <div class="footer">
                                <h2 style="text-align: left;">Tổng</h2>
                                <div class="flex-between"><span>Tiền phòng</span><span><fmt:formatNumber type="number" pattern="###,###" value="${sessionScope.cart.getFeeRoom()}"/> vnđ</span></div>
                                <div class="flex-between"><span>Tiền dịch vụ</span><span><fmt:formatNumber type="number" pattern="###,###" value="${sessionScope.cart.getFeeService()}"/> vnđ</span></div>
                                <div class="flex-between"><span>Tổng</span><span><fmt:formatNumber type="number" pattern="###,###" value="${sessionScope.cart.getTotal()}"/> vnđ</span></div>
                                <div class="btn pick-room"><a href="reservationcontact">Đặt luôn</a></div>
                            </div>
                            <script src="js/message.js"></script>
                            <script type="text/javascript">
                                let room_list = document.querySelector('.cart-wrapper .room-wrapper');

                                if (room_list !== null) {
                                    room_list.querySelectorAll('.picked-room').forEach((picked_room) => {
                                        const des = picked_room.querySelector('.setbox .btn.des');
                                        const quan = picked_room.querySelector('.setbox .quan input');
                                        const inc = picked_room.querySelector('.setbox .btn.inc');
                                        const del = picked_room.querySelector('.close-btn');
                                        // console.log(des);
                                        // console.log(quan.value);
                                        // console.log(inc);
                                        // console.log(del);
                                        let newForm = document.createElement("form");
                                        newForm.method = "POST";


                                        // newForm.submit();

                                        des.addEventListener('click', () => {
                                            if (quan.value == 1 && !confirm('Xoá phòng khỏi giỏ hàng.Bạn có muốn tiép tục?')) {
                                                console.log(quan.value);

                                                return;
                                            } else if (quan.value > 0) {
                                                quan.value--;
                                                newForm.action = "UpdateCart?update=room&id=" + picked_room.id + "&quantity=" + quan.value;
                                                room_list.appendChild(newForm);
                                                console.log(newForm);
                                                newForm.submit();
                                            }
                                        });

                                        inc.addEventListener('click', () => {
                                            if (quan.value >= 0)
                                                quan.value++;
                                            newForm.action = "UpdateCart?update=room&id=" + picked_room.id + "&quantity=" + quan.value;
                                            room_list.appendChild(newForm);
//                                console.log(newForm);
                                            newForm.submit();
                                        });

                                        del.addEventListener('click', () => {

                                            if (!confirm('Thao tác không thể khôi phục. Bạn muốn xoá phòng khỏi giỏ hàng?'))
                                                return;
                                            quan.value = 0;
                                            newForm.action = "UpdateCart?update=room&id=" + picked_room.id + "&quantity=" + quan.value;
                                            room_list.appendChild(newForm);
//                                console.log(newForm);
                                            newForm.submit();
                                        });

                                        quan.addEventListener('change', () => {
                                            if (quan.value <= 0)
                                                quan.value = 0;

                                            newForm.action = "UpdateCart?update=room&id=" + picked_room.id + "&quantity=" + quan.value;
                                            room_list.appendChild(newForm);
                                            //                                console.log(newForm);
                                            newForm.submit();

                                        });

                                    });
                                }

                                let service_list = document.querySelector('.service-wrapper .service-container');
                                if (service_list !== null) {
                                    service_list.querySelectorAll('.service-item').forEach((service_item) => {
                                        const des = service_item.querySelector('.btn.des');
                                        const inc = service_item.querySelector('.btn.inc');
                                        const quan = service_item.querySelector('.quan input');
                                        const del = service_item.querySelector('.close-btn');
                                        // console.log(des);
                                        // console.log(quan.value);
                                        // console.log(inc);
                                        // console.log(del);
                                        let newForm = document.createElement("form");
                                        newForm.method = "POST";


                                        // newForm.submit();

                                        des.addEventListener('click', () => {
                                            if (quan.value == 1 && !confirm('Thao tác không thể khôi phục. Bạn muốn tiếp tục xoá dịch vụ khỏi giỏ hàng ?')) {
                                                return;
                                            } else if (quan.value > 0) {
                                                quan.value--;
                                                newForm.action = "UpdateCart?update=service&id=" + service_item.id + "&quantity=" + quan.value;
                                                service_list.appendChild(newForm);
//                                    console.log(newForm);
                                                newForm.submit();
                                            }
                                        });

                                        inc.addEventListener('click', () => {
                                            if (quan.value >= 0)
                                                quan.value++;
                                            newForm.action = "UpdateCart?update=service&id=" + service_item.id + "&quantity=" + quan.value;
                                            service_list.appendChild(newForm);
//                                            console.log(newForm);                                             
                                            newForm.submit();
                                        });

                                        del.addEventListener('click', () => {                                             
                                            if (confirm('Thao tác không thể khôi phục. Bạn muốn tiếp tục xoá dịch vụ này ?')) {// check confirm del service
                                                quan.value = 0;
                                                newForm.action = "UpdateCart?update=service&id=" + service_item.id + "&quantity=" + quan.value;
                                                service_list.appendChild(newForm);
//                                    console.log(newForm);
                                                newForm.submit();
                                            }
                                        });

                                        quan.addEventListener('change', () => {
                                            if (quan.value < 0)
                                                quan.value = 0;
                                            newForm.action = "UpdateCart?update=service&id=" + service_item.id + "&quantity=" + quan.value;
                                            service_list.appendChild(newForm);
                                            //                                console.log(newForm);
                                            newForm.submit();
                                        });
                                    });
                                }
                            </script>
                            </section>

                        </c:if>
                        <footer>

                        </footer>
                        </body>
                        </html>
