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
    private PostRepository postDao;

    public LanguagesController(CategoryRepository catDao, PostRepository postDao) {
        this.postDao = postDao;
        this.catDao = catDao;
    }

    @GetMapping("/languages")
    public String showByCategory(Model model) {
        model.addAttribute("languages", catDao.findByCategoryName("HTML"));
        return "languages";
    }

    @PostMapping("/languages/search")
    public String showLanguages(@RequestParam (name = "category") String category ,Model model){
        System.out.println("cats");
        System.out.println(category);
        Category cat = catDao.findByCategoryName(category);

        model.addAttribute("languages", cat);
        model.addAttribute("posts", cat.getPosts());
        return "languages";
    }
}
