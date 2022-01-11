<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!Doctype html>
<html>
<head>
  <%@include file="/WEB-INF/jspf/head.jspf"%>
  <link type="text/css" rel="stylesheet" href="<spring:url value="css/navigation.css"/>">
  <link type="text/css" rel="stylesheet" href="<spring:url value="css/index.css"/>">
  <link type="text/css" rel="stylesheet" href="<spring:url value="css/shopping.css"/>">
  <title>Абрикоска</title>
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

  <button id='cart-button' class="trigger cart-button-style"><img class="shop-img" src="<spring:url value="icons/shopping.svg"/>" alt="Корзина"></button>

  <div id="shop" class="shop container">
    <c:forEach var="apricot" items="${apricots}">
      <div class="product" id="product${apricot.id}">
        <div class="product-images">
          <div class="fotorama" data-nav="thumbs" data-allowfullscreen="native">
            <c:forEach var="img" items="${apricotImages}">
              <c:if test="${img.apricotId==apricot.id}"><img src="<spring:url value="pictures/apricots/${img.file}"/>" alt="${img.file}"></c:if>
            </c:forEach>
          </div>
        </div>
        <div class="order-box">
          <div>
            <div class="product-name"><c:out value="${apricot.name}"/></div>
            <div class="product-description">
              <p style="padding-right: 1em"><c:out value="${apricot.info}"/></p>
            </div>
          </div>
          <div class="buy">
            <div class="product-price" value="${apricot.price}"><c:out value="${apricot.price}"/>$/кг ≈ <fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${apricot.price * dollarRate}"/>₴/кг</div>
            <div class="add-to-cart" id="add-to-cart${apricot.id}"><span id="add-to-cart-span${apricot.id}">Додати в кошик</span></div>
          </div>
        </div>
      </div>
    </c:forEach>
  </div>

  <div id="modal" class="modal">
      <div class="modal-content">
        <div class="modal-header" id="modal-header">
          <span class="close">&times;</span>
          <h2>Кошик</h2>
        </div>
        <div class="modal-body" id="modal-body">
          <p class="cart-is-empty" style="margin-bottom: 0;">Тут поки що порожньо, але це можна виправити</p>
        </div>
        <div style="display: none" id="create-order">
          <span>Всього: $<span id="total"></span><span> ≈ ₴</span><span id="total-hrn"></span></span>
            <a id="create-order-button"><span>Оформити замовленя</span></a>
        </div>
        <div class="modal-bottom" id="modal-bottom">
        </div>
      </div>
  </div>
  <div style="display: none" id="dollarRate"><c:out value="${dollarRate}"/></div>

  <script src="<spring:url value="js/jquery-3.6.0.min.js"/>"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
  <script type="text/javascript" src="<spring:url value="js/shopping.js"/>"></script>
  <script type="text/javascript">
      jQuery(function() {
        $("#create-order-button").on('click', function() {
            $.ajax({
                type: "POST",
                url: "/order_items",
                contentType: "application/json",
                data: JSON.stringify(generateOrderRequest()),
                success: function (res) {
                  console.info(res);
                  window.location.href += "order"
                },
                error: function(msg){
                  console.info(msg)
                }
            });
        })
      })
  </script>
</body>
</html>
