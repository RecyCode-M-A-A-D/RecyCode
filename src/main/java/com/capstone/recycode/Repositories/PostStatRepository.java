package com.capstone.recycode.Repositories;

import com.capstone.recycode.Models.PostStat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.RequestParam;

import javax.transaction.Transactional;
import java.util.List;

public interface PostStatRepository extends JpaRepository<PostStat, Long> {
    @Query(value = "SELECT * FROM post_stats WHERE post_post_id = ?1 ", nativeQuery = true)
    PostStat findPostStatById(@RequestParam(name = "post_post_id") long id);

    @Transactional
    @Modifying(clearAutomatically = true, flushAutomatically = true)
    @Query(value = "UPDATE post_stats SET up_votes_count = ?1, down_votes_count = ?2 WHERE post_post_id = ?3", nativeQuery = true)
    void updateVotes(@Param("up_votes_count") long upVotes,
                     @Param("down_votes_count") long downVotes,
                     @Param("post_post_id") long PostId);

    @Query(value = "SELECT * FROM post_stats ORDER BY up_votes_count", nativeQuery = true)
    List<PostStat> findAllOrderByUpVotes();

}
