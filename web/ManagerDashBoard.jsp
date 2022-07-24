<%-- 
    Document   : ManagerDashBoard
    Created on : 24-Jul-2022, 12:47:56
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="css/layout-style.css" rel="stylesheet" type="text/css"/>
        <link href="css/aside-nav.css" rel="stylesheet" type="text/css"/>

        <style type="text/css">
            @import url('https://fonts.googleapis.com/css2?family=Dancing+Script&family=My+Soul&family=Smooch&family=Tapestry&display=swap');

            /*font-family: 'Dancing Script', cursive;*/
            *{
                font-family: 'Dancing Script', cursive;
            }

            h2{
                font-size: 36px;
                color: #cc8c18;

            }
            
            .main-right{
                background-color: rgba(0,0,0,0.01);
            }
            .main-right header{
                position: relative;
                padding: 20px 5%;
                margin-bottom:  1rem;
                box-shadow: 1px 2px 5px #cc8c18;
            }

            .main-right .header{
                padding: 3% 5%;
                position: relative;

            }
            
            .main-right .header>div:last-child{
                display: grid;
                grid-template-columns: repeat(4,1fr);
                grid-gap:5rem;
               
            }
            
            .main-right .header>div:last-child{
                max-height: 0;
                overflow: hidden;
                padding: 2px;
                transition: max-height 0.5s;
            }
            
            .main-right .header.active .fa-plus-square{display: none;}
            .main-right .header:not(.active) .fa-minus-square{display: none;}
            
            .main-right .header.active>div:last-child{
                max-height: 200px;
               
            }
            
            .main-right .header .action{
                position: absolute;
                top: 0;
                right: 6%;
            }
            
            .main-right .header .action i{
                color: #cc8c18;
                transition: font-size 0.5s;
                font-size: 24px; 
                
            }
            
 
            
            .main-right .header .action i.fa:after{
                position: absolute;
                font-size: 18px;
                padding: 5px 10px;
                background-color: rgba(0,0,0,0.2);
                color: #fff;
                border-radius: 5px;
                left: 25px;
                opacity: 0;
            }
            .main-right .header .action i.fa-minus-square:after{
                content:'Ẩn';
            }
            .main-right .header .action i.fa-plus-square:after{
                content:'Hiện';
            }
            
            .main-right .header .action i:hover.fa:after{
                opacity: 1;
            }

            .main-right .header .contain{
                display: grid;
                grid-template-columns: 0.7fr 1fr;
                align-items: center;
                justify-items: center;
                grid-gap:10px;

                border-radius: 10px;
                box-shadow: 1px 1px 5px 1px rgba(0,0,0,0.2);
                padding: 10px 10px 10px 10px;
                min-height: 120px;
            }

            .main-right .header .contain>div:first-child{
                grid-row:1/3;
                font-size: 2rem;
                color: #cc8c18;
            }
            .main-right .header .contain>div:last-child{
                grid-column:2;
                padding: 2px 20px;
                border-radius: 5px;
                background-color: #cc8c18;
                color: #fff;
                transition: transform 0.5s;
            }

            .main-right .header .contain:hover{
                box-shadow: 1px 1px 5px 1px rgba(0,0,0,0.8);
            }
            .main-right .header .contain>div:last-child:hover{
                transform: scale(1.2);

            }
            .main-right .chart-container{
                display: grid;
                grid-template-columns:1fr 2fr;
                grid-gap:15px;
                padding: 3% 3%;
            }
            
            .main-right .chart-container>div{
                padding: 5px;
                border-radius: 5px;
                box-shadow: 1px 1px 5px 1px rgba(0,0,0,0.1);
            }
        </style>
    </head>
    <body>
        <div class="aside-navigation">
            <jsp:include page="component/aside-nav-manage.jsp"/>
        </div>
        <script src="js/aside-nav.js" type="text/javascript"></script>

        <div class="main-right">
            <header class="flex-between">
                <h2>${hotelDash.name}</h2>
                <div><i class="fa fa-map-marker" aria-hidden="true"></i>${hotelDash.address}</div>
            </header>
            <div class="header active">
                <div class="action">
                    <i class="fa fa-minus-square flex-center" aria-hidden="true"></i>
                    <i class="fa fa-plus-square flex-center " aria-hidden="true"></i>
                </div>
                <div>
                    
                <div class="contain">
                    <div class="">
                        ${noPending}
                    </div>
                    <div class="label">
                        Đơn chưa check
                    </div>
                    <div class="">
                        <a href="#">Check </a>
                    </div>
                </div>
                <div class="contain">
                    <div class="">
                        ${noCust}
                    </div>
                    <div class="label">
                        Khách hàng
                    </div>
                    <div class="">
                        <a href="#">Xem</a>
                    </div>
                </div>
                <div class="contain">
                    <div class="">
                        ${noRate}
                    </div>
                    <div class="label">
                        Đánh giá
                    </div>
                    <div class="">
                        <a href="#">Xem</a>
                    </div>
                </div>
                <div class="contain">
                    <div class="">
                        ${noRoom}
                    </div>
                    <div class="label">
                        Phòng
                    </div>
                    <div class="">
                        <a href="#">Xem</a>
                    </div>
                </div>
                </div>
            </div>
            <script type="text/javascript">
            const h = document.querySelector('.main-right .header');
            console.log(h);
            if(h !== null) h.querySelectorAll('.action i.fa').forEach(fai=>{
                console.log(fai);
                 fai.addEventListener('click',()=>{                     
                    h.classList.toggle('active');                    
                });
                 
            });
            </script>
            <div class="chart-container">
                <div>
                    <h3>Phản hồi của khách hàng</h3>
                    <div>
                        <canvas id="myChart" width="100%" height="100%"></canvas>
                    </div>
                    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"></script>
                    <script>

                        const datam = {
                            labels: [
                                'Tuyệt vời',
                                'Tốt',
                                'Tạm được',
                                'Tệ',
                                'Chưa đánh giá'
                            ],
                            datasets: [{
                                    label: 'My First Dataset',
                                    data: [11, 16, 7, 3, 14],
                                    backgroundColor: [
                                        'rgb(255, 99, 132)',
                                        'rgb(75, 192, 192)',
                                        'rgb(255, 205, 86)',
                                        'rgb(201, 203, 207)',
                                        'rgb(54, 162, 235)'
                                    ]
                                }]
                        };
                        const configm = {
                            type: 'polarArea',
                            data: datam,
                            options: {}
                        };
                        const myChart = new Chart(
                                document.getElementById('myChart'),
                                configm
                                );
                    </script>
                </div>
                <div>
                    <h3>Doanh thu</h3>
                    <canvas id="area_Chart" width="650px" height="358px"></canvas>
                </div>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"></script>
            <script>
                        const labels = [
                            'Tháng 1',
                            'Tháng 2',
                            'Tháng 3',
                            'Tháng 4',
                            'Tháng 5',
                            'Tháng 6',
                            'Tháng 7'
                        ];

                        const data = {
                            labels: labels,
                            datasets: [{
                                    label: 'Tổng doanh thu(triệu VNĐ)',
                                    backgroundColor: 'rgba(255, 99, 132,0.05)',
                                    borderColor: 'rgb(123, 99, 132)',
                                    data: [15, 10, 25, 15, 6, 10, 12, 18]
                                }]
                        };

                        const config = {
                            type: 'line',
                            data: data,
                            options: {}
                        };

                        const area_Chart = new Chart(
                                document.getElementById('area_Chart'),
                                config
                                );

            </script>
            <div>
                
            </div>
        </div>
    </body>
</html>
