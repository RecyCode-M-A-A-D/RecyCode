package com.capstone.recycode.Repositories;

import com.capstone.recycode.Models.User;
import org.springframework.data.jpa.repository.JpaRepository;

interface UserRepository extends JpaRepository<User, Long> {
}
