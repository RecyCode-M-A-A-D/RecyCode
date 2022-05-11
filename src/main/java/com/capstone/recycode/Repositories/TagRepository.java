package com.capstone.recycode.Repositories;

import com.capstone.recycode.Models.PostStat;
import com.capstone.recycode.Models.Tag;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface TagRepository extends JpaRepository<Tag, Long> {
    @Query(value = "SELECT * FROM tags WHERE tag = ?1 ", nativeQuery = true)
    List<Tag> findTagsByName(@RequestParam(name = "tag") String tagName);
}
