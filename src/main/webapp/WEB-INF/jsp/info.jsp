<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%@include file="/WEB-INF/jspf/head.jspf"%>
  <title>${msg}</title>
</head>
<body>
  <div class="container" style="align-items: center; display: flex; flex-direction: column;">
    <h3>${msg}</h3>
    <h4><a href="${link}">${text}</a></h4>
  </div>
</body>
</html>