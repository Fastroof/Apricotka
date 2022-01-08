var btn = document.getElementById("cart-button")

btn.onclick = function() {
    modal.style.display = "block"
}

var span = document.getElementsByClassName("close")[0]

span.onclick = function() {
    modal.style.display = "none"
}

var modal = document.getElementById("modal")

window.onclick = function(event) {
    if (event.target === modal) {
        modal.style.display = "none"
    }
}

var orderItems = []
var orderItemsProductsId = []

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
        orderItems.push([productId, imgF, name, price, 1])
        orderItemsProductsId.push(productId)
        refreshCart(orderItems.length-1)
    })
})

function refreshCart(len) {
    var mb = document.getElementById('modal-body')
    if (len !== 0) {
        mb.innerHTML += "<hr class=\"space-between-items\">\n"
    } else {
        mb.getElementsByClassName("cart-is-empty")[0].style.display = "none"
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
        "                  <button class=\"minus\" id=\"minus-" + orderItems[len][0] + "\">-</button>\n" +
        "                  <label>\n" +
        "                    <input class=\"quantity\" id=\"quantity-" + orderItems[len][0] + "\" value=\"1\">\n" +
        "                  </label>\n" +
        "                  <button class=\"plus\" id=\"plus-"+ orderItems[len][0] + "\">+</button>\n" +
        "                </div>\n" +
        "                <span class=\"item-price\">" + orderItems[len][3] + "</span>\n" +
        "              </div>\n" +
        "            </div>\n" +
        "          </div>"
    updateListeners()
}

function updateListeners() {
    const dBbtns = document.querySelectorAll('span[id^=item-delete]')
    dBbtns.forEach(btn => {
        btn.addEventListener('click', event => {
            var deletePID = btn.id.replace('item-delete','')

            document.getElementById("add-to-cart-span" + deletePID).textContent="Додати в кошик"
            document.getElementById("add-to-cart" + deletePID).setAttribute("style", "")

            var deleteID = orderItemsProductsId.indexOf(deletePID)
            if (deleteID !== 0) {
                var hr = document.getElementsByClassName("space-between-items")[deleteID-1]
                hr.parentNode.removeChild(hr)
            }
            if ((deleteID === 0) && (orderItems.length > 1)) {
                var hr = document.getElementsByClassName("space-between-items")[deleteID]
                hr.parentNode.removeChild(hr)
            }
            var elem = document.getElementsByClassName("order-item")[deleteID]
            elem.parentNode.removeChild(elem)
            orderItems.splice(deleteID, 1)
            orderItemsProductsId.splice(deleteID, 1)
            if (orderItems.length === 0) {
                document.getElementById('modal-body').getElementsByClassName("cart-is-empty")[0].style.display = "block"
            }
        })
    })
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
            var q = parseInt(quantity.getAttribute("value")) - 1
            quantity.setAttribute("value", q.toString())
            var id = orderItemsProductsId.indexOf(pid)
            orderItems[id][4] = q
        })
    })
}

function updateListenersForPluss() {
    const plusBtns = document.querySelectorAll('button[id^=plus-]')
    plusBtns.forEach(btn => {
        btn.addEventListener('click', event => {
            var pid = btn.id.replace('plus-','')
            var quantity = document.getElementById("quantity-" + pid)
            var q = parseInt(quantity.getAttribute("value")) + 1
            quantity.setAttribute("value", q.toString())
            var id = orderItemsProductsId.indexOf(pid)
            orderItems[id][4] = q
        })
    })
}

function updateListenersForInputs() {
    const inputs = document.querySelectorAll('input[id^=quantity-]')
    inputs.forEach(input => {
        input.addEventListener('change', event => {
            console.info(orderItems)
            var pid = btn.id.replace('quantity-','')
            var id = orderItemsProductsId.indexOf(pid)
            orderItems[id][4] = parseInt(input.textContent)
            input.setAttribute("value", input.textContent)
            console.info(orderItems)
        })
    })
}