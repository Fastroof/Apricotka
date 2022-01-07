package ua.com.apricotka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ua.com.apricotka.entity.User;
import ua.com.apricotka.repository.UserRepository;
import ua.com.apricotka.request.UserRegistrationRequest;

@Controller
public class AuthController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/login")
    public String showLoginPage(ModelMap model) {
        return "thymeleaf/login";
    }

    @GetMapping("/registration")
    public String showRegistrationPage(ModelMap model) {
        model.addAttribute("user", new UserRegistrationRequest());
        return "thymeleaf/registration";
    }

    @PostMapping("/registration")
    public String processRegister(ModelMap model, UserRegistrationRequest request) {
        if (userRepository.findByEmail(request.getEmail()).isPresent()) {
            model.addAttribute("msg", String.format("Користувач з email %s вже зареєстрований", request.getEmail()));
            model.addAttribute("link", "/registration");
            model.addAttribute("text", "Натисніть, щоб спробувати ще раз");
        } else {
            BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
            String encodedPassword = passwordEncoder.encode(request.getPassword());
            User user = new User();
            user.setEmail(request.getEmail());
            user.setPassword(encodedPassword);
            user.setFirstName(request.getFirstName());
            user.setLastName(request.getLastName());

            userRepository.save(user);
            model.addAttribute("msg", "Ви успішно зареєстровані!");
            model.addAttribute("link", "/login");
            model.addAttribute("text", "Натисніть, щоб продовжити");
        }
        return "info";
    }
}
