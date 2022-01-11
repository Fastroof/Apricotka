//package ua.com.apricotka.rest;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RestController;
//import ua.com.apricotka.entity.Order;
//import ua.com.apricotka.repository.OrderRepository;
//
//@RestController
//public class OrderInfoRestController {
//
//    @Autowired
//    private OrderRepository orderRepository;
//
//    @PostMapping("/order_info?id={orderId}")
//    public String showOrderInfoPageWithInformationAboutSearchingOrderByID(@PathVariable long orderId, ModelMap model) {
//        String info = "Замовлення номер " + orderId + "не знайдено";
//        Order order = orderRepository.findById(orderId);
//        if (order != null) {
//            info = "Замовлення номер: " + order.getId() +
//                    "\nЗамовник: " + order.getFullname() +
//                    "\nEmail: " + order.getEmail() +
//                    "\nАдреса: " + order.getAddress() +
//                    "\nНаселений пункт: " + order.getCity() +
//                    "\nСпосіб оплати: " + order.getPayment();
//        }
//        model.addAttribute("info", info);
//        return "order_info";
//    }
//}
