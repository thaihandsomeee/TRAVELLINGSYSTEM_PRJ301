<%-- 
    Document   : header.jsp
    Created on : Oct 24, 2021, 11:57:28 AM
    Author     : HP
--%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="./asserts/css/header.css">
        <script src="./asserts/js/myjs.js"></script>
        <script src="https://kit.fontawesome.com/9a912681ad.js" crossorigin="anonymous"></script>
    </head>

    <body>


        <!-- HEADER -->
        <header>
            <div class="header__logo">
                <img src="./asserts/img/logo.png" alt="">
            </div>
            <div class="header__nav">
                <a href="home">Trang chủ</a>
                <c:if test="${sessionScope.acc.isAdmin==true}">
                    <a href="tourmanage">Quản lí Tour</a>
                    <a href="desmanage">Quản lí điểm đến</a>
                    <a href="ordermanager">Quản lí Order</a>
                </c:if>
                <c:if test="${sessionScope.acc!=null and sessionScope.acc.isAdmin==false}">
                    <a href="cart">Giỏ</a>
                    <a href="order">Đã mua</a>
                </c:if>    
            </div>
            <div class="header__login">
                <c:if test="${sessionScope.acc==null}">               
                    <a href="login">Đăng nhập</a>
                    <a href="signup.jsp">Đăng kí</a>
                </c:if>
                <c:if test="${sessionScope.acc!=null}">
                    <a href="">${sessionScope.acc.username}</a>
                    <a href="logout">Đăng xuất</a>
                </c:if>
            </div>
        </header>

    </body>

</html>  
