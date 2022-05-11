package com.capstone.recycode.Controllers;

import com.capstone.recycode.Models.*;
import com.capstone.recycode.Repositories.CategoryRepository;
import com.capstone.recycode.Repositories.PostRepository;
import com.capstone.recycode.Repositories.PostStatRepository;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@SessionAttributes("post")
public class PostController {
    private PostRepository postDao;
    private CategoryRepository catDao;
    private PostStatRepository postStatDao;

    private PostController(PostRepository postDao, CategoryRepository catDao, PostStatRepository postStatDao) {
        this.postDao = postDao;
        this.catDao = catDao;
        this.postStatDao = postStatDao;
    }


    @GetMapping("/")
    public String showPosts(Model model) {
        model.addAttribute("post", postDao.findAll());
        return "homePage";
    }

    @GetMapping("/post/{id}")
    public String showSinglePost(@PathVariable long id, Model model){
        model.addAttribute("post", postDao.getById(id));
        return "singlePost";
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

        //get category info and place it to the respective post upon creation
        Category category = catDao.findByCategoryName(categoryName);
        List<Category> categories = new ArrayList<>();
        categories.add(category);
        //gets current date into the database
        post.setDate_published(java.time.LocalDate.now().toString());
        post.setCategories(categories);

        //we have to save the post bofore adjusting anything in it.
        postDao.save(post);

        //posts status will start at 0 since it is being created and has no views (stats)
        PostStat postStat = new PostStat(0,0, post);
        postStatDao.save(postStat);
        return "CreateAPost";
    }

    @PostMapping("/edit/post")
    public String editPost(@RequestParam(name = "title") String title,
                           @RequestParam(name = "content") String content,
                           @RequestParam(name = "description") String description,
                           @RequestParam(name = "date_published") String date,
                           @RequestParam(name = "post_id_value") Long postID) {
        postDao.updatePost(title, content, description, date, postID);
        return "redirect:/profile";
    }
}
