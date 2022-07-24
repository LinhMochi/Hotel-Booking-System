<%-- 
    Document   : ReservationContact
    Created on : 18-Jul-2022, 17:32:24
    Author     : Linh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <title>Reservation Contact</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" type="text/css" href="css/nav-top.css">
        <link href="css/datepicker-style.css" rel="stylesheet" type="text/css"/>
        <link href="css/search-box-style.css" rel="stylesheet" type="text/css"/> 
        <link rel="stylesheet" type="text/css" href="css/layout-style.css">
        <link rel="stylesheet" type="text/css" href="css/reservationdetail-style.css">
        <link rel="stylesheet" type="text/css" href="css/reservationcontact-style.css">
    </head>
    <body>
        <header class="header nav-top">
            <jsp:include page="component/nav-top.jsp"/>
        </header>
        <script src="js/nav-top.js" type="text/javascript"></script>
        <section class="main">


            <div class="search-sticky">
                <div class="header flex-between">
                    <a href="reservationdetail" class="flex-center"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                    <h2>Thông tin đặt phòng</h2>
                </div>
                <%-- --%>
                <c:set scope="request" value="rc" var="p"/>
                <jsp:include page="component/search-box.jsp"></jsp:include>
                </div>
                <script src="js/pick-date.js"></script>
                <script src="js/search-box.js"></script>

                <div class="cart-wrapper">
                <c:if test="${cart.getBookedRooms().size()==0}"><h2>Giỏi hàng trống</h2></c:if>
                <c:if test="${empty cart.getBookedRooms()}"><h2>Giỏ hàng chưa được tạo</h2></c:if>
                <c:if test="${not empty cart}"><h2>Bạn đã chọn</h2></c:if>
                <div class="room-wrapper <c:if test="${empty cart}">hidden</c:if>">
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

                                        <div class="quan"><input type="number" name = quantity value="${br.getQuantity()}" disabled /></div>

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

                        </div>	
                    </c:forEach>

                </div>

                <div id="service" class="service-wrapper <c:if test="${empty cart}">hidden</c:if>">
                    <c:if test="${not empty cart.getBookedServices()}"><h3>Dịch vụ kèm theo</h3></c:if>                    
                        <div class="service-container">
                        <c:forEach var="bservice" items="${sessionScope.cart.getBookedServices()}">
                            <div class="service-item" id="${bservice.id}">
                                <div class="service-name">${bservice.name}</div>
                                <div class="quantity">
                                    <div class="label">Số lượng</div>
                                    <div class="setbox g-3-center">

                                        <div class="quan">
                                            <input type="number" name="quantity" value="${bservice.quantity}" disabled>
                                        </div>

                                    </div>
                                </div>
                                <div class="card-price">
                                    <div class="label">Giá</div>
                                    <div class="current-price"><fmt:formatNumber type="number" pattern="###,###" value="${bservice.price}"/><span class="unit">${bservice.unit}</span></div>

                                </div>                                
                            </div>
                        </c:forEach>

                    </div>
                </div>

            </div>
            <div class="aside">
                <%--
                 <div class="footer">
                    <h2 style="text-align: left;">Tổng</h2>
                    <div class="flex-between"><span>Tiền phòng</span><span><fmt:formatNumber type="number" pattern="###,###" value="${sessionScope.cart.getFeeRoom()}"/> vnđ</span></div>
                    <div class="flex-between"><span>Tiền dịch vụ</span><span><fmt:formatNumber type="number" pattern="###,###" value="${sessionScope.cart.getFeeService()}"/> vnđ</span></div>
                    <div class="flex-between"><span>Tổng</span><span><fmt:formatNumber type="number" pattern="###,###" value="${sessionScope.cart.getTotal()}"/> vnđ</span></div>
                    <div class="btn pick-room"><a href="#">Đặt luôn</a></div>
                </div>
                
                --%>
                <div class="footer">
                    <h2 style="text-align: left;">Tổng</h2>
                    <div class="flex-between"><span>Tổng tiền</span><span><fmt:formatNumber type="number" pattern="###,###" value="${sessionScope.cart.getDiscountMoney()+sessionScope.cart.getTotal()}"/> vnđ</span></div>
                    <div class="flex-between"><span>Khuyến mãi</span><span><fmt:formatNumber type="number" pattern="###,###" value="${sessionScope.cart.getDiscountMoney()}"/> vnđ</span></div>
                    <div class="flex-between"><span>Thanh toán</span><span><fmt:formatNumber type="number" pattern="###,###" value="${sessionScope.cart.getTotal()}"/> vnđ</span></div>
                    <div class="btn pick-room"><a href="reservationdetail">Cập nhật phòng</a></div>
                </div>
                <c:set var="cust" value="${sessionScope.user}"/>
                <div class="base-infor">
                    <form action="reservationcontact" method="POST">
                        <input type="hidden" name="custId" value="${cust.getId()}"/>
                        <h3>Thông tin khách hàng</h3>
                        <div class="section">
                            <div class="input-box <c:if test="${empty cust}">active</c:if>">
                                    <div class="label">Họ và tên<span>*</span></div>
                                    <input type="text" value="${cust.getFullName()}" name="name" required  <c:if test="${not empty cust}">disabled</c:if> >
                                </div>
                                <div class="input-box <c:if test="${empty cust}">active</c:if>">
                                    <div class="label">Số điện thoại</div>
                                    <input type="text" value="${cust.getPhoneNumber()}" name="phonenumber" <c:if test="${not empty cust}">disabled</c:if>>
                                </div>
                                <div class="input-box <c:if test="${empty cust}">active</c:if>">
                                    <div class="label">Email<span>*</span></div>
                                    <input type="text" value="${cust.getEmail()}" name="email" required <c:if test="${not empty cust}">disabled</c:if>>
                                </div>
                            </div>
                            <div class="check-box  <c:if test="${empty cust}">hidden</c:if>"><input id="flag" type="checkbox" name="flag" value="f"><label for="flag">Tôi đặt hộ</label></div>
                        <div class="div flex-between">
                            <button class="btn pick-room" type="button" onclick="removeCart();">Huỷ đơn</button>
                            <button class="btn pick-room">Gửi đơn</button>	
                        </div>

                    </form>
                </div>	
            </div>
        </section>

        <footer></footer>
        <script type="text/javascript">
            let baseinfo = document.querySelector('.main .aside .base-infor form');
            let f = baseinfo.querySelector('input#flag');
            let fter = document.querySelector("body footer");
            baseinfo.querySelector('input#flag').addEventListener('change', (fl) => {
                baseinfo.querySelectorAll('.input-box').forEach((inputf) => {
                    inputf.classList.toggle('active');
                    let ip = inputf.querySelector('input');
                    if (f.checked) {
                        ip.value = "";
                        ip.disabled = false;
                    } else {
                        ip.disabled = true;
                    }
                    console.log(ip.disabled + " è");
                });
                if (!f.checked)
                    baseinfo.reset();
                else
                    baseinfo.clear();
            });

            let newForm = document.createElement("form");
            newForm.method = "POST";

            function removeCart() {
                newForm.action = "UpdateCart?update=cancelre";
                fter.appendChild(newForm);
                if (confirm("Bạn thao tác này sẽ không hoàn lại. Bạn có chắc chắn muốn huỷ đơn đặt phòng"))
                    newForm.submit();
            }
        </script>
    </body>
</html>
