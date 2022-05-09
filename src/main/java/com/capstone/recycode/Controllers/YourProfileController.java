package com.capstone.recycode.Controllers;
import com.capstone.recycode.Models.Favorite;
import com.capstone.recycode.Models.Post;
import com.capstone.recycode.Models.User;
import com.capstone.recycode.Repositories.FavoritesRepository;
import com.capstone.recycode.Repositories.PostRepository;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class YourProfileController {
    private PostRepository postDao;
    private FavoritesRepository favDao;

    public YourProfileController(PostRepository postDao, FavoritesRepository favDao) {
        this.favDao = favDao;
        this.postDao = postDao;
    }

    @GetMapping("/profile")
    public String showProfile(Model model) {
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        List<Favorite> favorites = favDao.findFavoritesByUserId(user.getId());
        List<Post> favoritePosts = new ArrayList<>();

        for(int i = 0; i < favorites.size(); i++) {
            favoritePosts.add(favorites.get(i).getPost());
        }

        model.addAttribute("posts", postDao.findPostsByUserId(user.getId()));
        model.addAttribute("favorites", favoritePosts);
        return "/profile";
    }

}
