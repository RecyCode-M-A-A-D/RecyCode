package com.capstone.recycode.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class YourProfileController {

    @GetMapping("/profile")
    public String showProfile(){
        return "/profile";
    }
}
