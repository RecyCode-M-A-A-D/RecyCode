package com.capstone.recycode.Controllers;

import com.capstone.recycode.Models.Post;
import com.capstone.recycode.Models.PostStat;
import com.capstone.recycode.Models.User;
import com.capstone.recycode.Repositories.PostRepository;
import com.capstone.recycode.Repositories.PostStatRepository;
import com.capstone.recycode.Repositories.UserRepository;
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

    public OtherUsersController(PostRepository postDao, UserRepository userDao, PostStatRepository postStatDao) {
        this.postDao = postDao;
        this.userDao = userDao;
        this.postStatDao = postStatDao;

    }

    @GetMapping("/profile/{username}")
    public String viewUsersProfile(Model model, @PathVariable String username){
        User user = userDao.findUserByUserName(username);

        if(user != null) {
            List<Post> posts = postDao.findPostsByUserId(user.getId());
            List<PostStat> postStats = new ArrayList<>();

            for(int i = 0; i < posts.size(); i++) {
                System.out.println("test");
                postStats.add(postStatDao.findPostStatById(posts.get(i).getPostId()));
            }

            model.addAttribute("postStats", postStats);
            return "otherUsers";

        } else {
            //error page;
            System.out.println("we need to make an error page");
            return "otherUsers";
        }
    }


    /*using profile as a return temporarily*/
    @PostMapping("/profile/upvote")
    public String upVote(@RequestParam(name = "post_id_value") long postId) {
        PostStat postStat = postStatDao.findPostStatById(postId);
        postStatDao.updateVotes(postStat.getUpVotesCount() + 1, postStat.getDownVotesCount(), postStat.getPost().getPostId());
        System.out.println(postId);
        return "otherUsers";
    }

    @PostMapping("/profile/downvote")
    public String downVote(@RequestParam (name ="post_id_value") long postId) {
        PostStat postStat = postStatDao.findPostStatById(postId);
        postStatDao.updateVotes(postStat.getUpVotesCount(), postStat.getDownVotesCount() + 1, postId);
        System.out.println(postId);
        return "otherUsers";
    }
}
