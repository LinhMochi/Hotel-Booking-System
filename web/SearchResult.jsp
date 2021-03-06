<%-- 
    Document   : SearchResult
    Created on : 11-Jul-2022, 22:42:22
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
        <link href="css/nav-top.css" rel="stylesheet" type="text/css"/>
        <link href="css/datepicker-style.css" rel="stylesheet" type="text/css"/>
        <link href="css/layout-style.css" rel="stylesheet" type="text/css"/>
        <link href="css/searchresult.css" rel="stylesheet" type="text/css"/>
        <link href="css/search-box-style.css" rel="stylesheet" type="text/css"/>
        <!--<link href="css/home-styles.css" rel="stylesheet" type="text/css"/>-->
    </head>
    <body>
        <header class="header nav-top">
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
            <jsp:include page="component/search-box.jsp"></jsp:include>
        </div>
        <script src="js/pick-date.js"></script>
        <script src="js/search-box.js"></script>
        <div class="main-section layout-1-3">
            <div class="aside-left">
                <h4>B??? l???c</h4>
                <div class="price-filter filter-box">
                    <div class="price-box">
                        <div class="price-lable">Gi?? t???</div>
                        <input type="text"  class="min-price" name="min-price" value="1,000,000">
                    </div>
                    <div class="price-box">
                        <div class="price-lable">?????n</div>
                        <input type="text" class="max-price" name="max-price" value="20,000,000">
                    </div>
                    <div class="double-range">
                        <input type="range" class="min-range" min="0" max="20000" value="0" step="5" />
                        <input type="range" class="max-range" min="0" max="20000" value="20000" step="5" />
                    </div>
                    <div class="price-range">
                        <div class="progress"></div>
                    </div>
                </div>
                <div class="filter-box">
                    <h5>H???ng sao c???a kh??ch s???n</h5>
                    <li><input type="checkbox" id="hs1" name="c"><label for="hs1" class="lable">5 sao</label></li>
                    <li><input type="checkbox" id="hs2" name="c"><label for="hs2" class="lable">4 sao</label></li>
                    <li><input type="checkbox" id ="hs3" name="c"><label for="hs3" class="lable">3 sao</label></li>
                    <li><input type="checkbox" id="hs4" name="c"><label for="hs4" class="lable">2 sao</label></li>
                </div>
                <div class="filter-box">
                    <h5>Lo???i kh??ch s???n</h5>
                    <li><input type="checkbox" id="ks1" name="c"><label for="ks1" class="lable">Kh??ch s???n ti??u chu???n</label></li>
                    <li><input type="checkbox" id="ks2" name="c"><label for="ks2" class="lable">Kh??ch s???n ngh??? d?????ng</label></li><li><input type="checkbox" id="ks3" name="c"><label for="ks3" class="lable">Kh??ch s???n con nh???ng</label></li><li><input type="checkbox" id="ks4" name="c"><label for="ks4" class="lable">Homestay</label></li>
                </div>
                <div class="filter-box">
                    <h5>Xung quanh kh??ch s???n c??</h5>
                    <li><input type="checkbox" id="sg-1" name="c"><label for="sg-1" class="lable">Nh?? h??ng</label></li>
                    <li><input type="checkbox" id="sg-2" name="c"><label for="sg-1" class="lable">Khu vui ch??i</label></li>
                    <li><input type="checkbox" id="sg-3" name="c"><label for="sg-1" class="lable">Gi???i tr??</label></li>
                    <li><input type="checkbox" id="sg-4" name="c"><label for="sg-1" class="lable">C??ng vi??n</label></li>
                    <li><input type="checkbox" id="sg-5" name="c"><label for="sg-1" class="lable">B??i bi???n</label></li>
                </div>
            </div>

            <div class="container-right">
                <h4>K???t qu??? t??m ki???m (${countResult})</h4>
                <div class="sort-box">
                    <h5>S???p x???p</h5>
                    <div class="select-box">
                        <select name="" id="">
                            <option>Gi???m d???n l?????t ????nh gi??</option>
                            <option>Gi???m d???n l?????t th??ch</option>
                            <option>??i???m ????nh gi?? gi???m d???n</option>
                            <option>Gi???m d???n sao</option>
                        </select>
                    </div>
                    <div class="selection">Gi?? th???p tr?????c</div>	
                    <div class="selection">M???i c?? ????n ?????t ph??ng</div>	
                </div>
                <div class="section flex-center flex-column">
                    <c:forEach var="hs" varStatus="status" items="${requestScope.availableHotel}">
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
                                        <c:if test="${requestScope.cList.getSize(hs.id)==2||requestScope.cList.getSize(hs.id)==1}">                       
                                            <c:forEach var="hc" items="${requestScope.cList.getHotelConvenient(hs.id)}" varStatus="i">
                                                <li>${hc.convenient}</li>
                                                </c:forEach>                                                                                                                                                                                                            
                                            </c:if>
                                            <c:if test="${requestScope.cList.getSize(hs.id) > 2}">                                                                    
                                                <c:forEach var="hc" items="${requestScope.cList.getHotelConvenient(hs.id)}" begin="0" end="0">
                                                <li>${hc.convenient}</li>
                                                </c:forEach>                                                                            
                                            <li class="show-more">+${requestScope.cList.getSize(hs.id)-1}</li>
                                            <div class = "show-dd">
                                                <ol>
                                                    <c:forEach var="hc" items="${requestScope.cList.getHotelConvenient(hs.id)}" begin="1" end="4">
                                                        <li>${hc.convenient}</li>
                                                        </c:forEach>                                             
                                                </ol>                                                                  
                                            </div>
                                        </c:if>
                                    </ul>
                                </div>
                                <div class="add-infor">Gi???m gi?? m??a du l???ch</div>
                                <div class="add-infor">Mi???n ph?? ?????t&hu??? ph??ng</div>					
                            </div>
                            <div class="card-footer flex-center flex-column">
                                <div class="flex-center flex-column like-card like">
                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                    <div class="no-like">${hs.noLike}<span class="lable">l?????t th??ch</span></div>
                                </div>
                                <div class="card-score flex-center">
                                    <div class="left-side">
                                        <div class="rate">${hs.getrate()}</div>
                                        <div class="no-rate">${hs.noRate} ????nh gi??</div>
                                    </div>
                                    <div class="score right-side flex-center">${hs.avgScore}</div>
                                </div>
                                <div class="card-price flex-end flex-column"><%----%>
                                    <c:set var="pL" value="${requestScope.pList.get(status.index)}"/>
                                    <c:if test="${pL.discount > 0}">
                                        <div class="title">Gi?? ??u ????i</div>
                                        <div class="unit-price"><fmt:formatNumber type="number" pattern="###,###" value="${pL.price}"/></div>
                                        <div class="current-price"><span class="price"><fmt:formatNumber type="number" pattern="###,###" value="${pL.price*(1-pL.discount)}"/></span>
                                            <span class="unit lable">??</span></div>
                                        </c:if>
                                        <c:if test="${pL.discount == 0}">
                                        <div class="title">Gi?? th???p nh???t</div>
                                        <div class="current-price"><span class="price"><fmt:formatNumber type="number" pattern="###,###" value="${pL.price}"/></span>
                                            <span class="unit lable">??</span></div>
                                        </c:if>

                                </div>
                                    <div class="btn pick-room"><a href="http://localhost:8080/Hotel-Booking-System/hoteldetail?hotelId=${hs.id}">Xem ph??ng</a></div>
                            </div>
                        </div>
                    </c:forEach>
                    <c:set var="page" value="${page==null?1:page}"/>
                    <div class="pagin">
                        <c:if test="${page>1}"><a href="http://localhost:8080/Hotel-Booking-System/searchresult?page=${page-1}&filter=pagin" class="btn">Pre</a></c:if>
                        <c:forEach begin="1" end="${endpage}" var="p">
                            <a href="http://localhost:8080/Hotel-Booking-System/searchresult?page=${p}&filter=pagin" class="btn <c:if test="${p==page}">current-page</c:if>">${p}</a>
                        </c:forEach>
                        <c:if test="${page<endpage}"><a href="http://localhost:8080/Hotel-Booking-System/searchresult?page=${page+1}&filter=pagin" class="btn">Next</a></c:if></div>
                    </div>
                </div>	
            </div>
            <script type="text/javascript" src="js/double-range.js"></script>
            <footer class="footer">
        </footer>
    </body>
</html>
