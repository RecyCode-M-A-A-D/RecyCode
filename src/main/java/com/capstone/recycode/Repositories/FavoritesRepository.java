package com.capstone.recycode.Repositories;

import com.capstone.recycode.Models.Favorite;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.transaction.Transactional;
import java.util.List;

public interface FavoritesRepository extends JpaRepository<Favorite, Long> {
    @Query(value = "SELECT * FROM favorites WHERE user_id = ?1", nativeQuery = true)
    List<Favorite> findFavoritesByUserId(@Param("user_id") Long id);

    @Transactional
    @Modifying(clearAutomatically = true, flushAutomatically = true)
    @Query(value = "DELETE FROM favorites WHERE post_post_id = ?1", nativeQuery = true)
    void removeFromFavoritesByPostId(@Param("post_post_id") Long postId);
}
