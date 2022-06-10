<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
  <%@include file="/WEB-INF/jspf/head.jspf"%>
  <link type="text/css" rel="stylesheet" href="<spring:url value="css/navigation.css"/>">
  <link type="text/css" rel="stylesheet" href="<spring:url value="css/tour.css"/>">
  <title>Тур</title>
</head>
<body>
<%@include file="/WEB-INF/jspf/header.jspf"%>
<div class="info">
  <div class="container">
    <div class="about">
      <div class="text-about">
        <div class="title">Трішки про нас</div>
        <p>Ми фермерське господарство, яке вирощує абрикоси вже декілька років. Нам подобається наша справа.
          Сподіваємося, ви спробуєте свій найсмачніший абрикос саме в нас у саду, адже ми проводимо екскурсії
          по виробництві протягом літа і ви можете замовити її зараз. Ми обов'язково передзвонимо й уточнимо дату
          проведення.
        </p>
        <p>Ви зможете замовити тур зателефонувавши або написавши нам<br>
          Телефон: 097 408-12-21<br>
          Email: info@apricotka.com.ua
        </p>
      </div>
    </div>
  </div>
</div>
<%@include file="/WEB-INF/jspf/footer.jspf"%>
</body>
</html>