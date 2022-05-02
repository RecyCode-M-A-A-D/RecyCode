package com.capstone.recycode.Models;

import javax.persistence.*;

@Entity
@Table(name = "posts_tags")
public class PostTag {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long postsTagId;

    @OneToOne
    private Post post;
}
