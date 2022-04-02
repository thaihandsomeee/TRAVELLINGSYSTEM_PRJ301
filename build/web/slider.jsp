<%-- 
    Document   : slider
    Created on : Oct 24, 2021, 11:58:18 AM
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
        <link rel="stylesheet" href="./asserts/css/slider.css">
        <link rel="stylesheet" href="./asserts/css/responsive.css">
        <script src="https://kit.fontawesome.com/9a912681ad.js" crossorigin="anonymous"></script>
    </head>

    <body>

        <!-- SLIDER -->
        <div id="slider">
            <h1 class="slider__title">Sống và trải nghiệm cùng VNExplore</h1>
            <p class="slider__description">Vùng đất tiếp theo mà bạn sẽ đặt chân đến là?</p>
            <form action="destination" method="post" class="slider__search-form">
                <select style="background-color: #fff" name="select-destination">
                    <option value="none">Lựa chọn điểm đến của bạn...</option>
                    <c:forEach items="${destinations}" var="destination">
                        <option value="${destination.id}">${destination.name}</option>
                    </c:forEach>

                </select>
                <input type="submit" value="Tìm">
            </form>
        </div>

    </body>

</html>
