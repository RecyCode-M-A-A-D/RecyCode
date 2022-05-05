package com.capstone.recycode.Controllers;

import com.capstone.recycode.Models.Category;
import com.capstone.recycode.Models.Post;
import com.capstone.recycode.Models.User;
import com.capstone.recycode.Repositories.CategoryRepository;
import com.capstone.recycode.Repositories.PostRepository;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

@Controller
@SessionAttributes("post")
public class PostController {
    private PostRepository postDao;
    private CategoryRepository catDao;

    private PostController(PostRepository postDao, CategoryRepository catDao) {
        this.postDao = postDao;
        this.catDao = catDao;
    }


    @GetMapping("/")
    public String showPosts(Model model) {
        model.addAttribute("post", postDao.findAll());
        return "homePage";
    }

    @GetMapping("/post")
    public String showCreateAPost(Model model) {
        model.addAttribute("post", new Post());
        return "CreateAPost";
    }

    @PostMapping("/post")
    public String createAPost(@RequestParam(name = "category") String categoryName,
                              @ModelAttribute Post post) {
        //seeting current user to post
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        post.setUser(user);

        Category category = catDao.findByCategoryName(categoryName);
        List<Category> categories = new ArrayList<>();
        categories.add(category);
        post.setCategories(categories);

        postDao.save(post);
        return "CreateAPost";
    }
}
