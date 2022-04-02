<%-- 
    Document   : home
    Created on : Oct 24, 2021, 11:58:36 AM
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
        <link rel="stylesheet" href="./asserts/css/home.css">
        <link rel="stylesheet" href="./asserts/css/responsive.css">
        <script src="https://kit.fontawesome.com/9a912681ad.js" crossorigin="anonymous"></script>
    </head>

    <body>
        <%@include file="header.jsp"%>
        <%@include file="slider.jsp"%>
        <!-- CONTENT -->
        <div id="content">
            <div class="content__new-destination conntent-padding row">
                <p>Điểm đến mới nhất</p>
                <c:forEach items="${destinations}" var="destination">
                    <div class="content__new-destination--element zoom col col-third m-col-half s-col-full mt-32">
                        <img src="${destination.img2}">
                        <a class="content__new-destination--element-content" href="destination?select-destination=${destination.id}">
                            <button class="btn">${destination.name}</button>
                        </a>
                    </div>
                </c:forEach>
            </div>

            <div class="content__banner">
                <h1>ENJOY THE MOMENT</h1>
                <p>Don't make it complicated...</p>
            </div>

            <div class="content__new-tour conntent-padding row">
                <p>Chuyến đi mới nhất</p>
                <c:forEach items="${tours}" var="tour">
                    <fmt:formatNumber value="${tour.price}" type="currency" currencySymbol="VNĐ" var="price"/>
                    <div class="content__new-tour--element col col-half m-col-full s-col-full mt-32">
                        <img src="${tour.img2}">
                        <div class="content__new-tour--element-content">
                                <p><a>${tour.name}</a></p>
                                <p><i class="fas fa-map-marker-alt">  ${tour.destination_name}</i></p>
                                <p>${tour.description1}</p>
                                <p>Thời gian: ${tour.time}</p>
                                <p style="color: red;">Giá: ${price}</p>
                                <a href="tour?id=${tour.id}"><input class="btn1 content__new-tour--element-content-addtocart" type="submit" value="Chi tiết" id=""></a>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>

        <%@include file="footer.jsp"%>

    </body>

</html>
