<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ua">
<head>

  <meta charset="utf-8">
  <title>Абрикоска</title>
  <meta name="description" content="">
  <meta name="author" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
  <link href='https://fonts.googleapis.com/css?family=Spectral' rel='stylesheet'>
  <link type="text/css" rel="stylesheet" href="<c:url value="css/normalize.css"/>">
  <link type="text/css" rel="stylesheet" href="<c:url value="css/skeleton.css"/>">
  <link type="text/css" rel="stylesheet" href="<c:url value="css/style.css"/>">
  <link rel="icon" type="image/svg" href="<c:url value="resources/logo/logo-icon-v2.2.svg"/>">
  <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css">

</head>
<body>
  <header>
    <nav class="container navigation-bar">
        <img src="<c:url value="resources/logo/logo-v3.svg"/>" alt="logo" class="logo">
        <ul class="navigation-bar-links">
          <li><a href="#hello">Головна</a></li>
          <li><a href="#info">Про нас</a></li>
          <li><a href="#shop">Магазин</a></li>
          <li><a href="#gallery">Галерея</a></li>
        </ul>
    </nav>
  </header>
  <a id="hello"></a>
  <div class="hello">
    <div class="container">
      <div class="content">
        <h1 class="strokeme">Не знайдеш смачніші!</h1>
        <p class="strokeme">Стиглі, соковиті, вирощенні з турботою абрикоси<br> двадцяти двох різних сортів можна замовити вже зараз</p>
        <button class="button">
          <span>Замовити!</span>
        </button>
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
  <hr>
  <a id="shop"></a>
  <div class="ecomerce">
    <div class="container row">
      <div class="about-choiced-kind one-half column">
        <div class="fotorama" data-nav="thumbs" data-allowfullscreen="native">
          <img src="<c:url value="resources/images/1.png"/>" alt="">
          <img src="<c:url value="resources/images/1.png"/>" alt="">
          <img src="<c:url value="resources/images/1.png"/>" alt="">
          <img src="<c:url value="resources/images/1.png"/>" alt="">
        </div>
      </div>
      <div class="order-box one-half column">
        <div class="title-info-about-kind">NJ19 - best choice</div>
        <div class="text-info-about-kind">
          <p>Nisi ullamco tempor tempor nulla labore ad labore sit eu duis. Ut et esse cupidatat consequat ea exercitation.</p>
        </div>
      </div>
    </div>
  </div>
  <a id="gallery"></a>
  <div class="gallery">
    <div class="container">
      <h1>Галерея</h1>
      <div class="grid">
        <div class="grid-column">
          <img src="<c:url value="resources/gallery/our-cool-work-min (2).jpg" />" alt="">
          <img src="<c:url value="resources/gallery/our-cool-work-min (1).jpg" />" alt="">
          <img src="<c:url value="resources/gallery/our-cool-work-min (3).jpg" />" alt="">
          <img src="<c:url value="resources/gallery/our-cool-work-min (4).jpg" />" alt="">
        </div>
        <div class="grid-column">
          <img src="<c:url value="resources/gallery/our-cool-work-min (10).jpg"/>" alt="">
          <img src="<c:url value="resources/gallery/our-cool-work-min (11).jpg"/>" alt="">
          <img src="<c:url value="resources/gallery/our-cool-work-min (12).jpg"/>" alt="">
          <img src="<c:url value="resources/gallery/our-cool-work-min (13).jpg"/>" alt="">
        </div>
        <div class="grid-column">
          <img src="<c:url value="resources/gallery/our-cool-work-min (19).jpg"/>" alt="">
          <img src="<c:url value="resources/gallery/our-cool-work-min (20).jpg"/>" alt="">
          <img src="<c:url value="resources/gallery/our-cool-work-min (21).jpg"/>" alt="">
          <img src="<c:url value="resources/gallery/our-cool-work-min (22).jpg"/>" alt="">
        </div>
        <div class="grid-column">
          <img src="<c:url value="resources/gallery/our-cool-work-min (28).jpg"/>" alt="">
          <img src="<c:url value="resources/gallery/our-cool-work-min (29).jpg"/>" alt="">
          <img src="<c:url value="resources/gallery/our-cool-work-min (30).jpg"/>" alt="">
          <img src="<c:url value="resources/gallery/our-cool-work-min (31).jpg"/>" alt="">
        </div>
      </div>
    </div>
  </div>
  <footer>
    <div>
      <p>Hi</p>
    </div>
  </footer>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
</body>
</html>
