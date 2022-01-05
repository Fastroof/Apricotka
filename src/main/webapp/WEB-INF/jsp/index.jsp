<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
  <%@include file="/WEB-INF/jspf/head.jspf"%>
  <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css">
</head>
<body>
  <%@include file="/WEB-INF/jspf/header.jspf"%>
  <div class="hello">
    <div class="container">
      <div class="content">
        <h1 class="strokeme">Не знайдеш смачніші!</h1>
        <p class="strokeme">Стиглі, соковиті, вирощенні з турботою абрикоси<br> двадцяти двох різних сортів можна замовити вже зараз</p>
      </div>
    </div>
  </div>
  <div class="ecomerce">
    <c:forEach var="apricot" items="${apricots}">
      <br>
      <div class="kind container">
        <div class="about-choiced-kind">
          <div class="fotorama" data-nav="thumbs" data-allowfullscreen="native">
            <c:forEach var="img" items="${apricotImages}">
              <c:if test="${img.apricotId==apricot.id}"><img src="<spring:url value="pictures/apricots/${img.file}"/>" alt="${img.file}"></c:if>
            </c:forEach>
          </div>
        </div>
        <div class="order-box">
          <div>
            <div class="title-info-about-kind"><c:out value="${apricot.name}"/></div>
            <div class="text-info-about-kind">
              <p><c:out value="${apricot.info}"/></p>
            </div>
          </div>
          <div class="buy">
            <div class="price"><c:out value="${apricot.price}"/>$</div>
            <div class="button"><span>Купити</span></div>
          </div>
        </div>
      </div>
    </c:forEach>
  </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
</body>
</html>
