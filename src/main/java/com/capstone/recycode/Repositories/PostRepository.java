package com.capstone.recycode.Repositories;

import com.capstone.recycode.Models.Post;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.security.core.parameters.P;
import org.springframework.web.bind.annotation.RequestParam;

import javax.transaction.Transactional;
import java.util.List;

public interface PostRepository extends JpaRepository<Post, Long> {
    @Query(value = "SELECT * FROM posts WHERE user_id = ?1", nativeQuery = true)
    List<Post> findPostsByUserId(@RequestParam(name = "user_id") long id);

    @Query(value = "SELECT * FROM posts WHERE title LIKE %?1%", nativeQuery = true)
    List<Post> findSimilarPostsByTitle(@Param("title") String title);

    @Transactional
    @Modifying(clearAutomatically = true, flushAutomatically = true)
    @Query(value = "UPDATE posts SET title = ?1, content = ?2 , description = ?3, date_published = ?4 WHERE post_id  = ?5", nativeQuery = true)
    void updatePost(@Param("title") String title,
                     @Param("content") String content,
                     @Param("description") String description,
                     @Param("date_published") String datePublished,
                     @Param("post_id") Long postId);

    /*overloaded update Post with img*/
    @Transactional
    @Modifying(clearAutomatically = true, flushAutomatically = true)
    @Query(value = "UPDATE posts SET title = ?1, content = ?2 , description = ?3, date_published = ?4, image_url = ?5 WHERE post_id  = ?6", nativeQuery = true)
    void updatePost(@Param("title") String title,
                    @Param("content") String content,
                    @Param("description") String description,
                    @Param("date_published") String datePublished,
                    @Param("image_url") String imageURL,
                    @Param("post_id") Long postId);

/*    Post findPostsByUser(String userName);*/
}
