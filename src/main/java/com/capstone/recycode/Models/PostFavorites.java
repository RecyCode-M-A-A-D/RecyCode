package com.capstone.recycode.Models;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;


@Entity
@Table(name = "posts_favorites")
public class PostFavorites {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long favoritesId;

    @ManyToMany
    @JoinTable(
            name = "posts_favorites",
            joinColumns = @JoinColumn(name = "users_id"),
            inverseJoinColumns = @JoinColumn(name = "posts_id")
    )
    Set<Post> postSet;

    @Column
    private Date dateFavored;

}
