package ua.com.apricotka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import ua.com.apricotka.entity.Apricot;
import ua.com.apricotka.entity.ApricotImage;
import ua.com.apricotka.repository.ApricotImageRepository;
import ua.com.apricotka.repository.ApricotRepository;

@Controller
public class IndexController {

    @Autowired
    private ApricotRepository apricotRepository;

    @Autowired
    private ApricotImageRepository apricotImageRepository;

    @GetMapping("/")
    public String showIndexPage(ModelMap model) {
        Iterable<Apricot> apricots = apricotRepository.findAll();
        Iterable<ApricotImage> apricotImages = apricotImageRepository.findAll();
        model.addAttribute("apricots", apricots);
        model.addAttribute("apricotImages", apricotImages);
        return "index";
    }
}
