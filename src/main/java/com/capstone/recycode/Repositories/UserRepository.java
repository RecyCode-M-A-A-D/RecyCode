package com.capstone.recycode.Repositories;

import com.capstone.recycode.Models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.web.bind.annotation.RequestParam;

public interface UserRepository extends JpaRepository<User, Long> {
    @Query(value = "SELECT * FROM users WHERE email = ?1 LIMIT 1", nativeQuery = true)
    User findUserByEmail(@RequestParam(name = "email") String email);

    @Query(value = "SELECT * FROM users WHERE user_name = ?1 LIMIT 1", nativeQuery = true)
    User findUserByUserName(@RequestParam(name ="user_name") String username);

    User findByUserName(String username);
}
