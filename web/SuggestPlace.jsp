<%-- 
    Document   : SuggestPlace
    Created on : Jul 20, 2022, 8:31:03 PM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Suggest Place Category Manager</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/aside-nav.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
        body {
            color: #566787;
            background: #f5f5f5;
            font-family: 'Varela Round', sans-serif;
            font-size: 13px;
        }
        .table-responsive {
            margin: 30px 0;
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
</head>
<body style="background-image: url(images/hotelDetail-background.jpg);background-attachment: fixed;
      background-repeat: no-repeat;
      background-size:100%;
      background-position: center;; font-weight: 100%">
    <header id="top" class="header aside-navigation">
        <jsp:include page="component/aside-nav-admin.jsp"/>
    </header>
    <script src="js/aside-nav.js" type="text/javascript"></script>
    <div>
        <div class="container" style="margin-top :30px" >
            <form action="SuggestPlace">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i></button>
                    </div>
                    <input minlength="1" type="text" class="form-control" placeholder="Search" aria-label="" aria-describedby="basic-addon1" name="search">
                </div>
            </form>
        </div>
        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>Suggest Place  <b>Manager</b></h2>
                            </div>
                            <div class="col-sm-6">
                                <a href="#addSuggestPlaceCategoryModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New SuggestPlaceCategory</span></a>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Place</th>
                                <th>Distance</th>
                                <th>Hotel ID</th>
                                <th>Suggest Place Category ID</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="category" items="${splist}">
                                <tr>
                                    <td>${category.id}</td>
                                    <td>${category.place}</td>
                                    <td>${category.distance}</td>
                                    <td>${category.hotelId}</td>
                                    <td>${category.category}</td>
                                    <td>
                                        <a href="#editSuggestPlaceCategoryModal${category.id}" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                        <a href="#deleteSuggestPlaceCategoryModal${category.id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                    </td>
                                </tr>


                                <!-- Delete Modal HTML -->
                            <div id="deleteSuggestPlaceCategoryModal${category.id}" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="SuggestPlaceDelete" method="POST">
                                            <div class="modal-header">						
                                                <h4 class="modal-title">Delete Suggest Place Category</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            </div>
                                            <div class="modal-body">					
                                                <p>Are you sure you want to delete these Records?</p>
                                                <p class="text-warning"><small>This action cannot be undone.</small></p>
                                            </div>
                                            <div class="modal-footer">
                                                <input type="hidden" name="currentpage" value="${page}">
                                                <input type="hidden" name="id" value="${category.id}">
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                                <input type="submit" class="btn btn-danger" value="Delete">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>


                            <!-- Edit Modal HTML -->
                            <div id="editSuggestPlaceCategoryModal${category.id}" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="SuggestPlaceUpdate" method="POST">
                                            <div class="modal-header">						
                                                <h4 class="modal-title">Update Suggest Place </h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                
                                                 <div class="form-group">
                                         
                                                    <input type="hidden" class="form-control" required name="id" value="${category.id}">
                                                </div>
                                                <div class="form-group">
                                                    <label> Place </label>
                                                    <input type="text" class="form-control" required name="place" value="${category.place}">
                                                </div>
                                                <div class="form-group">
                                                    <label>Distance</label>
                                                    <input type="number" class="form-control" required name="distance" value="${category.distance}">
                                                </div>  
                                                <div class="form-group">
                                                    <label>Hotel ID</label>
                                                    <input type="number" class="form-control" required name="hotelId" value="${category.hotelId}">
                                                </div>  
                                                <div class="form-group">
                                                    <label>Suggest Place Category ID</label>
                                                    <input type="number" class="form-control" required name="category" value="${category.category}">
                                                </div>  
                                                
                                            </div>
                                            <div class="modal-footer">
                                                <input type="hidden" name="currentpage" value="${page}">
                                                <input type="hidden" name="id" value="${category.id}">
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                                <input type="submit" class="btn btn-info" value="Save">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="clearfix">
                        <div class="hint-text">Showing <b>${page}</b> out of <b>${endPage}</b> entries</div>
                        <ul class="pagination">
                            <c:if test="${page > 1}">
                                <li class="page-item disabled"><a href="SuggestPlace?page=${page-1}&search=${search}">Previous</a></li> 
                                </c:if>

                            <c:forEach begin="1" end="${endPage}" var="i">
    <!--                            <li class="page-item"><a  class="${i==page?"btn-active":""}" 
                                                          href="suggestPlaceCategoryManager?page=${i}" 
                                                          role="button">${i}</a></li>-->
                                <c:choose>
                                    <c:when test="${i == page}">
                                        <li class="page-item active"><a href="SuggestPlace?page=${i}&search=${search}" class="page-link">${i}</a></li>
                                        </c:when>
                                        <c:otherwise>
                                        <li class="page-item"><a href="SuggestPlace?page=${i}&search=${search}" class="page-link">${i}</a></li>
                                        </c:otherwise>
                                    </c:choose>
                                <input type="hidden" name="page" value="${i}">
                            </c:forEach>

                            <c:if test="${page < endPage}">
                                <li class="page-item disabled"><a href="SuggestPlace?page=${page+1}&search=${search}">Next</a></li> 
                                </c:if>
                        </ul>
                    </div>
                </div>
            </div>        
        </div>
        <!-- Add Modal HTML -->
        <div id="addSuggestPlaceCategoryModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="SuggestPlaceAdd" method="POST">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add New Suggest Place </h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                             <div class="form-group">
                                                    <label> Place </label>
                                                    <input type="text" class="form-control" required name="place" value="${category.place}">
                                                </div>
                                                <div class="form-group">
                                                    <label>Distance</label>
                                                    <input type="number" class="form-control" required name="distance" value="${category.distance}">
                                                </div>  
                                                <div class="form-group">
                                                    <label>Hotel ID</label>
                                                    <input type="number" class="form-control" required name="hotelId" value="${category.hotelId}">
                                                </div>  
                                                <div class="form-group">
                                                    <label>Suggest Place Category ID</label>
                                                    <input type="number" class="form-control" required name="category" value="${category.category}">
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
</body>
</html>
