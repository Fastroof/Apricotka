package ua.com.apricotka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ua.com.apricotka.entity.User;
import ua.com.apricotka.repository.UserRepository;

@Controller
public class RegistrationController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/registration")
    public String showRegistrationPage(ModelMap model) {
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(ModelMap model, User user) {
        User userFromDb = userRepository.findByUsername(user.getUsername());

        if (userFromDb != null) {
            model.put("message", "Даний користувач вже зареєстрований");
            return "registration";
        }
        userRepository.save(user);
        return "redirect:/login";
    }

}
