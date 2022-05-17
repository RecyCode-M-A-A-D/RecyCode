package com.capstone.recycode.Controllers;

import com.capstone.recycode.Models.Category;
import com.capstone.recycode.Models.Post;
import com.capstone.recycode.Models.Tag;
import com.capstone.recycode.Models.User;
import com.capstone.recycode.Repositories.*;
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
    private PostStatRepository postStatDao;
    private TagRepository tagDao;
    public LanguagesController(CategoryRepository catDao, PostRepository postDao,
                               UserRepository userDao, PostStatRepository postStatDao, TagRepository tagDao) {
        this.catDao = catDao;
        this.postDao = postDao;
        this.userDao = userDao;
        this.postStatDao = postStatDao;
        this.tagDao = tagDao;
    }

    @GetMapping("/languages")
    public String showByCategory(Model model) {
        model.addAttribute("posts", postDao.findAll());
        model.addAttribute("Languages", catDao.findByCategoryName("HTML"));
        return "languages";
    }

    @PostMapping("/languages/search")
    public String showLanguages(@RequestParam (name = "category") String category, Model model){
        System.out.println(category);
        Category cat = catDao.findByCategoryName(category);

        model.addAttribute("Languages", cat);
        model.addAttribute("posts", cat.getPosts());
        return "languages";
    }

    @PostMapping("/search/results")
    public String search(@RequestParam(name = "searched_value") String searchedValue, Model m) {
        List<User> users = userDao.findSimilarUsersByName(searchedValue);
        List<Post> posts = postDao.findSimilarPostsByTitle(searchedValue);
        List<Post> posts1 = postDao.findSimilarPostsByDescription(searchedValue);
        Category cat = catDao.findByCategoryName(searchedValue);
        List<Post> tag = postDao.findPostsByTags(searchedValue);

        /*tags results will go here and we need an if statement for that as well*/

        /*reason this is not an if else statement is to find anything related to the search result vs
         * one thing related to the search result*/
        m.addAttribute("searchedDescription", posts1);

        if(users != null) {
            m.addAttribute("searchedUsers", users );
        }
        if(posts != null) {
            m.addAttribute("searchedPosts", posts);
        }
        if(cat != null){
            m.addAttribute("searchedCategories", cat);
        }
        if(tag != null){
            m.addAttribute("searchedTags", tag);
        }
        if(users != null && posts != null && cat != null && tag != null){
            m.addAttribute("error", true);
        }

        return "languages";
    }
}
