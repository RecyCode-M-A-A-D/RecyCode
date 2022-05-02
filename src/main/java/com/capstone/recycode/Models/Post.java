package com.capstone.recycode.Models;

import javax.persistence.*;

@Entity
@Table
public class Post {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long postsId;

    @Column
    private String title;

    @Column
    private String content;

    @Column
    private String description;

    @Column
    private String date_published;

    @OneToOne
    User user;
}
