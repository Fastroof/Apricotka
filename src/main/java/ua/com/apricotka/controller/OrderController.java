package ua.com.apricotka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class OrderController {

    @PostMapping("/order_items")
    @ResponseBody
    public String redirectToOrderPage(@RequestBody List<List<String>> orderItems) {
        System.out.println(orderItems);
        return "order created";
    }

    @GetMapping("/order")
    public String showOrderPage() {
        return "order";
    }
}
