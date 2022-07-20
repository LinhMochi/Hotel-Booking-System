<!-- <%-- 
    Document   : UserProfile
    Created on : Jun 9, 2022, 3:33:56 PM
    Author     : DELL
--%> -->

<!-- <%@page contentType="text/html" pageEncoding="UTF-8"%> -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

        <script src="js/changeProfile.js" type="text/javascript"></script>
        <link href="css/Userprofile.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style type="text/css">
            body {
                color: #566787;
                background: #7F8CC0;
                font-family: 'Varela Round', sans-serif;
                font-size: 13px;
            }
            .table-responsive {
                margin: 30px 30px;

                display: block;
                width: 102%;
                overflow-x: auto;
            }

            .txt{
                padding-left: 10%;
                font-size: 20px;
                margin: 0% 10%;
            }
            .table-wrapper {
                background: #fff;
                padding: 20px 25px;
                border-radius: 3px;
                min-width: 1000px;
                box-shadow: 0 1px 1px rgba(0,0,0,.05);
            }
            .table-title {        
                padding-bottom: 15px;
                background: #FF9E36;
                color: #fff;
                padding: 16px 30px;
                min-width: 100%;
                margin: -20px -25px 10px;
                border-radius: 3px 3px 0 0;
            }
            .table-title h2 {
                margin: 5px 0 0;
                font-size: 24px;
            }
            .table-title .btn-group {
                float: right;
            }
            .table-title .btn {
                color: #fff;
                float: right;
                font-size: 13px;
                border: none;
                min-width: 50px;
                border-radius: 2px;
                border: none;
                outline: none !important;
                margin-left: 10px;
            }
            .table-title .btn i {
                float: left;
                font-size: 21px;
                margin-right: 5px;
            }
            .table-title .btn span {
                float: left;
                margin-top: 2px;
            }
            table.table tr th, table.table tr td {
                border-color: #e9e9e9;
                padding: 12px 15px;
                vertical-align: middle;
            }
            table.table tr th:first-child {
                width: 60px;
            }
            table.table tr th:last-child {
                width: 100px;
            }
            table.table-striped tbody tr:nth-of-type(odd) {
                background-color: #fcfcfc;
            }
            table.table-striped.table-hover tbody tr:hover {
                background: #f5f5f5;
            }
            table.table th i {
                font-size: 13px;
                margin: 0 5px;
                cursor: pointer;
            }	
            table.table td:last-child i {
                opacity: 0.9;
                font-size: 22px;
                margin: 0 5px;
            }
            table.table td a {
                font-weight: bold;
                color: #566787;
                display: inline-block;
                text-decoration: none;
                outline: none !important;
            }
            table.table td a:hover {
                color: #2196F3;
            }
            table.table td a.edit {
                color: #FFC107;
            }
            table.table td a.delete {
                color: #F44336;
            }
            table.table td i {
                font-size: 19px;
            }
            table.table .avatar {
                border-radius: 50%;
                vertical-align: middle;
                margin-right: 10px;
            }
            .pagination {
                float: right;
                margin: 0 0 5px;
            }
            .pagination li a {
                border: none;
                font-size: 13px;
                min-width: 30px;
                min-height: 30px;
                color: #999;
                margin: 0 2px;
                line-height: 30px;
                border-radius: 2px !important;
                text-align: center;
                padding: 0 6px;
            }
            .pagination li a:hover {
                color: #666;
            }	
            .pagination li.active a, .pagination li.active a.page-link {
                background: #03A9F4;
            }
            .pagination li.active a:hover {        
                background: #0397d6;
            }
            .pagination li.disabled i {
                color: #ccc;
            }
            .pagination li i {
                font-size: 16px;
                padding-top: 6px
            }
            .hint-text {
                float: left;
                margin-top: 10px;
                font-size: 13px;
            }    
            /* Custom checkbox */
            .custom-checkbox {
                position: relative;
            }
            .custom-checkbox input[type="checkbox"] {    
                opacity: 0;
                position: absolute;
                margin: 5px 0 0 3px;
                z-index: 9;
            }
            .custom-checkbox label:before{
                width: 18px;
                height: 18px;
            }
            .custom-checkbox label:before {
                content: '';
                margin-right: 10px;
                display: inline-block;
                vertical-align: text-top;
                background: white;
                border: 1px solid #bbb;
                border-radius: 2px;
                box-sizing: border-box;
                z-index: 2;
            }
            .custom-checkbox input[type="checkbox"]:checked + label:after {
                content: '';
                position: absolute;
                left: 6px;
                top: 3px;
                width: 6px;
                height: 11px;
                border: solid #000;
                border-width: 0 3px 3px 0;
                transform: inherit;
                z-index: 3;
                transform: rotateZ(45deg);
            }
            .custom-checkbox input[type="checkbox"]:checked + label:before {
                border-color: #03A9F4;
                background: #03A9F4;
            }
            .custom-checkbox input[type="checkbox"]:checked + label:after {
                border-color: #fff;
            }
            .custom-checkbox input[type="checkbox"]:disabled + label:before {
                color: #b8b8b8;
                cursor: auto;
                box-shadow: none;
                background: #ddd;
            }
            /* Modal styles */
            .modal .modal-dialog {
                max-width: 400px;
            }
            .modal .modal-header, .modal .modal-body, .modal .modal-footer {
                padding: 20px 30px;
            }
            .modal .modal-content {
                border-radius: 3px;
                font-size: 14px;
            }
            .modal .modal-footer {
                background: #ecf0f1;
                border-radius: 0 0 3px 3px;
            }
            .modal .modal-title {
                display: inline-block;
            }
            .modal .form-control {
                border-radius: 2px;
                box-shadow: none;
                border-color: #dddddd;
            }
            .modal textarea.form-control {
                resize: vertical;
            }
            .modal .btn {
                border-radius: 2px;
                min-width: 100px;
            }	
            .modal form label {
                font-weight: normal;
            }

            .btn-info {
                color: #fff;
                background-color: orange;
                border-color: orange;
            }
            #changeInfo:hover{
                background-color: #17a2b8;
            }
            .btn-success {
                color: #fff;
                background-color: orange;
                border-color: orange;
            }




            #background{
/*                background-image: url("images/Beach_Background-885.jpg");
                background-attachment: fixed;
                background-repeat: no-repeat;
                background-size:100%;
                background-position: center;*/
                padding-bottom: 400px;
                padding-left: 100px;
                padding-right: 100px;
                padding-top: 50px;
            }






            /*                        #LeftTableContent{
                                        background-color:white;
                        
                                    }
                        
                                    #RightTableContent{
                                        background-color: white;
                                    }
                        
                                    #toptable{
                                        background-color: white;
                                    }
                        
                                    .LeftTableDetail{
                                        width: 100%;
                                    }
                        
                                    .a_left {
                                        color: orange;
                                        font-size: 20px
                                    }
                        
                                    .a_left_profile{
                                        color:  #33ccff;
                                        font-size: 20px;
                                        text-decoration: none;
                                    }
                        
                                    .a_left_profile:hover{
                                        text-decoration: none;
                                        color: red;
                                        font-weight: bold;
                                    }
                        
                                    .a_left:link{
                                        text-decoration: none;
                                        color: red;
                                    }
                        
                                    .a_left:visited {
                                        text-decoration: none;
                                    }
                        
                                    .a_left:hover {
                                        text-decoration: none;
                                        color: red;
                                        font-weight: bold;
                                    }
                        
                                    .a_left:active {
                                        text-decoration: none;
                                        color: red;
                                    }
                        
                        
                        
                        
                                    body{
                                        box-sizing: border-box;
                                        padding: 0;
                                        margin: 0;
                                    }
                        
                                
                        
                        
                        
                                     Style The Dropdown Button 
                                    .dropbtn {
                                        background-color: white;
                                        color: white;
                                        padding: 11px;
                                        font-size: 1px;
                                        border: none;
                                        cursor: pointer;
                                        border-radius: 120px;
                                        height: 90%;
                                        width: 90px;
                                        margin-top: 2px;
                        
                        
                                    }
                        
                                     The container <div> - needed to position the dropdown content 
                                    .dropdown {
                                        position: relative;
                                        display: inline-block;
                                    }
                        
                                     Dropdown Content (Hidden by Default) 
                                    .dropdown-content {
                                        display: none;
                                        position: absolute;
                                        background-color: #f9f9f9;
                                        min-width: 160px;
                                        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                                        z-index: 1;
                                    }
                        
                                     Links inside the dropdown 
                                    .dropdown-content a {
                                        color: black;
                                        padding: 12px 16px;
                                        text-decoration: none;
                                        display: block;
                                    }
                        
                                     Change color of dropdown links on hover 
                                    .dropdown-content a:hover {background-color: #f1f1f1}
                        
                                     Show the dropdown menu on hover 
                                    .dropdown:hover .dropdown-content {
                                        display: block;
                                    }
                        
                                     Change the background color of the dropdown button when the dropdown content is shown 
                                    .dropdown:hover .dropbtn {
                                        background-color: #33ccff;
                                    }
                        
                                    .RightTableHeadlineText{
                                        margin-top: 2%;
                                        margin-bottom: 5%;
                                        font-size: 18px;
                                        font-family: sans-serif;
                                        color: orange;
                                        padding-left: 7%;
                                    }
                        
                                    .edit{
                                        color: blue;
                                        font-size: 16px;
                                        padding-left: 14%;
                                        text-decoration: none;
                        
                                    }
                                    .edit:hover{
                                        color: orange;
                                        font-weight: bold;
                                    }
                        
                                    .change{
                                            float: left;
                                        color: white;
                                        background-color: orange;
                                        padding: 10px 20px;
                                        border-radius: 20px;
                                        margin-left: 5%;
                                        margin-bottom: 20px;
                                        margin-top: 8px;
                                    }
                        
                        
                        
                                    .gender {
                                        margin-bottom: 2%;
                                        margin-left: 15%
                                    }
                                    .gender input,.gender select{
                                        width: 200px;
                                        font-size: 1rem;
                                        outline: none;
                                        border: none;
                                        border-bottom: 2px solid gray;
                                        transition: 1s ease;
                                        background: transparent;
                        
                                    }
                                    .gender input:focus{
                                        border-bottom-color: greenyellow;
                                    }*/




        </style>

        <script>
            $(document).ready(function () {
                // Activate tooltip
                $('[data-toggle="tooltip"]').tooltip();

                // Select/Deselect checkboxes
                var checkbox = $('table tbody input[type="checkbox"]');
                $("#selectAll").click(function () {
                    if (this.checked) {
                        checkbox.each(function () {
                            this.checked = true;
                        });
                    } else {
                        checkbox.each(function () {
                            this.checked = false;
                        });
                    }
                });
                checkbox.click(function () {
                    if (!this.checked) {
                        $("#selectAll").prop("checked", false);
                    }
                });
            });
        </script>

    </head>
        
    
    
            <body style="background-image: url(images/hotelDetail-background.jpg);background-attachment: fixed;
      background-repeat: no-repeat;
      background-size:101%;
      background-position: center;; font-weight: 100%">
        </body>


        
        
    <!--    background img-->

    <div id="background">

        <!--content-->
        <div id="content">

            <!--    top table-->

            <div id="toptable" style=" border:1px solid; border-radius:10px; width: 100%;height: 90px;
                 display: flex;justify-content:space-between ">

                <p>
                    <a href="http://localhost:8080/Hotel-Booking-System-main/home">
                        <img alt="logo" src="images/sitelogo.png"
                             style="margin-left: 10px; height: 60px; width: 100%;border-radius:50px " >
                    </a>
                </p>


                <div class="dropdown">
                    <button class="dropbtn">

                        <img src="images/headflip.png" alt="no man"
                             style="width:60px;height:60px; margin-bottom: 5%;margin-right: 10px;border-radius: 100px">
                    </button>

                    <div class="dropdown-content">
                        <a href="#">Thông tin</a>
                        <a href="#">Đơn đặt phòng</a>
                        <a href="#">Hóa đơn của tôi</a>
                        <div><a href="http://localhost:8080/Hotel-Booking-System-main/Home.jsp">Đăng xuất</a></div>
                    </div>
                </div>

            </div>



        </div> 

        <div id="tables" style="display: flex;width: 100%">
            <!--left table-->
            <div id="lefttable" style="display:inline-block; width:20%;padding-top: 10px"

                 <!--     table left-->

                 <div id="LeftTableContent" style=" border:1px solid; border-radius:20px; width: 100%">

                    <!--inside of table-->

                    <div class="LeftTableDetail" style="text-align: center ;padding-top: 5px">

                        <hr  width="70%" size="2px" align="center" color="black" style=" margin-top: 50px;"  />

                        <!--                 user profile-->

                        <a class="a_left_profile" href="http://localhost:8080/Hotel-Booking-System-main/UserProfile.jsp"
                           style="text-align: center;padding-top: 5px">Thông tin</a>

                        <hr  width="70%" size="2px" align="center" color="black" />

                        <a class="a_left" href="" style="text-align: center;padding-top: 5px">Hóa đơn</a>

                        <hr  width="70%" size="2px" align="center" color="black" />

                        <a class="a_left" href="" style="text-align: center;padding-top: 5px">Khách sạn</a>

                        <hr  width="70%" size="2px" align="center" color="black" />

                        <a class="a_left" href  style="text-align: center;padding-top: 5px">Đánh giá</a>

                        <hr  width="70%" size="2px" align="center" color="black" style=" margin-bottom:20px;"  />


                        <a href="#addEmployeeModal" class="edit" data-toggle="modal">
                            <button class="change" id="changeInfo" style="margin-right:20% "  onclick="changeInfo()">Đổi mật khẩu</button></a>

                        <!-- Edit Modal HTML -->
                        <div id="addEmployeeModal" class="modal fade">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form>
                                        <div class="modal-header">						
                                            <h4 class="modal-title">Đổi mật khẩu</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        </div>
                                        <div class="modal-body">					
                                            <div class="form-group">
                                                <label>Mật Khẩu cũ</label>
                                                <input type="password" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Mật khẩu mới</label>
                                                <input type="password" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Nhập lại mật khẩu mới</label>
                                                <input type="password" class="form-control" required>
                                            </div>

                                        </div>
                                        <div class="modal-footer">
                                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy">
                                            <input type="submit" class="btn btn-success" value="Đổi mật khẩu">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>



                        <!--                        <img src="images/headflip.png" alt="no man" 
                                                     style="text-align: center;width:70px;height:70px; margin-bottom: 20px"/>-->

                    </div>
                </div>
            </div>

            <!--right table-->

            <div id="righttable" style="display:inline-block; width:80%;padding-top: 10px"

                 <!--     table right-->

                 <div id="RightTableContent" style=" border:1px solid; border-radius:20px; width: 95%;margin-left: 50px">
                    <!--inside of table-->

                    <div  style="text-align: left">



                        <div class="RightTableHeadlineText" style="text-align: left; margin-top: 4%">Tên đầy đủ</div>
                        <div class="txt">${sessionScope.user.fullName}</div>


                        <hr  width="70%" size="2px" align="center" color="black" />

                        <div class="RightTableHeadlineText" style="text-align: left">Giới tính</div>



                        <div id="gender" class="txt">${sessionScope.user.getgen()}</div>


                        <hr  width="70%" size="2px" align="center" color="black" />

                        <div class="RightTableHeadlineText" style="text-align: left">Ngày sinh</div>
                        <div class="txt">${sessionScope.user.getdob()}</div>


                        <hr  width="70%" size="2px" align="center" color="black" />

                        <div class="RightTableHeadlineText" style="text-align: left">Email</div>
                        <div class="txt">${sessionScope.user.email}</div>


                        <hr  width="70%" size="2px" align="center" color="black" />


                        <div class="RightTableHeadlineText" style="text-align: left">Địa chỉ</div>
                        <div class="txt">${sessionScope.user.address}</div>


                        <hr  width="70%" size="2px" align="center" color="black" />


                        <div class="RightTableHeadlineText" style="text-align: left">Số điện thoại</div>
                        <div class="txt">${sessionScope.user.phoneNumber}</div>


                        <hr  width="70%" size="2px" align="center" color="black" />







                        <a href="#editEmployeeModal" class="edit" data-toggle="modal"><button class="change" id="changeInfo"  onclick="changeInfo()">Chỉnh sửa</button></a>

                    </div>
                    <!-- Edit Modal HTML -->
                    <div id="editEmployeeModal" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form>
                                    <div class="modal-header">						
                                        <h4 class="modal-title">Chỉnh Sửa</h4>
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    </div>
                                    <div class="modal-body">					
                                        <div class="form-group">
                                            <label>Tên đầy đủ</label>
                                            <input type="text" class="form-control" required>
                                        </div>

                                        <div class="form-group">
                                            <label>Giới tính  </label><br>

                                            Nam &nbsp <input id="isMale" type="radio" name="gender" value="Nam">
                                            &nbsp Nữ &nbsp<input id="isFemale" type="radio" name="gender" value="Nữ">
                                            &nbsp Khác &nbsp <input id="isOther" type="radio" name="gender" value="Khác">
                                        </div>


                                        <div class="form-group">
                                            <label>Ngày sinh</label>
                                            <input type="date" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Số điện thoại</label>
                                            <input type="text" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Địa chỉ</label>
                                            <input type="number" class="form-control" required>
                                        </div>

                                    </div>
                                    <div class="modal-footer">
                                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy">
                                        <input type="submit" class="btn btn-info" value="Lưu">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

</div>

</html>
