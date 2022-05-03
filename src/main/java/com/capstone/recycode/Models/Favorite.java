package com.capstone.recycode.Models;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "favorites")
public class Favorite {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long favoriteId;

    @Column(nullable = false)
    private String date_favored;

    @OneToOne
    User user;

    @OneToOne
    Post post;

}
