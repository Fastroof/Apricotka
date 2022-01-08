<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
  <%@include file="/WEB-INF/jspf/head.jspf"%>
  <link type="text/css" rel="stylesheet" href="<spring:url value="css/navigation.css"/>">
  <link type="text/css" rel="stylesheet" href="<spring:url value="css/gallery.css"/>">
  <title>Галерея</title>
</head>
<body>
<%@include file="/WEB-INF/jspf/header.jspf"%>
<div class="gallery">
  <div class="container">
    <div class="gallery-filter">
      <span class="filter-item active" data-filter="0">Усі</span>
      <c:forEach var="group" items="${galleryGroups}">
        <span class="filter-item" data-filter="${group.id}">${group.groupName}</span>
      </c:forEach>
    </div>
  </div>
  <div class="row container">
    <c:forEach var="image" items="${galleryImages}">
      <div class="gallery-item ${image.groupId}">
        <div class="gallery-item-inner">
          <img src="pictures/gallery/${image.file}" id="${image.id}" alt="${image.groupId}">
        </div>
      </div>
    </c:forEach>
  </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
    const filterContainer = document.querySelector(".gallery-filter");
    const galleryItems = document.querySelectorAll(".gallery-item");
    filterContainer.addEventListener("click", (event) =>{
        if(event.target.classList.contains("filter-item")){
            // deactivate existing active 'filter-item'
            filterContainer.querySelector(".active").classList.remove("active");
            // activate new 'filter-item'
            event.target.classList.add("active");
            const filterValue = event.target.getAttribute("data-filter");
            galleryItems.forEach((item) =>{
                if(item.classList.contains(filterValue) || filterValue === '0'){
                    item.classList.remove("hide");
                    item.classList.add("show");
                }
                else{
                    item.classList.remove("show");
                    item.classList.add("hide");
                }
            });
        }
    });
</script>
</body>
</html>