package ua.com.apricotka.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import ua.com.apricotka.entity.Order;
import ua.com.apricotka.repository.OrderRepository;

@Controller
public class OrderInfoController {

    private static final Logger log = Logger.getLogger(OrderInfoController.class);

    @Autowired
    private OrderRepository orderRepository;

    @GetMapping("/order_info")
    public String showOrderInfoPage() {
        log.info("Order info page showed");
        return "order_info";
    }

    @GetMapping("/order_info/orders?id={orderId}")
    public String showOrderInfoPageWithInformationAboutSearchingOrderByID(@PathVariable long orderId, ModelMap model) {
        String info = "Замовлення номер " + orderId + "не знайдено";
        Order order = orderRepository.findById(orderId);
        if (order != null) {
            info = "Замовлення номер: " + order.getId() +
                    "\nЗамовник: " + order.getFullname() +
                    "\nEmail: " + order.getEmail() +
                    "\nАдреса: " + order.getAddress() +
                    "\nНаселений пункт: " + order.getCity() +
                    "\nСпосіб оплати: " + order.getPayment();
        }
        model.addAttribute("info", info);
        log.info("Order info page with information about order with id" + orderId + "showed");
        return "order_info";
    }

}
