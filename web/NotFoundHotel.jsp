<%-- 
    Document   : NotFoundHotel
    Created on : 16-Jul-2022, 15:01:05
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <style type="text/css">
            .header.nav-top,
            .search-wrapper{
                box-shadow: 1px 1px 5px #cc8c18;
            }
            .notfound-wrapper{
                width: 50%;
                height: 20vh;
                margin: 5% 25% 10px 25%;
                cursor: default;
            }
            .notfound-wrapper .header{
                font-size: 24px;
                letter-spacing: 1px;
                color: #cc8c18;
            }
            .notfound-wrapper p{
                margin: 5% 20%;
                font-size: 18px;
            }
            
            .search-wrapper{
                transform: translateY(90px);
                box-shadow: 1px 1px 5px #cc8c18;
            }
            .search-wrapper .search-box-x{
                grid-template-rows: repeat(4,0.5fr);
                box-shadow: 5px 5px 25px #cc8c18;
            }
            
            
            .search-box-x {
                background-color: #F79B47;
                margin: 10% 25%;
                border-radius: 10px;
            }
            .search-box-x .input-box {
                grid-column-start:3;
            }
            
            .search-box-x .date-select-box{
                width: 100%;
                grid-column-start:3;
                grid-row-start:2;
            }
            .search-box-x .select-box{
                grid-column-start:3;
                grid-row-start:3;
            }
            .search-box-x .footer{
                grid-column-start:3;
                grid-row-start:4;
            }
            
        </style>
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
        
        <div class="notfound-wrapper flex-center flex-column">
            <div class="header">
                Opps, Không tìm được khách sạn phù hợp
            </div>
            <p>Đây là việc thường ở huyện hãy để chúng tôi cùng bạn tìm và khám phá nhiều khách sạn khác</p>
        </div>
        <div class="search-wrapper flex-center">
            <jsp:include page="component/search-box.jsp"></jsp:include>
        </div>
        <script src="js/pick-date.js"></script>
        <script src="js/search-box.js"></script>
        
    </body>
</html>
