<%-- 
    Document   : ReserveDetailManager
    Created on : 21-Jul-2022, 15:03:52
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!--<link href="css/aside-nav.css" rel="stylesheet" type="text/css"/>-->
        <link href="css/layout-style.css" rel="stylesheet" type="text/css"/>
        <link href="css/datepicker-style.css" rel="stylesheet" type="text/css"/>
        <link href="css/search-box-style.css" rel="stylesheet" type="text/css"/> 
        <link rel="stylesheet" type="text/css" href="css/reservationdetail-style.css">
        <link rel="stylesheet" type="text/css" href="css/reservationcontact-style.css">
        <style type="text/css">
            .date-select-box.disable{
                pointer-events: none;
            }

            @keyframes activeform{
                0%{
                    box-shadow: 5px 5px 5px 1px #cc8c18; 
                }
                60%{
                     box-shadow: 5px 5px 30px 1px #cc8c18; 
                }
                
                100%{
                     box-shadow: 5px 5px 10px 1px #cc8c18; 
                }
            }
            
            .search-box-x.active{
                animation: activeform 1s 3;
            }
            
            .search-box-x.active,.base-infor.active{
                animation: activeform 1s 3;
            }
            
            .main .aside .footer .action{
                margin-top: 10px;
                width: 100%;
            }
            
            .main .aside .footer .btn{
                /*display: inline-block;*/
                width: 120px;
                margin: 5px 0;
                padding:5px;
                
               
            }
            
            .main .aside .footer div .btn:first-child{
                width: 80px;
                padding: 10px 5px;
                margin-right: 10px;
            }
            .search-suggest-input{
                position: relative;
            }
            
            .base-infor .listuser{
                padding: 5px;
                position: absolute;
                /*border: none;*/
                border-radius: 5px;
                outline: none;
                width:  100%;
                font-size: 18px;
                left:0;
                top: calc(100% + 10px);
            }
            .base-infor .listuserinfo.active{
                animation: activeform 1s 5;  
            }
            .base-infor .listuser::-webkit-scrollbar{
                background-color: transparent;
                width: 5px;
            }
            .base-infor .listuser::-webkit-scrollbar-thumb{
                width: 5px;
                border-radius: 5px;
                background-color: #cc8c18;
            }
        </style>
    </head>
    <body>
        <jsp:include page="component/message.jsp"/>
        <script src="js/message.js"></script>    

        <section class="main-right main">
            <div class="search-sticky">
                <div class="header flex-between">
                    <a href="#" class="flex-center"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                    <h3>Thông tin đặt phòng</h3>
                </div>
                <%-- --%>
                <%--<c:set scope="request" value="rdm" var="p"/>--%>
                <form action= "#"  method="POST">
                    <div class="search-box-x">
                        <div class="input-box flex-center">
                            <%--<input type="text" name="search" value="${sessionScope.hotel.name}" disabled>--%>
                            Đặt lúc<span class="datetime-format">${ re.bookDate}</span>
                        </div>

                        <div class="date-select-box flex-center disable">

                            <div class="input-date-box">
                                <input type="date" class="arrival-date" name="arrival" value="${re.arrival}">
                            </div>
                            <div class="input-date-box">
                                <input type="date" class="department-date" name="department" value="${re.department}">
                            </div>
                            <div class="pick-box">
                                <span class="arrival"></span>
                                <span class="department"></span>
                            </div>
                            <jsp:include page="component/date-picker.jsp"/>
                        </div>
                        <script src="js/pick-date.js"></script>
                        <div class="select-box drop-box disable">                                
                            <div class="drop-title flex-around ">
                                <div class="label adult-show ">
                                    <span class="number"></span><span class="lable">Người lớn</span>
                                </div>

                                <div class="label child-show">
                                    <span class="number"></span><span class="lable">Trẻ em</span>
                                </div>

                                <div class="label room-show">
                                    <span class="number"></span><span class="lable">Phòng</span>
                                </div>
                            </div>
                            <input class="adult" name="adult" value="${re.adult!=null?re.adult:1}">
                            <input class="child" name="child" value="${re.child!=null?re.child :0}">
                            <input class="room" name="room" value="${re.noRoom!=null?re.noRoom :1}">
                            <div class="drop-items flex-between flex-column drop hidden">
                                <div class="drop-item flex-between ">
                                    <div class="adult-change grid-3">
                                        <span class="btn flex-center des">-</span>
                                        <span class="number"></span>
                                        <span class="btn flex-center inc">+</span>
                                    </div>
                                    <div class="lable">Người lớn</div>
                                </div>
                                <div class="drop-item drop flex-between">
                                    <div class="child-change grid-3">
                                        <span class="btn flex-center  des">-</span>
                                        <span class="number"></span>
                                        <span class="btn flex-center  inc">+</span>
                                    </div>
                                    <div class="lable">Trẻ em</div>
                                </div>
                                <div class="drop-item flex-between  ">
                                    <div class="room-change grid-3">
                                        <span class="btn flex-center  des">-</span>
                                        <span class="number"></span>
                                        <span class="btn flex-center  inc">+</span>
                                    </div>
                                    <div class="lable">Phòng</div>
                                </div>
                            </div>		
                        </div>
                        <script src="js/search-box.js"></script>
                        <div class="footer flex-center">
                            <div class="btn btn-large flex-center disabled" >
                                Đổi lịch
                            </div>     
                        </div>
                    </div>
                </form>
            </div>
            <script defer>
                let reinfo_time = document.querySelector('.search-sticky form');

                let dateselectbox = reinfo_time.querySelector('.date-select-box');
                let select__box = reinfo_time.querySelector('.select-box');
                let btn = reinfo_time.querySelector('.footer .btn');

                btn.addEventListener('click', () => {
                    if (btn.classList.contains('disabled')) {
                        select__box.classList.toggle('disable');
                        dateselectbox.classList.toggle('disable');
                        reinfo_time.querySelector('.search-box-x').classList.toggle('active');
                        console.log('click');
                        btn.innerHTML = 'Lưu';

                        dropboxenable(select__box);
//                        selectable(dateselectbox);
                    }
                });





            </script>
 

            <div class="cart-wrapper">
                <c:if test="${empty cart}"><h2>Opps, đơn hàng trống</h2></c:if>
                <c:if test="${not empty cart}"><h2>Bạn đã chọn</h2></c:if>
                <div class="room-wrapper <c:if test="${empty cart}">hidden</c:if>">
                    <c:forEach var="br" items="${cart.getBookedRooms()}">
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
                                        <fmt:formatNumber type="number" pattern="###,###" value="${br.getPrice()}"/>
                                        
                                        <span class="unit">đ/đêm</span>
                                    </div>
                                </c:if>
                                <c:if test="${br.getDiscount() > 0}">
                                    <div class="unit-price"><fmt:formatNumber type="number" pattern="###,###" value="${br.getPrice()}"/></div>
                                    <div class="curent-price">
                                        <fmt:formatNumber type="number" pattern="###,###" value="${br.getPrice()*(1-br.getDiscount())}"/><span class="unit">đ/đêm</span>
                                    </div>                                    
                                </c:if>
                            </div>

                        </div>	
                    </c:forEach>

                </div>

                <div id="service" class="service-wrapper <c:if test="${empty cart}">hidden</c:if>">
                    <c:if test="${not empty cart.getBookedServices()}"><h3>Dịch vụ kèm theo</h3></c:if>                    
                        <div class="service-container">
                        <c:forEach var="bservice" items="${cart.getBookedServices()}">
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
                    <div class="flex-between"><span>Tổng tiền</span><span><fmt:formatNumber type="number" pattern="###,###" value="${cart.getDiscountMoney()+sessionScope.cart.getTotal()}"/> vnđ</span></div>
                    <div class="flex-between"><span>Khuyến mãi</span><span><fmt:formatNumber type="number" pattern="###,###" value="${cart.getDiscountMoney()}"/> vnđ</span></div>
                    <div class="flex-between"><span>Thanh toán</span><span><fmt:formatNumber type="number" pattern="###,###" value="${cart.getTotal()}"/> vnđ</span></div>
                    
                    <div class="action flex-between" style="padding: 0; margin: 0;">
                        <select class="btn">
                            <option value="${re.status}">${re.status}</option>
                            <option value="Pending">Pending</option>
                            <option value="Accept">Accept</option>
                            <option value="Cancel">Cancel</option>
                        </select>
                        <div class="btn pick-room">Cập nhật phòng</div>
                    </div>
                    
                </div>
                <c:set var="cust" value="${re.user}"/>
                <div class="base-infor">
                    <form action="#" method="POST">
                        <input type="hidden" name="custId" value="${cust.getId()}"/>
                        <h3>Thông tin khách hàng</h3>
                        <div class="section">
                            <div class="input-box search-suggest-input ">
                                    <div class="label">Họ và tên</div>
                                    <input type="text" value="${cust.getFullName()}" name="name" required  <c:if test="${not empty cust}">disabled</c:if> >
                                    <select class="listuser active hidden" size="3" >
                                        <option>Hoàng Hiếu - 0123432354</option>
                                        <option> Hi Hoàng ếu - 0123432354</option>
                                        <option> HiHoàng ếu - 0123432354</option>
                                        <option>Hoàng Hiếu - 0123432354</option>
                                        <option>Hoàng Hiếu - 0123432354</option>
   
                                    </select>
                            </div>
                                <div class="input-box ">
                                    <div class="label">Số điện thoại</div>
                                    <input type="text" value="${cust.getPhoneNumber()}" name="phonenumber" <c:if test="${not empty cust}">disabled</c:if>>
                                </div>
                                <div class="input-box ">
                                    <div class="label">Email<span>*</span></div>
                                    <input type="text" value="${cust.getEmail()}" name="email" required <c:if test="${not empty cust}">disabled</c:if>>
                                </div>
                            </div>                            
                                
                        <div class="div flex-between footer">
                            <button class="btn pick-room cancel" type="button" >Cancel</button>
                            <button class="btn pick-room check " type="button">Check</button>
                            <button class="btn pick-room hidden delete" type="button" >Delete</button>                            
                            <button class="btn pick-room hidden update" type="button">Update</button>	
                            <button class="btn pick-room hidden change" type="button">Change</button>	
                        </div>

                    </form>
                </div>	
                        <script type="text/javascript">
                            let baseinfo = document.querySelector('.base-infor');
//                            if(baseinfor)
                            let userinfo = baseinfo.querySelector('form');
                            
                            let updatebtn = userinfo.querySelector('.btn.update');
                            let cancelupdate = userinfo.querySelector('.btn.cancel');
                            
                            let checkbtn = userinfo.querySelector('.btn.check');
                            let delbtn = userinfo.querySelector('.btn.delete');
                            
                            let changebtn = userinfo.querySelector('.btn.delete');
                            
                            
                        </script>
            </div>
        </section>
    </body>
</html>
