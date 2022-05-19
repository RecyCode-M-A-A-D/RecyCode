package com.capstone.recycode.Repositories;

import com.capstone.recycode.Models.Category;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CategoryRepository extends JpaRepository<Category, Long> {
    @Query(value = "SELECT * FROM categories WHERE category = ?1 LIMIT 1", nativeQuery = true)
    Category findByCategoryName(@Param("name")String name);
}
