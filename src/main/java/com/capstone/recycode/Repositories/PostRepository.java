package com.capstone.recycode.Repositories;

import com.capstone.recycode.Models.Post;
import org.springframework.data.jpa.repository.JpaRepository;

interface PostRepository extends JpaRepository<Post, Long> {
}
