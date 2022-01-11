package ua.com.apricotka.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TourController {

    private static final Logger log = Logger.getLogger(TourController.class);

    @GetMapping("/tour")
    public String showTourPage(ModelMap model) {
        log.info("Tour page showed");
        return "tour";
    }
}
