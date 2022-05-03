package com.capstone.recycode.Controllers;

import com.capstone.recycode.Models.Category;
import com.capstone.recycode.Models.Post;
import com.capstone.recycode.Repositories.CategoryRepository;
import com.capstone.recycode.Repositories.PostRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class LanguagesController {
    private CategoryRepository catDao;
    /*postDao is only used for testing*/
    private PostRepository postDao;

    public LanguagesController(CategoryRepository catDao, PostRepository postDao) {
        this.catDao = catDao;
        this.postDao = postDao;
    }

    @GetMapping("/languages")
    public String showByCategory(Model model) {
        model.addAttribute("posts", postDao.findAll());
        model.addAttribute("Languages", catDao.findByCategoryName("HTML"));
        return "languages";
    }

    @PostMapping("/languages/search")
    public String showLanguages(@RequestParam (name = "category") String category ,Model model){
        System.out.println(category);
        Category cat = catDao.findByCategoryName(category);

        model.addAttribute("Languages", cat);
        model.addAttribute("posts", cat.getPosts());
        return "languages";
    }
}
