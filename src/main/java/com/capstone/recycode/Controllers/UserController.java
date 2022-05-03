package com.capstone.recycode.Controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

public class UserController {

    @GetMapping("/home")
    @ResponseBody
    public String homePage() {

        System.out.println("endpoint");
        return "This is the landing page!";
    }
}
