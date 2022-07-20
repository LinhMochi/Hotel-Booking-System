<%-- 
    Document   : ViewHotel
    Created on : Jul 19, 2022, 12:19:55 PM
    Author     : Nhat Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer"
              />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />
        <title>JSP Page</title>
        <style>
            body{
                background: #DAE3E7;
                font-family: "Roboto", sans-serif
            }
            img{
                max-width:100%
            }
            .row{
                margin-top: 40px;
            }

            .card {
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 3px 10px 0 rgba(0, 0, 0, 0.1);
            }

            .header {
                padding: 10px 0;
                background: #f5f5f5;
                border-top: 3px solid #3AAA64;
            }
            .button-email{
                margin:10px 0
            }
            h5, .fa-circle{
                color:#3AAA64
            }

            .list-group {
                list-style: disc inside;

            }

            .list-group-item {
                display: list-item;
            }

            .find-more{
                text-align: right;
            }


            .label-theme{
                background: #3AAA64;
                font-size: 14px;
                padding: .3em .7em .3em;
                color: #fff;
                border-radius: .25em;
            }

            .label a{
                color: inherit;
            }

        </style>
    </head>
    <body>
        <form>
            <header class="header">
                <div class="container">
                    <div class="teacher-name">
                        <div class="row">
                            <div class="col-sm-9">
                                <h2><strong>INFORMATION HOTEL</strong></h2>
                            </div>
                        </div>
                    </div>

                    <div class="row" style="margin-top:20px;">
                        <div class="col-sm-3"> 
                            <a href="#"> <img class="rounded-circle" src="https://scontent.fhan3-2.fna.fbcdn.net/v/t39.30808-6/278707548_1153876168745291_8507159064187131409_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=6u6IgBjRmNUAX9nR-zW&_nc_ht=scontent.fhan3-2.fna&oh=00_AT_yEgdCjRAFecWulBrRRVNHqoe58R3B0rOUmIsAx9rKHg&oe=62DAB31E" alt="Rick" ></a>
                        </div>

                        <div class="col-sm-6"> 
                            <h5Associate Professor, <small>Dept. of Alien Agriculture, Jaarvlar-3 University</small></h5>
                               Address: <p> 123 Cuba str Tampa, Fl, Earth 137</p>
                               Address: <p> 123 Cuba str Tampa, Fl, Earth 137</p>
                               Address: <p> 123 Cuba str Tampa, Fl, Earth 137</p>
                               Address: <p> 123 Cuba str Tampa, Fl, Earth 137</p>
                               Address: <p> 123 Cuba str Tampa, Fl, Earth 137</p>
                        </div>

                        <div class="col-sm-3 text-center social">
                            <span class="number">Phone:<strong>+0001732226402</strong></span>
                            <div class="button-email">
                                <a href="" class="btn btn-outline-success btn-block"><i class="fa fa-envelope-o"></i> Send Email</a>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card card-block">
                            <h5><i class="fa fa-rocket fa-fw"></i></h5>
                            <ul class="list-group" style="margin-top:15px;margin-bottom:15px;">
                                <li class="list-group-item">Cloud & Parallel Computing</li>
                                <li class="list-group-item">Big Data Analysis and Management</li>
                                <li class="list-group-item">High-performance and Low-Power Real-Time Systems</li>
                                <li class="list-group-item">Mobile Embedded Systems and Network Security</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div> 
        </form>
    </body>
</html>
