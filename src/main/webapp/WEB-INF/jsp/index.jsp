<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <%@include file="/WEB-INF/jspf/head.jspf"%>
  <link type="text/css" rel="stylesheet" href="<spring:url value="css/navigation.css"/>">
  <link type="text/css" rel="stylesheet" href="<spring:url value="css/index.css"/>">
  <link type="text/css" rel="stylesheet" href="<spring:url value="css/shopping.css"/>">
  <title>Абрикоска</title>
  <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css">
</head>
<body>
  <header>
    <div class="container">
      <nav class="navigation-bar">
        <img src="<spring:url value="logo/logo-v3.svg"/>" alt="logo" class="logo">
        <ul class="navigation-bar-links">
          <li><a href="/" lang="ua">Магазин</a></li>
          <li><a href="tour" lang="ua">Екскурсія</a></li>
          <li><a href="gallery" lang="ua">Галерея</a></li>
          <li><a href="tel:097 408-12-21" lang="ua"><i class="fa-solid fa-phone"></i> 097 408-12-21</a></li>
          <li><a href="mailto:info@apricotka.com.ua" lang="ua"><i class="fa-solid fa-envelope"></i> info@apricotka.com.ua</a></li>
          <li><a href="order_info"><img class="find-img" src="<spring:url value="icons/find.svg"/>"></a></li>
          <li><button id='cart-button' class="trigger cart-button-style"><img class="shop-img" src="<spring:url value="icons/shopping.svg"/>" alt="Корзина"></button></li>
        </ul>
      </nav>
    </div>
  </header>

  <div class="hello" id="hello">
    <div class="container" id="content">
      <div class="content">
        <h1 class="strokeme">Не знайдеш смачніші!</h1>
        <p class="strokeme">Стиглі, соковиті, вирощенні з турботою абрикоси<br> двадцяти двох різних сортів можна замовити вже зараз</p>
      </div>
    </div>
  </div>

  <div id="shop" class="shop container">
    <c:forEach var="apricot" items="${apricots}">
      <div class="product" id="product${apricot.id}">
        <div class="product-images">
          <div class="fotorama" data-nav="thumbs" data-allowfullscreen="native">
            <c:forEach var="img" items="${apricotImages}">
              <c:if test="${img.apricotId==apricot.id}"><img src="<spring:url value="${img.file}"/>" alt="${img.file}"></c:if>
            </c:forEach>
          </div>
        </div>
        <div class="order-box">
          <div>
            <div class="product-name"><c:out value="${apricot.name}"/></div>
            <div class="product-description">
              <p style="padding-right: 1em"><c:out value="${apricot.info}"/></p>
            </div>
          </div>
          <div class="buy">
            <div class="product-price" value="${apricot.price}"><c:out value="${apricot.price}"/>$/кг ≈ <fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${apricot.price * dollarRate}"/>₴/кг</div>
            <div class="add-to-cart" id="add-to-cart${apricot.id}"><span id="add-to-cart-span${apricot.id}">Додати в кошик</span></div>
          </div>
        </div>
      </div>
    </c:forEach>
  </div>

  <div id="modal" class="modal">
      <div class="modal-content">
        <div class="modal-header d-flex align-items-center fs-4" id="modal-header">
          <span class="close"><i class="fa-solid fa-xmark"></i></span>
          <i class="fas fa-shopping-cart"></i>
        </div>
        <div class="modal-body" id="modal-body">
          <p class="cart-is-empty" style="margin-bottom: 0;">Тут поки що порожньо, але це можна виправити</p>
        </div>
        <div style="display: none" id="create-order">
          <span>Всього: $<span id="total"></span><span> ≈ ₴</span><span id="total-hrn"></span></span>
            <a id="create-order-button"><span>Оформити замовленя</span></a>
        </div>
        <div class="modal-bottom" id="modal-bottom">
        </div>
      </div>
  </div>
  <div style="display: none" id="dollarRate"><c:out value="${dollarRate}"/></div>

  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
  <script>
    const btn = document.getElementById("cart-button");
    const dollarRate = parseFloat(document.getElementById("dollarRate").textContent);

    const modal = document.getElementById("modal");
    btn.onclick = function() {
      modal.style.display = "block"
    }

    const span = document.getElementsByClassName("close")[0];

    span.onclick = function() {
      modal.style.display = "none"
    }


    window.onclick = function(event) {
      if (event.target === modal) {
        modal.style.display = "none"
      }
    }

    var orderItems = []
    var orderItemsProductsId = []

    const createOrder = document.getElementById("create-order");
    const btns = document.querySelectorAll('div[id^=add-to-cart]')

    btns.forEach(btn => {
      btn.addEventListener('click', event => {
        var productId = btn.id.replace('add-to-cart','')

        document.getElementById("add-to-cart-span" + productId).textContent="✓ Додано"
        btn.setAttribute("style", "pointer-events:none; background-color:#838383;")

        var product = document.getElementById('product' + productId)
        var imgF = product.getElementsByClassName("fotorama__img")[0].getAttribute('src')
        var name = product.getElementsByClassName("product-name")[0].textContent
        var price = product.getElementsByClassName("product-price")[0].getAttribute('value')
        orderItems.push([productId, imgF, name, price, 1, parseFloat(price)])
        orderItemsProductsId.push(productId)
        refreshCart(orderItems.length-1)
      })
    })

    function refreshCart(len) {
      const mb = document.getElementById('modal-body');
      if (len !== 0) {
        mb.innerHTML += "<hr class=\"space-between-items\">\n"
      } else {
        mb.getElementsByClassName("cart-is-empty")[0].style.display = "none"
        createOrder.style.display = "flex"
      }
      mb.innerHTML +=
              "          <div class=\"order-item\">\n" +
              "            <div>\n" +
              "               <img class=\"item-img\" src=\"" + orderItems[len][1] + "\" alt=\"picture\">\n" +
              "            </div>\n" +
              "            <div class=\"order-item-info\">\n" +
              "              <div class=\"title-delete\">\n" +
              "                <h3 class=\"item-name\">" + orderItems[len][2] + "</h3>\n" +
              "                <span class=\"item-delete\" id=\"item-delete"+ orderItems[len][0] + "\">Видалити</span>\n" +
              "              </div>\n" +
              "              <div class=\"input-price\">\n" +
              "                <div class=\"input\">\n" +
              "                  <button class=\"minus\" id=\"minus-" + orderItems[len][0] + "\"><i class=\"fa-solid fa-minus fs-6\"></i></button>\n" +
              "                  <label>\n" +
              "                    <input class=\"quantity\" minlength=\"1\" id=\"quantity-" + orderItems[len][0] + "\">\n" +
              "                  </label>\n" +
              "                  <button class=\"plus\" id=\"plus-"+ orderItems[len][0] + "\"><i class=\"fa-solid fa-plus fs-6\"></i></button>\n" +
              "                </div>\n" +
              "                <div class=\"price-div\">\n" +
              "                   <span>$</span>\n" +
              "                   <span class=\"item-price\" id=\"item-price-" + orderItems[len][0] + "\">" + orderItems[len][3] + "</span>\n" +
              "                   <span> ≈ ₴</span>\n" +
              "                   <span class=\"item-price-hrn\" id=\"item-price-hrn-" + orderItems[len][0] + "\">" + (orderItems[len][3] * dollarRate).toFixed(2) + "</span>\n" +
              "                </div>\n"+
              "              </div>\n" +
              "            </div>\n" +
              "          </div>"
      updateInputs()
      updateListeners()
    }

    function updateInputs() {
      const inputs = document.querySelectorAll('input[id^=quantity-]')
      let index = 0;
      inputs.forEach(input => {
        input.value = orderItems[index][4]
        index += 1
      })
    }

    function updateListeners() {
      const dBbtns = document.querySelectorAll('span[id^=item-delete]')
      dBbtns.forEach(btn => {
        btn.addEventListener('click', event => {
          let hr;
          const deletePID = btn.id.replace('item-delete', '');

          document.getElementById("add-to-cart-span" + deletePID).textContent="Додати в кошик"
          document.getElementById("add-to-cart" + deletePID).setAttribute("style", "")

          const deleteID = orderItemsProductsId.indexOf(deletePID);
          if (deleteID !== 0) {
            hr = document.getElementsByClassName("space-between-items")[deleteID-1];
            hr.parentNode.removeChild(hr)
          }
          if ((deleteID === 0) && (orderItems.length > 1)) {
            hr = document.getElementsByClassName("space-between-items")[deleteID];
            hr.parentNode.removeChild(hr)
          }
          const elem = document.getElementsByClassName("order-item")[deleteID];
          elem.parentNode.removeChild(elem)
          orderItems.splice(deleteID, 1)
          orderItemsProductsId.splice(deleteID, 1)
          updateTotal()
          if (orderItems.length === 0) {
            document.getElementById('modal-body').getElementsByClassName("cart-is-empty")[0].style.display = "block"
            createOrder.style.display = "none"
          }
        })
      })
      updateTotal()
      updateListenersForMinuss()
      updateListenersForPluss()
      updateListenersForInputs()
    }

    function updateListenersForMinuss() {
      const minusBtns = document.querySelectorAll('button[id^=minus-]')
      minusBtns.forEach(btn => {
        btn.addEventListener('click', event => {
          var pid = btn.id.replace('minus-','')
          var quantity = document.getElementById("quantity-" + pid)
          let q = parseInt(quantity.value) - 1
          if (q >= 1) {
            quantity.value = q
            var id = orderItemsProductsId.indexOf(pid)
            orderItems[id][4] = q
            priceChange(pid)
          }
        })
      })
    }

    function updateListenersForPluss() {
      const plusBtns = document.querySelectorAll('button[id^=plus-]')
      plusBtns.forEach(btn => {
        btn.addEventListener('click', event => {
          var pid = btn.id.replace('plus-','')
          var quantity = document.getElementById("quantity-" + pid)
          var q = parseInt(quantity.value) + 1
          quantity.value = q
          var id = orderItemsProductsId.indexOf(pid)
          orderItems[id][4] = q
          priceChange(pid)
        })
      })
    }

    function updateListenersForInputs() {
      const inputs = document.querySelectorAll('input[id^=quantity-]')
      inputs.forEach(input => {
        input.addEventListener("keyup", event => {
          var pid = input.id.replace('quantity-','')
          var id = orderItemsProductsId.indexOf(pid)
          var v = input.value;
          if (input.value === '') {
            orderItems[id][4] = 1
            input.value = 1
          } else if (/^\d*$/.test(v)) {
            if (parseInt(v) < 1) {
              orderItems[id][4] = 1
              input.value = 1
            } else {
              orderItems[id][4] = parseInt(input.value)
            }
          } else {
            input.value = orderItems[id][4]
          }
          priceChange(pid)
        })
      })
    }

    function priceChange(pid) {
      var price = document.getElementById("item-price-" + pid)
      var priceHrn = document.getElementById("item-price-hrn-" + pid)
      var id = orderItemsProductsId.indexOf(pid)
      orderItems[id][5] = Number((orderItems[id][3]*orderItems[id][4]).toFixed(2));
      price.textContent = orderItems[id][5]
      priceHrn.textContent = (orderItems[id][5] * dollarRate).toFixed(2)
      updateTotal()
    }

    const total = document.getElementById("total");
    const totalHrn = document.getElementById("total-hrn");

    function updateTotal() {
      let temp = 0
      orderItems.forEach(item => {
        temp += item[5];
      })
      total.textContent = (parseFloat(temp)).toFixed(2)
      totalHrn.textContent = (parseFloat(temp)*dollarRate).toFixed(2)
    }

    function generateOrderRequest() {
      var orderItemRequests = [];
      orderItems.forEach(orderItem => {
        orderItemRequests.push({
          'apricotId': orderItem[0],
          'quantity': orderItem[4],
          'price': orderItem[5],
          'apricotName': orderItem[2]
        })
      });
      return {
        'orderItemRequests': orderItemRequests,
        'totalPrice': total.textContent
      };
    }
  </script>
  <script type="text/javascript">
      jQuery(function() {
        $("#shop").css("padding-top", $("#hello").height())
        $(window).on('resize', function () {
            $("#shop").css("padding-top", $("#hello").height())
        });
        $("#create-order-button").on('click', function() {
            $.ajax({
                type: "POST",
                url: "/order_items",
                contentType: "application/json",
                data: JSON.stringify(generateOrderRequest()),
                success: function (res) {
                  console.info(res);
                  window.location.href += "order"
                },
                error: function(msg){
                  console.info(msg)
                }
            });
        })
      })
  </script>
</body>
</html>
