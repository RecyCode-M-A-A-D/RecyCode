package com.capstone.recycode.Controllers;

import com.capstone.recycode.Models.Post;
import com.capstone.recycode.Repositories.PostRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("post")
public class PostController {
    private PostRepository postDao;
    private PostController(PostRepository postDao) {this.postDao = postDao;}

    @GetMapping("/post")
    public String showCreateAPost(Model model) {
        model.addAttribute("post", new Post());
        return "CreateAPost";
    }

    @PostMapping("/post")
    public String createAPost(@ModelAttribute Post post) {
        postDao.save(post);
        return "CreateAPost";
    }
}
