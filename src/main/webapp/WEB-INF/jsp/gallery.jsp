<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
  <%@include file="/WEB-INF/jspf/head.jspf"%>
  <link type="text/css" rel="stylesheet" href="<spring:url value="css/navigation.css"/>">
  <link type="text/css" rel="stylesheet" href="<spring:url value="css/gallery.css"/>">
  <title>Галерея</title>
  <script src="https://unpkg.com/flickr-justified-gallery@1/dist/fjGallery.min.js"></script>
  <link href="https://unpkg.com/flickr-justified-gallery@1/dist/fjGallery.css" rel="stylesheet">
</head>
<body>
<%@include file="/WEB-INF/jspf/header.jspf"%>
<div class="gallery">
  <div class="container">
    <h5 class="text-center">
      Тут перелічені такі розділи як
    </h5>
    <div class="gallery-filter">
      <c:forEach var="group" items="${galleryGroups}">
        <span class="filter-item" data-filter="${group.id}">${group.groupName}</span>
      </c:forEach>
    </div>
  </div>
  <div class="fj-gallery container">
    <c:forEach var="image" items="${galleryImages}">
      <div class="fj-gallery-item ${image.groupId}">
        <img src="${image.file}" id="${image.id}" alt="${image.groupId}">
      </div>
    </c:forEach>
  </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
  $('.fj-gallery').fjGallery({
    itemSelector: '.fj-gallery-item'
  });
</script>
</body>
</html>