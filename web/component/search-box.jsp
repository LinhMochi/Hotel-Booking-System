<%-- 
    Document   : search-box
    Created on : 14-Jul-2022, 07:14:56
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<form 
    <c:choose>
        <c:when test="${requestScope.p==\"hoteldetail\"}">
            action= "../Hotel-Booking-System/hoteldetail"
        </c:when>
        <c:when test="${requestScope.p==\"rd\"}">
            action= "../Hotel-Booking-System/UpdateCart"
        </c:when>
        <c:when test="${requestScope.p==\"rc\"}">
            action= "#"
        </c:when>
        <c:when test="${empty requestScope.p}">
            action= "../Hotel-Booking-System/searchresult"
        </c:when>   
        <c:otherwise></c:otherwise>
    </c:choose> method="POST">

    <div class="search-box-x">
        <%--
        
 
        <c:if test="${requestScope.p==\"rc\"}">
            <div class="input-box flex-center">
                <input type="text" name="search" value="${sessionScope.hotel.name}" disabled>
            </div>
            <!--<input type="hidden" name ="update" value="search"/>-->
        </c:if>
        <c:if test="${empty requestScope.p}">
            <div class="input-box flex-center">
                <input type="text" name="search" required placeholder="Bạn muốn đi đâu?" value="${sessionScope.search.search}">
            </div>	  
        </c:if>
        --%>

        <c:choose >

            <c:when test="${requestScope.p==\"hoteldetail\"}">
                <div class="input-box flex-center">
                    <input type="text" name="search" value="${sessionScope.hotel.name}" disabled>
                </div>
                <input type="hidden" name ="changedate" value="changedate"/>
            </c:when>

            <c:when test="${requestScope.p==\"rd\"}">
                <div class="input-box flex-center">
                    <input type="text" name="search" value="${sessionScope.hotel.name}" disabled>
                </div>
                <input type="hidden" name ="update" value="search"/>
            </c:when>

            <c:when test="${requestScope.p==\"rc\"}">
                <div class="input-box flex-center">
                    <input type="text" name="search" value="${sessionScope.hotel.name}" disabled>
                </div>
                <!--<input type="hidden" name ="update" value="search"/>-->
            </c:when>

            <c:otherwise >
                <div class="input-box flex-center">
                    <input type="text" name="search" required placeholder="Bạn muốn đi đâu?" value="${sessionScope.search.search}">
                </div>	
            </c:otherwise> 
        </c:choose>
        <div class="date-select-box flex-center">
            <div class="input-date-box">
                <input type="date" class="arrival-date" name="arrival" value="${sessionScope.search.arrival}">
            </div>
            <div class="input-date-box">
                <input type="date" class="department-date" name="department" value="${sessionScope.search.department}">
            </div>
            <div class="pick-box <c:if test="${requestScope.p==\"rc\"}">disable</c:if>">
                    <span class="arrival"></span>
                    <span class="department"></span>
                </div>
            <jsp:include page="date-picker.jsp"/>
        </div>
        <div class="select-box drop-box <c:if test="${requestScope.p==\"rc\"}">disable</c:if>">                 
                <div class="drop-title flex-around">
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
            <c:choose>
                <c:when test="${requestScope.p==\"rc\"}" >
                    <input class="adult" name="adult" value="${sessionScope.search.noAdult!=null?sessionScope.search.noAdult:1}">
                    <input class="child" name="child" value="${sessionScope.search.noChild!=null?sessionScope.search.noChild :0}">
                    <input class="room" name="room" value="${sessionScope.cart.getBookedRoomQuantity()!=null?sessionScope.cart.getBookedRoomQuantity():0}">
                </c:when>
                <c:otherwise>
                    <input class="adult" name="adult" value="${sessionScope.search.noAdult!=null?sessionScope.search.noAdult:1}">
                    <input class="child" name="child" value="${sessionScope.search.noChild!=null?sessionScope.search.noChild :0}">
                    <input class="room" name="room" value="${sessionScope.search.noRoom!=null?sessionScope.search.noRoom :1}">
                </c:otherwise>
            </c:choose>
            <div class="drop-items flex-between flex-column drop hidden">
                <div class="drop-item flex-between ">
                    <div class="adult-change grid-3">
                        <span class="btn flex-center des">-</span>
                        <span class="number"></span>
                        <span class="btn flex-center inc">+</span>
                    </div>
                    <div class="lable">Người lớn</div>
                </div>
                <div class="drop-item  flex-between ">
                    <div class="child-change grid-3">
                        <span class="btn flex-center  des">-</span>
                        <span class="number"></span>
                        <span class="btn flex-center  inc">+</span>
                    </div>
                    <div class="lable">Trẻ em</div>
                </div>
                <div class="drop-item flex-between">
                    <div class="room-change grid-3">
                        <span class="btn flex-center  des">-</span>
                        <span class="number"></span>
                        <span class="btn flex-center  inc">+</span>
                    </div>
                    <div class="lable">Phòng</div>
                </div>
            </div>		
        </div>
        <div class="footer flex-center">
            <c:choose>
                <c:when test="${empty p}">
                    <button class="btn btn-large flex-center">
                        Tìm
                    </button> 
                </c:when>
                <c:when test="${p == \"hoteldetail\"  }">
                    <button class="btn btn-large flex-center">
                        Check available
                    </button> 
                </c:when>
                <c:when test="${  p == \"rd\" }">
                    <button class="btn btn-large flex-center">
                        Check available
                    </button> 
                </c:when>
                <c:otherwise></c:otherwise>
            </c:choose>
        </div>
    </div>
</form>
<%--                        <script>
                            console.log('${sessionScope.search.noAdult!=null?sessionScope.search.noAdult:1}');
                        </script>
--%>

