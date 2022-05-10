package com.capstone.recycode.Controllers;

import com.capstone.recycode.Models.Category;
import com.capstone.recycode.Models.Post;
import com.capstone.recycode.Models.User;
import com.capstone.recycode.Repositories.CategoryRepository;
import com.capstone.recycode.Repositories.PostRepository;
import com.capstone.recycode.Repositories.UserRepository;
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
    private UserRepository userDao;
    public LanguagesController(CategoryRepository catDao, PostRepository postDao, UserRepository userDao) {
        this.catDao = catDao;
        this.postDao = postDao;
        this.userDao = userDao;
    }

    @GetMapping("/languages")
    public String showByCategory(Model model) {
        model.addAttribute("posts", postDao.findAll());
        model.addAttribute("Languages", catDao.findByCategoryName("HTML"));
        return "languages";
    }

    @PostMapping("/languages/search")
    public String showLanguages(@RequestParam (name = "category") String category, Model model){
        Category cat = catDao.findByCategoryName(category);

        model.addAttribute("Languages", cat);
        model.addAttribute("posts", cat.getPosts());
        return "languages";
    }

    @PostMapping("/search/results")
    public String search(@RequestParam(name = "searched_value") String searchedValue, Model m) {
        List<User> users = userDao.findSimilarUsersByName(searchedValue);
        List<Post> posts = postDao.findSimilarPostsByTitle(searchedValue);
        Category cat = catDao.findByCategoryName(searchedValue);

        /*tags results will go here and we need an if statement for that as well*/

        /*reason this is not an if else statement is to find anything related to the search result vs
         * one thing related to the search result*/
        if(users != null) {
            m.addAttribute("searchedUsers", users );
        }
        if(posts != null) {
            m.addAttribute("searchedPosts", posts);
        }
        if(cat != null){
            m.addAttribute("searchedCategories", cat);
        }
        if(users != null && posts != null && cat != null){
            m.addAttribute("error", true);
        }

        return "languages";
    }
}
