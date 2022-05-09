package com.capstone.recycode.Controllers;

import com.capstone.recycode.Models.Category;
import com.capstone.recycode.Models.Post;
import com.capstone.recycode.Models.User;
import com.capstone.recycode.Repositories.CategoryRepository;
import com.capstone.recycode.Repositories.PostRepository;
import com.capstone.recycode.Repositories.TagRepository;
import com.capstone.recycode.Repositories.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class SearchController {
    private UserRepository userDao;
    private PostRepository postDao;
    private CategoryRepository catDao;
    private TagRepository tagDao;


    public SearchController(UserRepository userDao, PostRepository postDao,
                            CategoryRepository catDao, TagRepository tagDao) {
        this.userDao = userDao;
        this.catDao = catDao;
        this.postDao = postDao;
        this.tagDao = tagDao;
    }
    /*I created an HTML page for this to work so that I could test it
    * we can either make a different html page for the results or just use a page we already have.*/
    @GetMapping("/search")
    public String getSearch() {
        return "SearchResults";
    }


}
