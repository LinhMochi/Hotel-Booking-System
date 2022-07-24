<%-- 
    Document   : ListReservation
    Created on : 21-Jul-2022, 08:09:33
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Reservation manage</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="css/aside-nav.css" rel="stylesheet" type="text/css"/>
        <link href="css/layout-style.css" rel="stylesheet" type="text/css"/>
        <link href="css/reservationlist-style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <div class="aside-navigation">
            <jsp:include page="component/aside-nav-manage.jsp"/>
        </div>
        <script src ="js/aside-nav.js"></script>
        <jsp:include page="component/message.jsp"/>
        <script src="js/message.js">
            
        </script>    
            
        <div class="main-right">

            <div class="header">
                <h2>List reservation</h2>
                <div>
                    <select class="">
                        <option value="">All</option>
                        <option value="Pending">Pending</option>
                        <option value="Accept">Accept</option>
                        <option value="Complete">Complete</option>
                        <option value="Cancel" >Cancel</option>
                        <option value="Rated">Rated</option>
                    </select>
                </div>
            </div>
            <table>
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Tên khách hàng</th>
                        <th>Số lượng</th>
                        <th>Ngày đặt</th>
                        <th>Ngày đến</th>
                        <!--<th>Ngày đi</th>-->
                        <th>Trạng thái</th>
                        <th>Tác vụ</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="re" varStatus="s" items="${relist}">
                        <tr id="${re.id}" class="${re.id} ${re.user.id}">
                            <td>${re.id}</td>
                            <td>${re.user.fullName}</td>
                            <td>${re.noRoom}</td>
                            <td>${re.bookDate}</td>
                            <td>${re.arrival}</td>
                            <%--<td>${re.department}</td>--%>
                            <td>
                                <select class="">
                                    <option value="${re.status}" >${re.status}</option>
                                    <option value="Pending" class="pending">Pending</option>
                                    <option value="Accept">Accept</option>
                                    <option value="Complete">Complete</option>
                                    <option value="Cancel" >Cancel</option>
                                    <option value="Rated">Rated</option>
                                </select>
                            </td>
                            <td>
                                <i class="fa fa-eye-slash" aria-hidden="true"></i>
                                <i class="fa fa-external-link-square" aria-hidden="true"></i> 
                                <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <c:set var="page" value="${page==null?1:page}"/>
            <div class="pagin">
                <c:if test="${page>1}"><a href="http://localhost:8080/Hotel-Booking-System/managerreservationlist?page=${page-1}" class="btn">Pre</a></c:if>
                <c:forEach begin="1" end="${endpage}" var="p">
                    <a href="http://localhost:8080/Hotel-Booking-System/managerreservationlist?page=${p}" class="btn <c:if test="${p==page}">current-page</c:if>">${p}</a>
                </c:forEach>
                <c:if test="${page<endpage}"><a href="http://localhost:8080/Hotel-Booking-System/managerreservationlist?page=${page+1}" class="btn">Next</a></c:if></div>
        </div>
    </div>
    <script src="js/reservationlist.js" type="text/javascript" defer></script>
</body>
</html>
