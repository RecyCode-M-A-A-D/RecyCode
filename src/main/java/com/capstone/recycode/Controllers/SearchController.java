package com.capstone.recycode.Controllers;

import com.capstone.recycode.Models.Category;
import com.capstone.recycode.Models.Post;
import com.capstone.recycode.Models.Tag;
import com.capstone.recycode.Models.User;
import com.capstone.recycode.Repositories.CategoryRepository;
import com.capstone.recycode.Repositories.PostRepository;
import com.capstone.recycode.Repositories.TagRepository;
import com.capstone.recycode.Repositories.UserRepository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public class SearchController {
    private UserRepository userDao;
    private PostRepository postDao;
    private CategoryRepository catDao;
    private TagRepository tagDao;


    public SearchController() {

    }

    @PostMapping("/search")
    public String search(@RequestParam(name = "searched_value") String searchedValue, Model m) {
        List<User> users = userDao.findSimilarUsersByName(searchedValue);
        List<Post> posts = postDao.findSimilarPostsByTitle(searchedValue);
        Category cat = catDao.findByCategoryName(searchedValue);

        m.addAttribute("searchedUsers", users );
        m.addAttribute("searchedPosts", posts);
        m.addAttribute("searchedCategories", cat);
    }
}
