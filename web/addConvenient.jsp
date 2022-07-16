<%-- 
    Document   : addConvenient
    Created on : Jul 16, 2022, 1:46:11 PM
    Author     : Duong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
        <title>Edit User Page</title>
    </head>
    <body>
        <h2 style="color: #33ccff; margin-top: 5%;text-align: center;">Edit User Page</h2><br><br><br>
        <div class="container">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Convenient Category</th>
                        <th scope="col">Convenient</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach items="${listCon5}" var="con">
                    <input name="conId" type="text" value="${con.conId}" style="border: none">
                    <tr>
                        <th scope="col">${con.conId+1}</th>
                        <td>
                            <select name="convenientCateId" class="form-select" aria-label="Default select example" >
                                <option selected="${con.convenientCategory}" >${con.convenientCategory}</option>
                                <c:forEach items="${listConCate}" var="con2">
                                    <option value="${con2.conCateId}">${con2.convenientCategory}</option>
                                </c:forEach>
                            </select>
                        </td>
                        <td>
                                - <input name="convenient" type="text" value="${con.convenient}" style="border: none">
                                <input name="conId" type="hidden" value="${con.conId}" style="border: none">
                                <input name="conCateId" type="hidden" value="${con.conCateId}" style="border: none">
                        </td>
                    </tr>
                </c:forEach>
                <c:forEach items="${listCon1}" var="con">
                    <tr>
                        <th scope="col">${con.conId+1}</th>
                        <td>
                            <select name="convenientCateId" class="form-select" aria-label="Default select example" >
                                <option selected="${con.convenientCategory}" >${con.convenientCategory}</option>
                                <c:forEach items="${listConCate}" var="con2">
                                    <option value="${con2.conCateId}">${con2.convenientCategory}</option>
                                </c:forEach>
                            </select>
                        </td>
                        <td>
                                - <input name="convenient" type="text" value="${con.convenient}" style="border: none">
                                <input name="conId" type="hidden" value="${con.conId}" style="border: none">
                                <input name="conCateId" type="hidden" value="${con.conCateId}" style="border: none">
                        </td>
                    </tr>
                </c:forEach>
                <c:forEach items="${listCon2}" var="con">
                    <tr>
                        <th scope="col">${con.conId+1}</th>
                        <td>
                            <select name="convenientCateId" class="form-select" aria-label="Default select example" >
                                <option selected="${con.convenientCategory}" >${con.convenientCategory}</option>
                                <c:forEach items="${listConCate}" var="con2">
                                    <option value="${con2.conCateId}">${con2.convenientCategory}</option>
                                </c:forEach>
                            </select>
                        </td>
                        <td>
                                - <input name="convenient" type="text" value="${con.convenient}" style="border: none">
                                <input name="conId" type="hidden" value="${con.conId}" style="border: none">
                                <input name="conCateId" type="hidden" value="${con.conCateId}" style="border: none">
                        </td>
                    </tr>
                </c:forEach>
                <c:forEach items="${listCon3}" var="con">
                    <tr>
                        <th scope="col">${con.conId+1}</th>
                        <td>
                            <select name="convenientCateId" class="form-select" aria-label="Default select example" >
                                <option selected="${con.convenientCategory}" >${con.convenientCategory}</option>
                                <c:forEach items="${listConCate}" var="con2">
                                    <option value="${con2.conCateId}">${con2.convenientCategory}</option>
                                </c:forEach>
                            </select>
                        </td>
                        <td>
                                - <input name="convenient" type="text" value="${con.convenient}" style="border: none">
                                <input name="conId" type="hidden" value="${con.conId}" style="border: none">
                                <input name="conCateId" type="hidden" value="${con.conCateId}" style="border: none">
                        </td>
                    </tr>
                </c:forEach>
                <c:forEach items="${listCon4}" var="con">
                    <tr>
                        <th scope="col">${con.conId+1}</th>
                        <td>
                            <select name="convenientCateId" class="form-select" aria-label="Default select example" >
                                <option selected="${con.convenientCategory}" >${con.convenientCategory}</option>
                                <c:forEach items="${listConCate}" var="con2">
                                    <option value="${con2.conCateId}">${con2.convenientCategory}</option>
                                </c:forEach>
                            </select>
                        </td>
                        <td>
                                - <input name="convenient" type="text" value="${con.convenient}" style="border: none">
                                <input name="conId" type="hidden" value="${con.conId}" style="border: none">
                                <input name="conCateId" type="hidden" value="${con.conCateId}" style="border: none">
                        </td>
                    </tr>
                </c:forEach>

                <c:forEach items="${listCon6}" var="con">
                    <tr>
                        <th scope="col">${con.conId+1}</th>
                        <td>
                            <select name="convenientCateId" class="form-select" aria-label="Default select example" >
                                <option selected="${con.convenientCategory}" >${con.convenientCategory}</option>
                                <c:forEach items="${listConCate}" var="con2">
                                    <option value="${con2.conCateId}">${con2.convenientCategory}</option>
                                </c:forEach>
                            </select>
                        </td>
                        <td>
                                - <input name="convenient" type="text" value="${con.convenient}" style="border: none">
                                <input name="conId" type="hidden" value="${con.conId}" style="border: none">
                                <input name="conCateId" type="hidden" value="${con.conCateId}" style="border: none">
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <form action="EditConventController" method="get">
                <a href="listConvenientController">+</a>
            </form>
            <a href="listConvenientController"><button type="button" style="display: block;
                                                       margin-left: auto;
                                                       margin-right: auto;" class="btn btn-primary">View List Convenient</button></a><br>
        </div>
        <link href="css/userlist-style.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
