<%-- 
    Document   : nav-top
    Created on : 23-Jun-2022, 05:05:40
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<div class="navbar flex-between">
				<div class="logo">
					<img src="images/hbooker.png" alt="logo">
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
					<div class="drop-box">
						<div class="items cart flex-center drop-box-title">
							<i class="fa fa-book" aria-hidden="true"></i>
							<div class="title">Đặt trước</div>
						</div>
						<div class="drop-box-items drop-cart hidden">
							<div class="header flex-between">
									<h2>Bạn đã chọn</h4>
								<i class="fa fa-times" aria-hidden="true"></i>
							</div>
							<div class="empty-cart flex-center hidden ">
									<div>
										<i class="fa fa-archive" aria-hidden="true"></i>
									</div>
									<div>Giỏ hàng trống</div>
							</div>
							<div class="content">
								<div class="item">
									<div class="room-image">
										<img src="images/c6.png" alt="room">
									</div>
									<div class="product-infor">
										<div class="room-type">
											Phòng đơn tiêu chuẩn
										</div>
										<div class="room-bed">1 giường kép - 1 giường đơn</div> 
										<div class="quan-price flex1">
											<div class="quantity flex1">
												<div class="dec">-</div>
												<div class="quan">1</div>
												<div class="inc">+</div>
											</div>
											<div class="price">
												<div class="unit-price">100.000 <span class="unit">VNĐ/đêm</span></div>
												<div class="curent-price">
													100.000 <span class="unit">VNĐ/đêm</span>
												</div>
											</div>
										</div>
									</div>
									<div class="div"><i class="fa fa-times" aria-hidden="true"></i></div>
								</div>
							</div>
								
						</div>
					</div>
                                         <c:choose>
                                            <c:when test="${user!=null}">
                                            <c:choose>
                                                <c:when test="${sessionScope.user.isManager()}">
                                                         <div class="items building flex">
                                                                <a href="#"><i class="fa fa-building" aria-hidden="true"></i></a>	
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
                                                                    <div class="drop-item">Thông tin cá nhân</div>
                                                                    <div class="drop-item">Đơn đặt phòng của tôi</div>
                                                                    <div class="drop-item">Khách sạn yêu thích</div>
                                                                    <div class="drop-item">Đăng xuất</div>
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
