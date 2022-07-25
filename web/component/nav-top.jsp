<%-- 
    Document   : nav-top
    Created on : 23-Jun-2022, 05:05:40
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="navbar flex-between">
    <div class="logo">
        <a href="../Hotel-Booking-System/home">
        <img src="images/hbooker.png" alt="logo">
        </a>
    </div>
    <div class="items-box <c:choose><c:when test="${empty sessionScope.user}">items-box-m</c:when>
             <c:otherwise>
                 ${sessionScope.user.role=="Customer"?"items-box-m":"items-box-s"}
             </c:otherwise>
         </c:choose> flex-between">
        <div class="drop-box">
            <div class="items notifies flex-center drop-box-title flag">
                <i class="fa fa-bell" aria-hidden="true"></i>	
                <div class="title">Thông báo</div>
            </div>
            <div class="drop-box-items drop-notify hidden">
                <div class="header flex-between">
                    <h3>Thông báo</h3>
                    <i class="fa fa-times" aria-hidden="true"></i>
                </div>
                <div class="container">
                    <div class="notify-detail">Thêm vào giỏ hàng thành công</div>
                </div>
            </div>
        </div>
        <c:set scope="page" var="cart" value="${sessionScope.cart}"/> 
        <div class="drop-box <c:if test="${requestScope.p != \"hoteldetail\"}">hidden</c:if>">
            <div class="items cart flex-center drop-box-title">
                <i class="fa fa-book" aria-hidden="true"></i>
                <div class="title">Đặt trước</div>
            </div>
            <div class="drop-box-items drop-cart hidden">
                <div class="header flex-between">
                    <h2>Bạn đã chọn</h4>
                    <i class="fa fa-times" aria-hidden="true"></i>
                </div>
                <div class="empty-cart flex-center <c:if test="${not empty cart}">hidden</c:if>">
                    <div>
                        <i class="fa fa-archive" aria-hidden="true"></i>
                    </div>
                    <div>Giỏ hàng trống</div>
                </div>
                <div class="section <c:if test="${empty cart}">hidden</c:if>">
                    <c:if test="${cart.getBookedRooms().size()==0}"> <h5>Bạn chưa chọn phòng</h5></c:if>
                    <c:if test="${cart.getBookedRooms().size()>0}"> <h5>Phòng</h5></c:if>
                    <div class="content picked-room">
                    <c:forEach var="bookedRoom" items="${cart.getBookedRooms()}">
                        <div class="item grid-3" id = ${bookedRoom.getId()}>
                            <div class="card-image">
                                <img src="${bookedRoom.getImage()}" alt="${bookedRoom.getName()}">
                            </div>
                            <div class="card-contain">
                                <div class="room-type">
                                    ${bookedRoom.getName()}
                                </div>
                                <div class="room-bed">${bookedRoom.getBed()}</div> 
                                <div class="quantity flex-between flex-column">
                                    <div class="lable">Số lượng</div>
                                    <div class="setbox g-3-center">
                                        <div class="btn des flex-center">-</div>
                                        <div class="quan"><input type="number" name = quantity value="${bookedRoom.getQuantity()}" /></div>
                                        <div class="btn inc flex-center">+</div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-price flex-ja-end flex-column">
                                <div class="lable">Giá phòng</div>
                                <c:if test="${bookedRoom.getDiscount() == 0}">    
                                    <div class="curent-price">
                                        <fmt:formatNumber type="number" pattern="###,###" value="${bookedRoom.getPrice()}"/><span class="unit">đ/đêm</span>
                                    </div>
                                </c:if>
                                <c:if test="${bookedRoom.getDiscount() > 0}">
                                    <div class="unit-price"><fmt:formatNumber type="number" pattern="###,###" value="${bookedRoom.getPrice()}"/></div>
                                    <div class="curent-price">
                                        <fmt:formatNumber type="number" pattern="###,###" value="${bookedRoom.getPrice()*(1-bookedRoom.getDiscount())}"/><span class="unit">đ/đêm</span>
                                    </div>                                    
                                </c:if>
                                
                            </div>
                            <div class="close-btn flex-center"><i class="fa fa-times" aria-hidden="true"></i></div>
                        </div> 
                    </c:forEach>
                    </div>
                </div>
                <div class="section <c:if test="${empty cart.getBookedServices()}">hidden</c:if> ">
                        <h5>Dịch vụ kèm theo</h5>
                        <div class="content picked-service">
                        <c:forEach var="bookedS" items="${sessionScope.cart.getBookedServices()}">
                          <div class="item grid-3 g-c" id = "${bookedS.id}">
                                <div class="service">
                                    ${bookedS.name}
                                </div>
                            <div class="quantity flex-between flex-column">
                                <div class="lable">Số lượng</div>
                                <div class="setbox g-3-center">
                                    <div class="btn des flex-center">-</div>
                                    <div class="quan"><input type="number" name = quantity value="${bookedS.quantity}" /></div>
                                    <div class="btn inc flex-center">+</div>
                                </div>
                            </div>
                            <div class="card-price flex-ja-end flex-column">
                                <div class="lable">Giá</div>
                                <div class="curent-price">
                                    <span class="unit"><fmt:formatNumber type="number" pattern="###,###" value="${bookedS.price}"/>${bookedS.unit}</span>
                                </div>
                            </div>
                            <div class="close-btn flex-center"><i class="fa fa-times" aria-hidden="true"></i></div>
                        </div>  
                        </c:forEach>
                        
                    </div>
                </div>
                <div class="footer <c:if test="${empty cart}">hidden</c:if>">
                    <div class="toggle flex-center"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
                    <div class="contain flex-between">
                     <div class="card-price flex-ja-end flex-column">
                     <c:if test="${not empty cart}">
                        <div class="lable">Tổng tiền</div>
                        <c:if test="${cart.getDiscountMoney()>0}">
                            <div class="unit-price"><fmt:formatNumber type="number" pattern="###,###" value="${cart.getDiscountMoney()+cart.getTotal()}"/></div>
                        </c:if>
                        <div class="curent-price"><fmt:formatNumber type="number" pattern="###,###" value="${cart.getTotal()}"/>
                               <span class="unit">đ</span>
                        </div>
                     </c:if>           
                    </div>
                        <button type="button" class="btn"><a href="../Hotel-Booking-System/reservationdetail">Đặt phòng</a></button>
                    </div>
                </div>
            </div>
        </div>
        <c:choose>
            <c:when test="${user!=null}">
                <c:choose>
                    <c:when test="${sessionScope.user.isManager()}">
                        <div class="items building flex-center">
                            <a href="managerdashboard"><i class="fa fa-building" aria-hidden="true"></i></a>	
                        </div> 
                    </c:when>
                    <c:otherwise>
                        <div>
                            <a href="#">Đăng phòng của bạn</a>
                        </div>
                    </c:otherwise>
                </c:choose>

                <div class="drop-box">
                    <div class="drop-box-title user-box ">
                        <img src="${sessionScope.user.avatar}" alt="user">
                    </div>
                    <div class="drop-box-items hidden">
                        <div class="drop-item"><a href="userprofile">Thông tin cá nhân</a></div>
                        <div class="drop-item"><a href="myreservation">Đơn đặt phòng</a></div>
                        <div class="drop-item">Khách sạn yêu thích</div>
                        <div class="drop-item"><a href="../Hotel-Booking-System/logout">Đăng xuất</a></div>
                    </div> 
                </div>

            </c:when>
            <c:when test="${empty user}">
                <div class="flex-row nav-link">
                    <a class="login" href="../Hotel-Booking-System/login">Đăng nhập</a>
                    <a class="register"href="../Hotel-Booking-System/register">Đăng ký ngay</a>
                </div>    
            </c:when>                                     
        </c:choose>
    </div>
    <%--
        ${not empty sessionScope.user.fullName}
        ${empty sessionScope.user.role}
        ${empty sessionScope.user.role=="Customer"}
        <c:if test="${sessionScope.user.role}"></c:if>
    --%>
</div>
