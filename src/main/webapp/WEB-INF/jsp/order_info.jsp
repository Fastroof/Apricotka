<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%@include file="/WEB-INF/jspf/head.jspf"%>
  <title>Пошук інформації про замовлення</title>
</head>
<body>
  <div class="container" style="display: flex;flex-direction: column;align-items: center;">
    <h2>Пошук інформації про замовлення</h2>
    <form method="get" action="/order_info/orders?id={orderId}">
      <label for="orderId">Уведіть номер замовлення:</label>
      <div style="display: flex;">
        <input type="search" id="orderId" name="orderId">
        <button style="height: 38px; margin-left: 0.5em;">Знайти</button>
      </div>
    </form>
    <c:if test="${info != null}">
      <pre><c:out value="${info}"/></pre>
    </c:if>
    <a href="/">До магазину</a>
  </div>
</body>
</html>
