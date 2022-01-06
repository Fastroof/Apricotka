<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
  <%@include file="/WEB-INF/jspf/head.jspf"%>
  <title>Реєстрація нового користувача</title>
  <link type="text/css" rel="stylesheet" href="<spring:url value="css/auntification.css"/>">
</head>
<body>
<div class="auntification-container">
  <h1>Реєстрація нового користувача</h1>
  <c:if test="${message}">
    <p>${message}</p>
  </c:if>
  <form action="/registration" method="post">
    <div class="auntification-inputs">
      <div><label> Логін : <input type="text" name="username"/> </label></div>
      <div><label> Пароль : <input type="password" name="password"/> </label></div>
      <div><label> Email : <input type="email" name="email"/> </label></div>
      <div><label> Ім'я : <input type="text" name="firstName"/> </label></div>
      <div><label> Прізвище : <input type="text" name="lastName"/> </label></div>
    </div>
    <div class="auntification-button"><input type="submit" value="Зареєструватися"/></div>
  </form>
  <a href="/login">Увійти в акаунт</a>
  <br>
  <a href="/">До магазину</a>
</div>
</body>
</html>