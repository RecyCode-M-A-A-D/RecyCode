package com.capstone.recycode.Repositories;

import com.capstone.recycode.Models.PostStat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.web.bind.annotation.RequestParam;

import javax.transaction.Transactional;

public interface PostStatRepository extends JpaRepository<PostStat, Long> {
    @Query(value = "SELECT * FROM post_stats WHERE post_post_id = ?1 LIMIT 1", nativeQuery = true)
    PostStat findPostStatById(@RequestParam(name = "post_post_id") long id);

    @Transactional
    @Modifying
    @Query(value = "UPDATE post_stats SET up_votes_count = ?1, down_votes_count = ?1 WHERE post_post_id = ?1", nativeQuery = true)
    void updateVotes(@RequestParam(name = "up_votes_count") long upVotes,
                     @RequestParam(name = "down_votes_count") long downVotes,
                     @RequestParam(name = "post_post_id") long PostId);
}
