package com.capstone.recycode.Controllers;

import com.capstone.recycode.Models.User;
import com.capstone.recycode.Repositories.UserRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {

    private UserRepository userDao;

    private PasswordEncoder passwordEncoder;

    public UserController(UserRepository userDao, PasswordEncoder passwordEncoder) {
        this.userDao = userDao;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/register")
    public String showSignUpForm(Model model) {
        model.addAttribute("user", new User());
        return "/users/register";
    }

    @PostMapping("/register")
    public String saveUser(@RequestParam(name = "password") String password,
                           @RequestParam(name = "confirm_password") String confirmPass,
                           Model model,
                           @ModelAttribute User user) {
        //check if user already exsists
        if (userDao.findUserByUserName(user.getUserName()) == null || userDao.findUserByEmail(user.getEmail()) == null) {

            if (password.equals(confirmPass)) {
                if (password.length() > 8) {
                    model.addAttribute("user", user);
                    String hash = passwordEncoder.encode(user.getPassword());
                    user.setPassword(hash);
                    userDao.save(user);
                    return "redirect:/login";
                } else {
                    model.addAttribute("error", "Password must be 8 characters or more");
                    return "/users/register";
                }
            } else {
                model.addAttribute("error", "Passwords do not match");
                return "/users/register";
            }
        } else {
            model.addAttribute("error", "Username or email already taken");
            return "users/register";
        }

    }


}
