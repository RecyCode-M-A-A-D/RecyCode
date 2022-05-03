package com.capstone.recycode.Repositories;

import com.capstone.recycode.Models.Category;
import org.springframework.data.jpa.repository.JpaRepository;

interface CategoryRepository extends JpaRepository<Category, Long> {
}
