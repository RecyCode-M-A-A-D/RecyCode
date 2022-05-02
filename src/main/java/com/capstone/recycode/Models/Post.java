package com.capstone.recycode.Models;

import javax.persistence.*;

@Entity
@Table
public class Post {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long postsId;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String content;

    @Column(nullable = false)
    private String description;

    @Column(nullable = false)
    private String date_published;

    @OneToOne
    User user;
}
