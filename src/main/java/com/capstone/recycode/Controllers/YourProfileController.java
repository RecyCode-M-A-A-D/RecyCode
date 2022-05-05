package com.capstone.recycode.Controllers;

import com.capstone.recycode.Models.User;
import com.capstone.recycode.Repositories.PostRepository;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class YourProfileController {
    private PostRepository postDao;

    public YourProfileController(PostRepository postDao) {
        this.postDao = postDao;
    }

    @GetMapping("/profile")
    public String showProfile(Model model) {
        System.out.println("test");
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        System.out.println(user.getUserName());
        model.addAttribute("posts", postDao.findPostsByUserId(user.getId()));
        return "/profile";
    }
}
