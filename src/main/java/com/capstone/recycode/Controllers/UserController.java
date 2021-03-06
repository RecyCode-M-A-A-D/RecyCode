package com.capstone.recycode.Controllers;

import com.capstone.recycode.Models.Post;
import com.capstone.recycode.Models.User;
import com.capstone.recycode.Repositories.PostRepository;
import com.capstone.recycode.Repositories.PostStatRepository;
import com.capstone.recycode.Repositories.UserRepository;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class UserController {

    private UserRepository userDao;
    private PostRepository postDao;

    private PostStatRepository postStatDao;

    private PasswordEncoder passwordEncoder;

    public UserController(UserRepository userDao, PasswordEncoder passwordEncoder, PostRepository postDao, PostStatRepository postStatDao) {
        this.userDao = userDao;
        this.passwordEncoder = passwordEncoder;
        this.postDao = postDao;
        this.postStatDao = postStatDao;
    }

    @Value("${filestack.api.key}")
    private String apiKey;

    @GetMapping("/signup")
    public String showSignUpForm(Model model) {
        model.addAttribute("user", new User());
        return "users/signup";
    }

    @PostMapping("/signup")
    public String saveUser(@RequestParam(name = "password") String password,
                           @RequestParam(name = "confirm_password") String confirmPass,
                           Model model,
                           @ModelAttribute User user) {

        //check if user already exsists
        if (userDao.findUserByUserName(user.getUserName()) == null || userDao.findUserByEmail(user.getEmail()) == null) {

            if (password.equals(confirmPass)) {
                if (password.length() >= 8) {
                    model.addAttribute("user", user);
                    String hash = passwordEncoder.encode(user.getPassword());
                    user.setPassword(hash);

                    /*sets a default image for the user*/
                    user.setAvatarImg("/img/default_avatar.png");
                    userDao.save(user);
                    return "redirect:/signin";
                } else {
                    model.addAttribute("error", "Password must be 8 characters or more");
                    return "users/signup";
                }
            } else {
                model.addAttribute("error", "Passwords do not match");
                return "users/signup";
            }
        } else {
            model.addAttribute("error", "Username or email already taken");
            return "users/signup";
        }

    }

    @GetMapping("/editUser")
    public String editUserGet(Model model) {
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        model.addAttribute("user", user);
        model.addAttribute("apiKey", apiKey);
        return "users/editUser";
    }

    @PostMapping("editUser")
    public String editUserPost(Model model,
                               @ModelAttribute User user,
                               @RequestParam(name = "password") String password,
                               @RequestParam(name = "confirm_password") String confirmPass) {
        if (password.equals(confirmPass)) {
            if (password.length() >= 8) {
                model.addAttribute("user", user);
                String hash = passwordEncoder.encode(user.getPassword());
                user.setPassword(hash);
                userDao.save(user);
                return "redirect:/profile";
            } else {
                model.addAttribute("error", "Password must be 8 characters or more");
                return "users/editUser";
            }
        } else {
            model.addAttribute("error", "Passwords do not match");
            return "users/editUser";
        }
    }

    @GetMapping("deleteUser")
    public String deleteUser(){
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        List<Post> postsToDelete = postDao.findPostsByUserId(user.getId());
        for (Post post:postsToDelete
             ) {
            postStatDao.deleteById(post.getPostId());
        }
        postDao.deleteAll(postsToDelete);
        userDao.deleteById(user.getId());

        SecurityContextHolder.clearContext();

        return "redirect:/signin?signout";
    }

}
