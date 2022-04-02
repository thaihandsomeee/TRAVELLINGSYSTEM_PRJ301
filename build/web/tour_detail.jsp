<%-- 
    Document   : tour_detail
    Created on : Oct 24, 2021, 11:59:21 AM
    Author     : HP
--%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./asserts/css/tour_detail.css">
    <link rel="stylesheet" href="./asserts/css/responsive.css">
    <script src="https://kit.fontawesome.com/9a912681ad.js" crossorigin="anonymous"></script>
</head>

<body>
    <%@include file="header.jsp"%>
    <%@include file="slider.jsp"%>

    <!-- CONTENT -->
    <div class="tour-content conntent-margin">
        <div class="tour-content__img">
            <img class="zoom" src="${tour.img1}" alt="">
            <img class="zoom" src="${tour.img2}" alt="">
        </div>
        <div class="tour-content__details">
            <form action="addcart" method="post">
                <input hidden name="tourid" value="${tour.id}">
                <div class="tour-content__details--name">
                    ${tour.name}
                </div>
                <p><i class="fas fa-map-marker-alt">  ${tour.destination_name}</i></p>
                <p style="font-weight: bold">${tour.description1}</p>
                <p>${tour.description2}</p>
                <p>Thời gian: ${tour.time}</p>
                <fmt:formatNumber value="${tour.price}" type="currency" currencySymbol="VNĐ" var="price"/>
                <p style="color: red;">Giá: ${price}</p>
                <p style="margin-bottom: 70px">Ngày đi: <input type="date" name="datefrom"  required /></p>
                <input class="btn1 tour-content__details--addtocart" type="submit" value="Thêm vào giỏ" id="">
            </form>
        </div>
    </div>

    <%@include file="footer.jsp"%>
</body>

</html>
