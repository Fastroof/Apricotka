<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="/WEB-INF/jspf/head.jspf"%>
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
                    <div class="title tour-price">Ціна: 50$</div>
                    <button class="tour-button">
                        <span>Замовити тур!</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <%@include file="/WEB-INF/jspf/footer.jspf"%>
</body>
</html>