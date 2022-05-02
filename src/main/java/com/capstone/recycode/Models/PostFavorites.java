package com.capstone.recycode.Models;

import javax.persistence.*;

@Entity
@Table(name = "posts_fav")
public class PostFavorites {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long favoritesId;

}
