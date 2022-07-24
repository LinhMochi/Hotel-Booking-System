<%-- 
    Document   : AdminRoomController
    Created on : Jul 20, 2022, 2:40:11 PM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- <%@page contentType="text/html" pageEncoding="UTF-8"%> -->
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">

        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>jsp page</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />

        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style>

            .container-fluid, .container-lg, .container-md, .container-sm, .container-xl {
                width: 100%;
                padding-right: 15px;
                padding-left: 15px;
                margin-right: auto;
                margin-left: auto;
                margin-top: 10%;
            }

            body {
                color: #566787;

                font-family: 'Varela Round', sans-serif;
                font-size: 13px;
                background-image: url("images/Beach_Background-885.jpg");
                background-attachment: fixed;
                background-repeat: no-repeat;
                background-size:100%;
                background-position: center;
                padding-bottom: 100px;
                padding-left: 100px;
                padding-right: 100px;
                padding-top: 50px;
            }
            .table-responsive {
                margin: 30px 30px;

                display: block;
                width: 102%;
                overflow-x: auto;
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
        <link href="css/aside-nav.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="css/layout-style.css">

    </head>
    <body style="padding:0px">
        <header  id="top" class="header aside-navigation">
            <jsp:include page="component/aside-nav-admin.jsp"/>
        </header>

        <script src="js/aside-nav.js" type="text/javascript"></script>
        <div class="main-right">


            <div>

                <div class="container" style="margin-top :30px;margin-left: 180px" >
                    <form action="AdminRoom">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i></button>
                            </div>
                            <input minlength="1" type="text" class="form-control" placeholder="Search By Room Type" aria-label="" aria-describedby="basic-addon1" name="searchName">
                        </div>
                    </form>
                </div>

                <div class="container-xl" style="margin-top:-10px">
                    <div class="table-responsive">
                        <div class="table-wrapper">
                            <div class="table-title">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <h2>Manage <b>Rooms</b></h2>
                                    </div>
                                    <div class="col-sm-6">

                                        <div class="container" style="margin-top :30px;padding-right:20px;padding-left: 250px" >
                                            <form action="AdminRoom">
<!--                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                        <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i></button>
                                                    </div>
                                                    <input minlength="1" type="text" class="form-control" placeholder="Search By Hotel Id" aria-label="" aria-describedby="basic-addon1" name="searchId">
                                                </div>-->
                                                <a href="#addRoomModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Room</span></a>
                                            </form>
                                        </div>


                                        <!--                                <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete Room</span></a>						-->
                                    </div>
                                </div>
                            </div>
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <!--                                <th>
                                                                            <span class="custom-checkbox">
                                                                                <input type="checkbox" id="selectAll">
                                                                                <label for="selectAll"></label>
                                                                            </span>
                                                                        </th>-->
                                        <th>Room Id</th>
                                        <th>Room Type</th>
                                        <th>Image</th>
                                        <th>Quantity</th>
                                        <th>Price (VNĐ)</th>
                                        <th>Max Adults</th>
                                        <th>Max Child</th>
                                        <th>Bed</th>
                                        <th>Area</th>
                                        <th>Description</th>
                                        <th>Hotel Id</th>
                                        <th>Action</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="room" items="${list}">
                                        <tr>
                                            <!--                                <td>
                                                                                <span class="custom-checkbox">
                                                                                    <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                                                                    <label for="checkbox1"></label>
                                                                                </span>
                                                                            </td>-->
                                            <td>${(list.indexOf(room) + 1) + (page-1) * numberOfImage}</td>
                                            <td>${room.name}</td>
                                            <td><img src="${room.image}" width="130" height="90" alt="hotel-img"></td>
                                            <td>${room.quantity}</td>
                                            <td><fmt:formatNumber type="number" pattern="###,###" value="${room.price}"/></td>
                                            <td>${room.maxAdult}</td>
                                            <td>${room.maxChild}</td>
                                            <td>${room.bed}</td>
                                            <td>${room.area}</td>
                                            <td>${room.description}</td>
                                            <td>${room.hotelId}</td>
                                            <td>
                                                <a href="#editRoomModal${room.id}" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                                <a href="#deleteRoomModal${room.id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                            </td>
                                        </tr>
                                        <!-- Edit Modal HTML -->
                                    <div id="editRoomModal${room.id}" class="modal fade">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <form action="AdminRoomUpdate" method="POST">
                                                    <div class="modal-header">						
                                                        <h4 class="modal-title">Update Room</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    </div>
                                                    <div class="modal-body">	
                                                        <div class="form-group">
                                                      
                                                            <input type="hidden" class="form-control" required name="Id" value="${room.id}">
                                                        </div>

                                                        <div class="form-group">
                                                            <label>Room Type</label>
                                                            <input type="text" class="form-control" required name="name" value="${room.name}">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Image URL</label>
                                                            <textarea type="text" class="form-control" required name="image" >${room.image}</textarea>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Quantity</label>
                                                            <input type="number" class="form-control" required name="quantity" value="${room.quantity}">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Price</label>
                                                            <input type="number" class="form-control" required name="price" value="${room.price}">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Max Adults</label>
                                                            <input type="number" class="form-control" required name="maxadult" value="${room.maxAdult}">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Max Child</label>
                                                            <input type="number" class="form-control" required name="maxchild" value="${room.maxChild}">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Bed</label>
                                                            <input type="text" class="form-control" required name="bed" value="${room.bed}">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Area</label>
                                                            <input type="text" class="form-control" required name="area" value="${room.area}">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Description</label>
                                                            <input type="text" class="form-control" required name="description" value="${room.description}">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Hotel Id</label>
                                                            <input type="number"  class="form-control" name="hotelId"  value="${room.hotelId}">
                                                        </div>


                                                    </div>
                                                    <div class="modal-footer">
                                                        <input type="hidden" name="currentpage" value="${page}">
                                                        <input type="hidden" name="id" value="${room.id}">
                                                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                                        <input type="submit" class="btn btn-info" value="Save">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Delete Modal HTML -->
                                    <div id="deleteRoomModal${room.id}" class="modal fade">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <form action="AdminRoomDelete" method="POST">
                                                    <div class="modal-header">						
                                                        <h4 class="modal-title">Delete Room</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    </div>
                                                    <div class="modal-body">					
                                                        <p>Are you sure you want to delete these Records?</p>
                                                        <p class="text-warning"><small>This action cannot be undone.</small></p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <input type="hidden" name="currentpage" value="${page}">
                                                        <input type="hidden" name="id" value="${room.id}">
                                                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                                        <input type="submit" class="btn btn-danger" value="Delete">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>



                                </c:forEach>



                                <!--                            <tr>
                                                                <td>
                                                                    <span class="custom-checkbox">
                                                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                                                        <label for="checkbox1"></label>
                                                                    </span>
                                                                </td>
                                                                <td>Thomas Hardy</td>
                                                                <td>thomashardy@mail.com</td>
                                                                <td>89 Chiaroscuro Rd, Portland, USA</td>
                                                                <td>(171) 555-2222</td>
                                                                <td>(171) 555-2222</td>
                                                                <td>(171) 555-2222</td>
                                                                <td>(171) 555-2222</td>
                                                                <td>(171) 555-2222</td>
                                                                <td>(171) 555-2222</td>
                                                                <td>(171) 555-2222</td>
                                                                <td>(171) 555-2222</td>
                                                                <td>
                                                                    <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                                                    <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                                                </td>
                                                            </tr>-->






                                </tbody>
                                
                                   
                                
                                
                                
                                
                            </table>
                            <div class="clearfix">
                                <div class="hint-text">Showing <b>${list.size()}</b> out of <b>${count}</b> entries</div>
                                <ul class="pagination">
                                    <c:if test="${page > 1}">
                                        <li class="page-item disabled"><a href="AdminRoom?page=${page-1}">Previous</a></li> 
                                        </c:if>

                                    <c:forEach begin="1" end="${endPage}" var="i">
            <!--                            <li class="page-item"><a  class="${i==page?"btn-active":""}" 
                                                                  href="serviceCategoryManager?page=${i}" 
                                                                  role="button">${i}</a></li>-->
                                        <c:choose>
                                            <c:when test="${i == page}">
                                                <li class="page-item active"><a href="AdminRoom?page=${i}&searchName=${searchName}" class="page-link">${i}</a></li>
                                                </c:when>
                                                <c:otherwise>
                                                <li class="page-item"><a href="AdminRoom?page=${i}&searchName=${searchName}" class="page-link">${i}</a></li>
                                                </c:otherwise>
                                            </c:choose>
                                        <input type="hidden" name="page" value="${i}&searchName=${searchName}">
                                    </c:forEach>

                                    <c:if test="${page < endPage}">
                                        <li class="page-item disabled"><a href="AdminRoom?page=${page+1}&searchName=${searchName}">Next</a></li> 

                                    </c:if>
                                </ul>
                            </div>
                        </div>
                    </div>        
                </div>
                                
                                
                                
                                
                                
                                
                <!-- add Modal HTML -->
                <div id="addRoomModal${room.id}" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form action="AdminRoomAdd" method="POST">
                                <div class="modal-header">						
                                    <h4 class="modal-title">Add Room</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                </div>
                                <div class="modal-body">					
                                    <!--                            <div class="form-group">
                                                                    <label>Room Id</label>
                                                                    <input type="number" class="form-control" required name="id">
                                                                </div>-->
                                    <div class="form-group">
                                        <label>Room Type</label>
                                        <input type="text" class="form-control" required name="name">
                                    </div>
                                    <div class="form-group">
                                        <label>Image URL</label>
                                        <textarea type="text" class="form-control" required name="image" ></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label>Quantity</label>
                                        <input type="number" class="form-control" required name="quantity">
                                    </div>
                                    <div class="form-group">
                                        <label>Price</label>
                                        <input type="number" class="form-control" required name="price">
                                    </div>
                                    <div class="form-group">
                                        <label>Max Adults</label>
                                        <input type="number" class="form-control" required name="maxadult">
                                    </div>
                                    <div class="form-group">
                                        <label>Max Child</label>
                                        <input type="number" class="form-control" required name="maxchild">
                                    </div>
                                    <div class="form-group">
                                        <label>Bed</label>
                                        <input type="text" class="form-control" required name="bed">
                                    </div>
                                    <div class="form-group">
                                        <label>Area</label>
                                        <input type="text" class="form-control" required name="area">
                                    </div>
                                    <div class="form-group">
                                        <label>Description</label>
                                        <input type="text" class="form-control" required name="description">
                                    </div>
                                    <div class="form-group">
                                        <label>Hotel Id</label>
                                        <input type="number"  class="form-control" required name="hotelId"  >
                                    </div>



                                </div>
                                <div class="modal-footer">
                                    <input type="hidden" name="currentpage" value="${page}">
                                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                    <input type="submit" class="btn btn-success" value="Add">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
