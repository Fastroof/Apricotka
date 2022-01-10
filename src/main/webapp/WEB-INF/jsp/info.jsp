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
    <h3><c:out value="${msg}"/></h3>
    <c:if test="${details != null}">
      <pre><c:out value="${details}"/></pre>
    </c:if>
    <h4><a href="<c:out value="${link}"/>"><c:out value="${text}"/></a></h4>
  </div>
</body>
</html>