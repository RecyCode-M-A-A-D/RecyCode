package com.capstone.recycode.Controllers;

import com.capstone.recycode.Models.User;
import com.capstone.recycode.Repositories.PostRepository;
import com.capstone.recycode.Repositories.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class OtherUsersController {

    private PostRepository postDao;
    private UserRepository userDao;

    public OtherUsersController(PostRepository postDao, UserRepository userDao) {
        this.postDao = postDao;
        this.userDao = userDao;
    }

    @GetMapping("/profile/{username}")
    public String viewUsersProfile(Model model, @PathVariable String username){
//        model.addAttribute("post", postDao.findPostsByUser(username));
        return "/otherUsers";
    }
}
