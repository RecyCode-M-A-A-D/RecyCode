package com.capstone.recycode.Repositories;

import com.capstone.recycode.Models.PostFavorites;
import org.springframework.data.jpa.repository.JpaRepository;

interface PostFavoritesRepository extends JpaRepository<PostFavorites, Long> {
}
