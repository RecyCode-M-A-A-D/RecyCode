package com.capstone.recycode.Repositories;

import com.capstone.recycode.Models.Favorite;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FavoritesRepository extends JpaRepository<Favorite, Long> {
}
