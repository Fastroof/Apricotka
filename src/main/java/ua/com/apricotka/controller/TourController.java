package ua.com.apricotka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TourController {

    @GetMapping("/tour")
    public String showTourPage(ModelMap model) {
        return "tour";
    }
}
