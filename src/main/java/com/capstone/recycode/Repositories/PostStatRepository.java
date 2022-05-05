package com.capstone.recycode.Repositories;

import com.capstone.recycode.Models.PostStat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface PostStatRepository extends JpaRepository<PostStat, Long> {
    @Query(value = "SELECT * FROM post_stats WHERE post_post_id = ?1", nativeQuery = true)
    List<PostStat> findAllByPostId(@RequestParam(name = "post_post_id") Long id);
}
