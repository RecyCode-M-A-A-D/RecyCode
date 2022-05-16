package com.capstone.recycode.Controllers;

import com.capstone.recycode.Models.Favorite;
import com.capstone.recycode.Models.Post;
import com.capstone.recycode.Models.PostStat;
import com.capstone.recycode.Models.User;
import com.capstone.recycode.Repositories.FavoritesRepository;
import com.capstone.recycode.Repositories.PostRepository;
import com.capstone.recycode.Repositories.PostStatRepository;
import com.capstone.recycode.Repositories.UserRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class OtherUsersController {

    private PostRepository postDao;
    private UserRepository userDao;
    private PostStatRepository postStatDao;
    private FavoritesRepository favDao;

    public OtherUsersController(PostRepository postDao,
                                UserRepository userDao,
                                PostStatRepository postStatDao,
                                FavoritesRepository favDao) {
        this.postDao = postDao;
        this.userDao = userDao;
        this.postStatDao = postStatDao;
        this.favDao = favDao;

    }

    @GetMapping("/profile/{username}")
    public String viewUsersProfile(Model model, @PathVariable String username) {
        User user = userDao.findUserByUserName(username);

        model.addAttribute("user", user);

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
        return "otherUsers";

    }


    /*using profile as a return temporarily*/
    /*probably need to return profile name*/
    @PostMapping("/profile/upvote")
    public String upVote(@RequestParam(name = "post_id_value") long postId) {
        PostStat postStat = postStatDao.findPostStatById(postId);
        postStat.setUpVotesCount(postStat.getUpVotesCount() + 1L);
        postStatDao.updateVotes(postStat.getUpVotesCount(), postStat.getDownVotesCount(), postStat.getPost().getPostId());
        return "redirect:";
    }

    @PostMapping("/profile/downvote")
    public String downVote(@RequestParam(name = "post_id_value") long postId) {
        PostStat postStat = postStatDao.findPostStatById(postId);
        postStat.setDownVotesCount(postStat.getDownVotesCount() + 1L);
        postStatDao.updateVotes(postStat.getUpVotesCount(), postStat.getDownVotesCount(), postStat.getPost().getPostId());
        return "redirect:";
    }

    @PostMapping("/profile/addToFavorites")
    public String addToFavorites(@RequestParam(name = "post_id_value") Long postId) {
        //save current time, user logged in, and post info into the users favorites
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        System.out.println(postId);

        favDao.save(new Favorite(java.time.LocalDate.now().toString(), user, postDao.getById(postId)));

        return "redirect:/profile";
    }
}
