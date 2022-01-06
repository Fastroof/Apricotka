<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%@include file="/WEB-INF/jspf/head.jspf"%>
  <title>Увійти в акаунт</title>
  <link type="text/css" rel="stylesheet" href="<spring:url value="css/auntification.css"/>">
</head>
<body>
<div class="auntification-container">
  <h1>Увійти в акаунт</h1>
  <form action="/login" method="post">
    <div class="auntification-inputs">
      <div><label> Логін : <input type="text" name="username"/> </label></div>
      <div><label> Пароль : <input type="password" name="password"/> </label></div>
    </div>
    <div class="auntification-button"><input type="submit" value="Увійти"/></div>
  </form>
  <a href="/registration">Реєстрація нового користувача</a>
  <br>
  <a href="/">До магазину</a>
</div>
</body>
</html>