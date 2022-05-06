package com.capstone.recycode.Repositories;

import com.capstone.recycode.Models.Post;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface PostRepository extends JpaRepository<Post, Long> {
    @Query(value = "SELECT * FROM posts WHERE user_id = ?1", nativeQuery = true)
    List<Post> findPostsByUserId(@RequestParam(name = "user_id") long id);

/*    Post findPostsByUser(String userName);*/
}
