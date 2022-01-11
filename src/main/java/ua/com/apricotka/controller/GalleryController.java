package ua.com.apricotka.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import ua.com.apricotka.entity.Gallery;
import ua.com.apricotka.entity.GalleryImage;
import ua.com.apricotka.repository.GalleryImageRepository;
import ua.com.apricotka.repository.GalleryRepository;

@Controller
public class GalleryController {

    @Autowired
    private GalleryRepository galleryRepository;

    @Autowired
    private GalleryImageRepository galleryImageRepository;

    private static final Logger log = Logger.getLogger(GalleryController.class);

    @GetMapping("/gallery")
    public String showGalleryPage(ModelMap model) {
        Iterable<Gallery> galleryGroups = galleryRepository.findAll();
        log.info("All gallery groups was got");
        Iterable<GalleryImage> galleryImages = galleryImageRepository.findAll();
        log.info("All gallery images was got");
        model.addAttribute("galleryGroups", galleryGroups);
        model.addAttribute("galleryImages", galleryImages);
        log.info("Gallery page showed");
        return "gallery";
    }
}
