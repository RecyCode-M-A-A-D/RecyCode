package com.capstone.recycode.Repositories;

import com.capstone.recycode.Models.PostCategory;
import org.springframework.data.jpa.repository.JpaRepository;

interface PostCategoryRepository extends JpaRepository<PostCategory, Long> {
}
