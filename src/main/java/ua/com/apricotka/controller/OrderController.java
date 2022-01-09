package ua.com.apricotka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import ua.com.apricotka.request.OrderItemRequest;

import java.util.List;

@Controller
public class OrderController {

    private List<OrderItemRequest> orderItemRequests;

    @PostMapping("/order_items")
    @ResponseBody
    public String redirectToOrderPage(@RequestBody List<List<String>> orderItems) {
        System.out.println(orderItems);
        orderItems.forEach(orderItem -> orderItemRequests.add(new OrderItemRequest(
                Long.parseLong(orderItem.get(0)),
                Long.parseLong(orderItem.get(4)),
                Double.parseDouble(orderItem.get(5)),
                orderItem.get(2))
        ));
        return "order created";
    }

    @GetMapping("/order")
    public String showOrderPage(ModelMap model) {
        double totalPrice = 0;
        for (OrderItemRequest orderItemRequest : orderItemRequests) {
            totalPrice += orderItemRequest.getPrice();
        }
        model.addAttribute("items", orderItemRequests);
        model.addAttribute("totalPrice", totalPrice);
        return "order";
    }
}
