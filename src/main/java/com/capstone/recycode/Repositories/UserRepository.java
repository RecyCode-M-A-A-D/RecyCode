package com.capstone.recycode.Repositories;

import com.capstone.recycode.Models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {
    @Query(value = "SELECT * FROM users WHERE email = ?1 LIMIT 1", nativeQuery = true)
    User findUserByEmail(@RequestParam(name = "email") String email);

    @Query(value = "SELECT * FROM users WHERE user_name = ?1 LIMIT 1", nativeQuery = true)
    User findUserByUserName(@RequestParam(name ="user_name") String username);

    @Query(value = "SELECT * FROM users WHERE user_name LIKE %?1%", nativeQuery = true)
    List<User> findSimilarUsersByName(@Param("user_name") String username);

    @Query(value = "SELECT * FROM users WHERE id > ?1 LIMIT 10", nativeQuery = true)
    List<User> findNewUsers(@Param("random") Long random);

}
