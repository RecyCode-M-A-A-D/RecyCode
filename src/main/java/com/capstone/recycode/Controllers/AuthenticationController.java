package com.capstone.recycode.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthenticationController {

    @GetMapping("/signin")
    public String showLoginForm(){
        return "users/signin";
    }
}
