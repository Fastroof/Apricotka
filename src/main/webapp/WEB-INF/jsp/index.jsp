<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>

  <meta charset="utf-8">
  <title>Абрикоска</title>
  <meta name="description" content="">
  <meta name="author" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
  <link href='https://fonts.googleapis.com/css?family=Spectral' rel='stylesheet'>
  <link type="text/css" rel="stylesheet" href="<spring:url value="css/normalize.css"/>">
  <link type="text/css" rel="stylesheet" href="<spring:url value="css/skeleton.css"/>">
  <link type="text/css" rel="stylesheet" href="<spring:url value="css/style.css"/>">
  <link rel="icon" type="image/svg" href="<spring:url value="resources/logo/logo-icon-v2.2.svg"/>">
  <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css">

</head>
<body>
  <header>
    <nav class="container navigation-bar">
        <img src="<spring:url value="resources/logo/logo-v3.svg"/>" alt="logo" class="logo">
        <ul class="navigation-bar-links">
          <li><a href="#hello">Магазин</a></li>
          <li><a href="#info">Про нас</a></li>
          <li><a href="#shop"></a></li>
          <li><a href="#">Галерея</a></li>
          <li><a href="tel:097 408-12-21">📞 097 408-12-21</a></li>
          <li><a href="mailto:info@apricotka.com.ua">✉ info@apricotka.com.ua</a></li>
        </ul>
    </nav>
  </header>
  <a id="hello"></a>
  <div class="hello">
    <div class="container">
      <div class="content">
        <h1 class="strokeme">Не знайдеш смачніші!</h1>
        <p class="strokeme">Стиглі, соковиті, вирощенні з турботою абрикоси<br> двадцяти двох різних сортів можна замовити вже зараз</p>
        <a href="#shop">
        <button class="button">
          <span>Замовити!</span>
        </button>
        </a>
      </div>
    </div>
  </div>
  <a id="info"></a>
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
  <a id="shop"></a>
  <div class="ecomerce">
    <c:forEach var="apricot" items="${apricots}">
      <hr>
      <div class="container row">
        <div class="about-choiced-kind one-half column">
          <div class="fotorama" data-nav="thumbs" data-allowfullscreen="native">
            <c:forEach var="img" items="${apricotImages}">
              <c:if test="${img.apricotId==apricot.id}"><img src="<spring:url value="pictures/apricots/${img.file}"/>" alt="${img.file}"></c:if>
            </c:forEach>
          </div>
        </div>
        <div class="order-box one-half column">
          <div class="title-info-about-kind"><c:out value="${apricot.name}"/></div>
          <div class="text-info-about-kind">
            <p><c:out value="${apricot.info}"/></p>
            <p><c:out value="${apricot.price}"/></p>
          </div>
        </div>
      </div>
    </c:forEach>
  </div>
  <footer>
    <div class="map">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2712.0601991240587!2d33.27949621543732!3d47.17625792559961!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40c4905f476c8c63%3A0xeb966038b2b3fcdb!2z0JHQtdC30LLQvtC00L3QvtC1LCDQpdC10YDRgdC-0L3RgdC60LDRjyDQvtCx0LvQsNGB0YLRjCwgNzQxMjI!5e0!3m2!1sru!2sua!4v1641305677736!5m2!1sru!2sua" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
    </div>
  </footer>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
</body>
</html>
