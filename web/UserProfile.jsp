<!-- <%-- 
    Document   : UserProfile
    Created on : Jun 9, 2022, 3:33:56 PM
    Author     : DELL
--%> -->

<!-- <%@page contentType="text/html" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

        <script src="js/changeProfile.js" type="text/javascript"></script>
        <link href="css/Userprofile.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>




            #background{
                background-image: url("images/Beach_Background-885.jpg");
                background-attachment: fixed;
                background-repeat: no-repeat;
                background-size:100%;
                background-position: center;
                padding-bottom: 400px;
                padding-left: 100px;
                padding-right: 100px;
                padding-top: 50px;
            }






            /*            #LeftTableContent{
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

    </head>
    <!--    <body>
            <h1>Hello World!</h1>
        </body>-->


    <!--    background img-->

    <div id="background">

        <!--content-->
        <div id="content">

            <!--    top table-->

            <div id="toptable" style=" border:1px solid; border-radius:10px; width: 100%;height: 90px;
                 display: flex;justify-content:space-between ">

                <p>
                    <a href="http://localhost:8080/Hotel-Booking-System-main/Home.jsp">
                        <img alt="logo" src="images/sitelogo.png"
                             style="margin-left: 10px; height: 60px; width: 100%;border-radius:50px " >
                    </a>
                </p>
     
                <i class="fa fa-bell" aria-hidden="true"></i>
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
                                                                 <div id="account">
                <div>
       
                <div id="pass_change">
                    <form action="manageAccount" method="post">
                        <input type="hidden" name="option" value="2">
                        <input class="txt" type="password" name="old-pass" placeholder="Mật khẩu hiện tại">
                        <input class="txt" type="password" name="new-pass" placeholder="Mật khẩu mới">
                        <input class="txt" type="password" name="re-pass" placeholder="Nhập lại mật khẩu mới">
                        <input type="submit" name="submit" class="change" value="Lưu thay đổi"> 
                    </form>
                </div>
                
                <div><button class="change" id="changePass" onclick="changePassword()">Thay đổi mật khẩu</button></div>
            </div>
      
        </div>

                      
                        

                                <img src="images/headflip.png" alt="no man"
                                     style="width:60px;height:60px; margin-bottom: 5%;margin-right: 10px;border-radius: 100px">
                               
                       

                
                    
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
                        <div class="txt">${User.fullName}</div>


                        <hr  width="70%" size="2px" align="center" color="black" />

                        <div class="RightTableHeadlineText" style="text-align: left">Giới tính</div>

                        <!--                        <div class="gender">
                                                                                        <div class="lable">Giới tính</div>
                                                    <select name="gender">
                                                                                                        <option value="0">Giới tính của bạn là ?</option>
                                                        <option value="1">Nam</option>
                                                        <option value="2">Nữ</option>
                                                        <option value="3">Không xác định</option>
                                                    </select>
                                                </div>-->


                        <div id="gender" class="txt">${User.gender}</div>


                        <hr  width="70%" size="2px" align="center" color="black" />

                        <div class="RightTableHeadlineText" style="text-align: left">Ngày sinh</div>
                        <div class="txt">${User.dob}</div>


                        <hr  width="70%" size="2px" align="center" color="black" />

                        <div class="RightTableHeadlineText" style="text-align: left">Email</div>
                        <div class="txt">${User.email}</div>


                        <hr  width="70%" size="2px" align="center" color="black" />

                        <div class="RightTableHeadlineText" style="text-align: left">Số điện thoại</div>
                        <div class="txt">${User.phoneNumber}</div>


                        <hr  width="70%" size="2px" align="center" color="black" />

                        <div class="RightTableHeadlineText" style="text-align: left">Địa chỉ</div>
                        <div class="txt">${User.address}</div>


                        <hr  width="70%" size="2px" align="center" color="black" />


                        <!--                        <div class="RightTableHeadlineText" style="text-align: left">Thành phố</div>
                                                <div class="txt">${info.Cities}</div>
                        
                        
                                                <hr  width="70%" size="2px" align="center" color="black" style=" margin-bottom:4%;"  />-->

                        <button class="change" id="changeInfo"  onclick="changeInfo()">Chỉnh sửa</button>

                    </div>
                    <div id="info-change">
                        <form action="manageInfo" method="post">
                            <input type="hidden" name="check" value="${User.name}">
                            <h4>Tên đầy đủ</h4>
                            <input class="txt" type="text" name="name" value="${User.name}">
                            <h4>Giới tính</h4>
                            Nam<input id="isMale" type="radio" name="gender" value="Nam">
                            Nữ<input id="isFemale" type="radio" name="gender" value="Nữ">
                            Khác<input id="isOther" type="radio" name="gender" value="Khác">
                            <h4>Ngày sinh</h4>
                            <input class="txt" type="text" name="birth" value="${User.dob}">
                           
                            <h4>Số điện thoại</h4>
                            <input class="txt" type="text" name="phone" value="${User.phoneNumber}">
                            
                            <h4>Địa chỉ</h4>
                            <input class="txt" type="text" name="address" value="${User.address}">
                            <input type="submit" name="submit" class="change" value="Lưu thay đổi">
                        </form>
                    </div>
                </div>
            </div>
      
</div>
        </div>
                            
    </div>

</html>
