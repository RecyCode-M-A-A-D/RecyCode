package com.capstone.recycode.Models;

import javax.persistence.*;

@Entity
@Table(name = "posts_dcategories")
public class PostCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long category_id;

    @OneToOne
    Post post;

}
