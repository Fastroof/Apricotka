package ua.com.apricotka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import ua.com.apricotka.entity.Apricot;
import ua.com.apricotka.entity.ApricotImages;
import ua.com.apricotka.repository.ApricotImagesRepository;
import ua.com.apricotka.repository.ApricotRepository;

@Controller
public class IndexController {

    @Autowired
    private ApricotRepository apricotRepository;

    @Autowired
    private ApricotImagesRepository apricotImagesRepository;

    @GetMapping("/")
    public String showIndexPage(ModelMap model) {
        Iterable<Apricot> apricots = apricotRepository.findAll();
        Iterable<ApricotImages> apricotImages = apricotImagesRepository.findAll();
        model.addAttribute("apricots", apricots);
        model.addAttribute("apricotImages", apricotImages);
        return "index";
    }
}
