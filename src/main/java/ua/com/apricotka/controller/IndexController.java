package ua.com.apricotka.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import ua.com.apricotka.entity.Apricot;
import ua.com.apricotka.entity.ApricotImage;
import ua.com.apricotka.rate.DollarRate;
import ua.com.apricotka.repository.ApricotImageRepository;
import ua.com.apricotka.repository.ApricotRepository;

@Controller
public class IndexController {

    @Autowired
    private ApricotRepository apricotRepository;

    @Autowired
    private ApricotImageRepository apricotImageRepository;

    @Autowired
    private DollarRate dollarRate = new DollarRate();

    private static final Logger log = Logger.getLogger(IndexController.class);

    @GetMapping("/")
    public String showIndexPage(ModelMap model) {
        Iterable<Apricot> apricots = apricotRepository.findAll();
        log.info("All apricots was got");
        Iterable<ApricotImage> apricotImages = apricotImageRepository.findAll();
        log.info("All apricots images was got");
        model.addAttribute("apricots", apricots);
        model.addAttribute("apricotImages", apricotImages);
        model.addAttribute("dollarRate", dollarRate.getRate());
        log.info("Index page showed");
        return "index";
    }
}
