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
                <div class="section">
                    <h5>Phòng</h5>
                    <div class="content picked-room">
                        <div class="item grid-3">
                            <div class="card-image">
                                <img src="https://img.freepik.com/free-photo/modern-luxury-bedroom-suite-bathroom-with-working-table_105762-1788.jpg?w=740&t=st=1656600751~exp=1656601351~hmac=390e78eea5672fe3ed62aa7cfc866770d2b27beadf489a7d1c1b2dc087620d46" alt="room">
                            </div>
                            <div class="card-contain">
                                <div class="room-type">
                                    Phòng đơn tiêu chuẩn
                                </div>
                                <div class="room-bed">1 giường kép - 1 giường đơn</div> 
                                <div class="quantity flex-between flex-column">
                                    <div class="lable">Số lượng</div>
                                    <div class="setbox g-3-center">
                                        <div class="btn des flex-center">-</div>
                                        <div class="quan"><input type="number" name = quantity /></div>
                                        <div class="btn inc flex-center">+</div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-price flex-ja-end flex-column">
                                <div class="lable">Giá phòng</div>
                                <div class="unit-price">100.000</div>
                                <div class="curent-price">
                                    100.000<span class="unit">đ/đêm</span>
                                </div>
                            </div>
                            <div class="close-btn flex-center"><i class="fa fa-times" aria-hidden="true"></i></div>
                        </div>
                        <div class="item grid-3">
                            <div class="card-image">
                                <img src="https://img.freepik.com/free-photo/modern-luxury-bedroom-suite-bathroom-with-working-table_105762-1788.jpg?w=740&t=st=1656600751~exp=1656601351~hmac=390e78eea5672fe3ed62aa7cfc866770d2b27beadf489a7d1c1b2dc087620d46" alt="room">
                            </div>
                            <div class="card-contain">
                                <div class="room-type">
                                    Phòng đơn tiêu chuẩn
                                </div>
                                <div class="room-bed">1 giường kép - 1 giường đơn</div> 
                                <div class="quantity flex-between flex-column">
                                    <div class="lable">Số lượng</div>
                                    <div class="setbox g-3-center">
                                        <div class="btn des flex-center">-</div>
                                        <div class="quan"><input type="number" name = quantity /></div>
                                        <div class="btn inc flex-center">+</div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-price flex-ja-end flex-column">
                                <div class="lable">Giá phòng</div>
                                <div class="unit-price">100.000</div>
                                <div class="curent-price">
                                    100.000<span class="unit">đ/đêm</span>
                                </div>
                            </div>
                            <div class="close-btn flex-center"><i class="fa fa-times" aria-hidden="true"></i></div>
                        </div>
                        <div class="item grid-3">
                            <div class="card-image">
                                <img src="https://img.freepik.com/free-photo/modern-luxury-bedroom-suite-bathroom-with-working-table_105762-1788.jpg?w=740&t=st=1656600751~exp=1656601351~hmac=390e78eea5672fe3ed62aa7cfc866770d2b27beadf489a7d1c1b2dc087620d46" alt="room">
                            </div>
                            <div class="card-contain">
                                <div class="room-type">
                                    Phòng đơn tiêu chuẩn
                                </div>
                                <div class="room-bed">1 giường kép - 1 giường đơn</div> 
                                <div class="quantity flex-between flex-column">
                                    <div class="lable">Số lượng</div>
                                    <div class="setbox g-3-center">
                                        <div class="btn des flex-center">-</div>
                                        <div class="quan"><input type="number" name = quantity /></div>
                                        <div class="btn inc flex-center">+</div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-price flex-ja-end flex-column">
                                <div class="lable">Giá phòng</div>
                                <div class="unit-price">100.000</div>
                                <div class="curent-price">
                                    100.000<span class="unit">đ/đêm</span>
                                </div>
                            </div>
                            <div class="close-btn flex-center"><i class="fa fa-times" aria-hidden="true"></i></div>
                        </div>
                    </div>
                </div>
                <div class="section">
                        <h5>Dịch vụ kèm theo</h5>
                        <div class="content picked-service">
                        <div class="item grid-3 g-c">
                                <div class="service">
                                    Phục vụ bữa phụ
                                </div>
                            <div class="quantity flex-between flex-column">
                                <div class="lable">Số lượng</div>
                                <div class="setbox g-3-center">
                                    <div class="btn des flex-center">-</div>
                                    <div class="quan"><input type="number" name = quantity /></div>
                                    <div class="btn inc flex-center">+</div>
                                </div>
                            </div>
                            <div class="card-price flex-ja-end flex-column">
                                <div class="lable">Giá</div>
                                <div class="curent-price">
                                    100.000<span class="unit">đ/bữa</span>
                                </div>
                            </div>
                            <div class="close-btn flex-center"><i class="fa fa-times" aria-hidden="true"></i></div>
                        </div>
                        <div class="item grid-3 g-c">
                                <div class="service">
                                    Phục vụ bữa phụ
                                </div>
                            <div class="quantity flex-between flex-column">
                                <div class="lable">Số lượng</div>
                                <div class="setbox g-3-center">
                                    <div class="btn des flex-center">-</div>
                                    <div class="quan"><input type="number" name = quantity /></div>
                                    <div class="btn inc flex-center">+</div>
                                </div>
                            </div>
                            <div class="card-price flex-ja-end flex-column">
                                <div class="lable">Giá</div>
                                <div class="curent-price">
                                    100.000<span class="unit">đ/bữa</span>
                                </div>
                            </div>
                            <div class="close-btn flex-center"><i class="fa fa-times" aria-hidden="true"></i></div>
                        </div>
                        <div class="item grid-3 g-c">
                                <div class="service">
                                    Phục vụ bữa phụ
                                </div>
                            <div class="quantity flex-between flex-column">
                                <div class="lable">Số lượng</div>
                                <div class="setbox g-3-center">
                                    <div class="btn des flex-center">-</div>
                                    <div class="quan"><input type="number" name = quantity /></div>
                                    <div class="btn inc flex-center">+</div>
                                </div>
                            </div>
                            <div class="card-price flex-ja-end flex-column">
                                <div class="lable">Giá</div>
                                <div class="curent-price">
                                    100.000<span class="unit">đ/bữa</span>
                                </div>
                            </div>
                            <div class="close-btn flex-center"><i class="fa fa-times" aria-hidden="true"></i></div>
                        </div>
                    </div>
                </div>
                <div class="footer">
                    <div class="toggle flex-center"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
                    <div class="contain flex-between">
                     <div class="card-price flex-ja-end flex-column">
                                <div class="lable">Tổng tiền</div>
                                <div class="unit-price">100.000</div>
                                <div class="curent-price">100.000
                                    <span class="unit">đ</span>
                                </div>
                    </div>
                    <button type="button" class="btn">Đặt phòng</button>
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
