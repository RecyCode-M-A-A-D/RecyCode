package com.capstone.recycode.Models;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "posts_favorites")
public class PostFavorites {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long favoritesId;

    @Column
    private Date dateFavored;
}
