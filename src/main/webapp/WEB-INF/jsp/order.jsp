<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Підтвердження замовлення</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link type="text/css" rel="stylesheet" href="<spring:url value="css/order.css"/>">
</head>
<body>

<h2>Підтвердження замовлення</h2>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="/order" method="post">

        <div class="row">
          <div class="col-50">
            <h3>Інформація про замовника</h3>
            <label for="fname"><i class="fa fa-user"></i> ПІБ</label>
            <input type="text" id="fname" name="firstname" placeholder="Шевченко Тарас Григорович">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="shevchenko@gmail.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> Адреса</label>
            <input type="text" id="adr" name="address" placeholder="вул. Свободи 23">
            <label for="city"><i class="fa fa-institution"></i> Населений пункт</label>
            <input type="text" id="city" name="city" placeholder="м. Березівка, Одеська обл.">

          <div class="col-50">
            <h3>Оплата</h3>
            <label for="payment">Спосіб оплати</label>
            <select name="payment" id="payment">
              <option value="card">Карткою</option>
              <option value="after-payment" selected>Після отримання</option>
            </select>
            </div>
          </div>

        </div>
        <input type="submit" value="Підтвердити" class="btn">
      </form>
    </div>
  </div>
  <div class="col-25">
    <div class="container">
      <h4>Кошик <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b>4</b></span></h4>
      <p><a href="#">Product 1</a> <span class="price">$15</span></p>
      <p><a href="#">Product 2</a> <span class="price">$5</span></p>
      <p><a href="#">Product 3</a> <span class="price">$8</span></p>
      <p><a href="#">Product 4</a> <span class="price">$2</span></p>
      <hr>
      <p>Total <span class="price" style="color:black"><b>$30</b></span></p>
    </div>
  </div>
</div>

</body>
</html>



