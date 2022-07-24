<%-- 
    Document   : message
    Created on : 14-Jul-2022, 06:42:12
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/layout-style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div onclick="createErrorMessage('error');">get error</div>
        <div onclick="createMessage('notify');">get error</div>--%>       
        <div class="error-box">
            <div class="error-message active <c:if test="${empty message}">hidden</c:if>">
                <div class="close-error-message">&#128473;</div>
                <p>${message}</p>
            </div>
            <div class="error-message notify active <c:if test="${empty notify}">hidden</c:if>">
                <div class="close-error-message">&#128473;</div>
                <p>${notify}</p>
            </div>
<!--            <div class="error-message active ">
                <div class="close-error-message">&#128473;</div>
                <p>message</p>
            </div>
            <div class="error-message notify active ">
                <div class="close-error-message">&#128473;</div>
                <p>notify</p>
            </div>-->
        </div><!--
            <script src="../js/message.js"></script>
    <body
</html>-->
