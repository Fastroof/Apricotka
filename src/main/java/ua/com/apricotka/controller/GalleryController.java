package ua.com.apricotka.controller;

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

    @GetMapping("/gallery")
    public String showIndexPage(ModelMap model) {
        Iterable<Gallery> galleryGroups = galleryRepository.findAll();
        Iterable<GalleryImage> galleryImages = galleryImageRepository.findAll();
        model.addAttribute("galleryGroups", galleryGroups);
        model.addAttribute("galleryImages", galleryImages);
        return "gallery";
    }
}
