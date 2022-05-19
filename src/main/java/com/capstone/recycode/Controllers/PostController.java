package com.capstone.recycode.Controllers;

import com.capstone.recycode.Models.*;
import com.capstone.recycode.Repositories.CategoryRepository;
import com.capstone.recycode.Repositories.PostRepository;
import com.capstone.recycode.Repositories.PostStatRepository;
import com.capstone.recycode.Repositories.TagRepository;
import org.springframework.security.core.context.SecurityContextHolder;
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
    private TagRepository tagDao;

    private PostController(PostRepository postDao, CategoryRepository catDao,
                           PostStatRepository postStatDao, TagRepository tagDao) {
        this.postDao = postDao;
        this.catDao = catDao;
        this.postStatDao = postStatDao;
        this.tagDao = tagDao;
    }

    @GetMapping("/")
    public String showPosts() {
        return "landingPage";
    }

    @GetMapping("/posts")
    public String showPosts(Model model){
        model.addAttribute("post", postDao.findAll());
        return "homePage";
    }

    @GetMapping("/post/{id}")
    public String showSinglePost(@PathVariable long id, Model model) {
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
                              @RequestParam(name = "tag") String tag,
                              @ModelAttribute Post post) {

        /*lets get the tags and separate it by commas*/
        List<String> string = List.of(tag.split(", "));
        List<Tag> t1 = new ArrayList<>();
        List<Tag> t2;

        for (String s : string) {
            tagDao.save(new Tag(s));
            t2 = tagDao.findTagsByName(s);
            t1.addAll(t2);
        }
        post.setTags(t1);

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
        PostStat postStat = new PostStat(0, 0, post);
        postStatDao.save(postStat);
        return "redirect:/profile";
    }

    @GetMapping("/edit/post/{id}")
    public String editPostGet(@PathVariable long id, Model model) {
        model.addAttribute("post", postDao.getById(id));
//        model.addAttribute("stat", postStatDao.findPostStatById(id));
        return "editPost";
    }


//    @PostMapping("/edit/post")
//    public String editPost(@RequestParam(name = "title") String title,
//                           @RequestParam(name = "content") String content,
//                           @RequestParam(name = "description") String description,
//                           @RequestParam(name = "date_published") String date,
//                           @RequestParam(name = "post_id_value") Long postID) {
//        postDao.updatePost(title, content, description, date, postID);
//        return "redirect:/profile";
//    }

    @PostMapping("/edit/post")
    public String editPost(@ModelAttribute Post post, Model model, @RequestParam(name = "category") String categoryName, @RequestParam(name = "tag") String tag) {
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        post.setUser(user);
        /*lets get the tags and separate it by commas*/
        List<String> string = List.of(tag.split(", "));
        List<Tag> t1 = new ArrayList<>();
        List<Tag> t2;

        for (String s : string) {
            tagDao.save(new Tag(s));
            t2 = tagDao.findTagsByName(s);
            t1.addAll(t2);
        }
        post.setTags(t1);
        Category category = catDao.findByCategoryName(categoryName);
        List<Category> categories = new ArrayList<>();
        categories.add(category);
        //gets current date into the database
        post.setDate_published(java.time.LocalDate.now().toString());
        post.setCategories(categories);
//        System.out.println(id);
//        PostStat postStat = postStatDao.findPostStatByPostId(id);
//        Long statId = postStat.getStatId();
//        postStat.setStatId(statId);
        model.addAttribute("post", post);
//        model.addAttribute("stat", postStat);
//        postStatDao.save(postStat);
        postDao.save(post);
        return "redirect:/profile";
    }

    @GetMapping("/posts/{id}/delete")
    public String deletePost(@PathVariable long id){
        postStatDao.deleteById(id);
        postDao.deleteById(id);
        return "redirect:/profile";
    }
}
