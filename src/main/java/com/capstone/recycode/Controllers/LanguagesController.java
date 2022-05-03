package com.capstone.recycode.Controllers;

import com.capstone.recycode.Repositories.CategoryRepository;
import com.capstone.recycode.Repositories.PostRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LanguagesController {
    private CategoryRepository catDao;
    private PostRepository postDao;

    public LanguagesController(CategoryRepository catDao, PostRepository postDao) {
        this.postDao = postDao;
        this.catDao = catDao;
    }
    @GetMapping("/languages")
    public String showLanguages(Model model){
        model.addAttribute("languages", postDao.findAll());
        return "languages";
    }

    @PostMapping("/languages/search")
    public String showByCategory(@RequestParam(name = "category") String category, Model model) {
        model.addAttribute("languages", postDao.findAll());
        return "languages";
    }
}
