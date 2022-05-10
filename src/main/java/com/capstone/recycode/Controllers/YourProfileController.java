package com.capstone.recycode.Controllers;
import com.capstone.recycode.Models.Favorite;
import com.capstone.recycode.Models.Post;
import com.capstone.recycode.Models.PostStat;
import com.capstone.recycode.Models.User;
import com.capstone.recycode.Repositories.FavoritesRepository;
import com.capstone.recycode.Repositories.PostRepository;
import com.capstone.recycode.Repositories.PostStatRepository;
import com.capstone.recycode.Repositories.UserRepository;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class YourProfileController {
    private PostRepository postDao;
    private UserRepository userDao;
    private PostStatRepository postStatDao;
    private FavoritesRepository favDao;

    public YourProfileController(PostRepository postDao,
                                 UserRepository userDao,
                                 PostStatRepository postStatDao,
                                 FavoritesRepository favDao) {
        this.postDao = postDao;
        this.userDao = userDao;
        this.postStatDao = postStatDao;
        this.favDao = favDao;

    }

    @GetMapping("/profile")
    public String showProfile(Model model) {
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        List<Favorite> favorites = favDao.findFavoritesByUserId(user.getId());
        List<Post> favoritePosts = new ArrayList<>();

        List<Post> posts = postDao.findPostsByUserId(user.getId());
        model.addAttribute("post", postDao.findPostsByUserId(user.getId()));
        List<PostStat> postStats = new ArrayList<>();

        for (int i = 0; i < posts.size(); i++) {
            System.out.println("test");
            postStats.add(postStatDao.findPostStatById(posts.get(i).getPostId()));
        }


        for (int i = 0; i < favorites.size(); i++) {
            favoritePosts.add(favorites.get(i).getPost());
        }

        for (int i = 0; i < favorites.size(); i++) {
            favoritePosts.add(favorites.get(i).getPost());
        }

        model.addAttribute("postStats", postStats);
        model.addAttribute("favorites", favoritePosts);
        return "/profile";
    }

    @PostMapping("/profile/favorites/delete")
    public String removeFromFavorites(@RequestParam(name = "post_id_value") Long id) {
        return "profile";
    }

}
