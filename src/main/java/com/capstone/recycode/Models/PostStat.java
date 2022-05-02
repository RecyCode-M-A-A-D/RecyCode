package com.capstone.recycode.Models;

import javax.persistence.*;

@Entity
@Table(name = "posts_stats")
public class PostStat {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long someId;

    @Column(nullable = false)
    private long upVotesCount;

    @Column(nullable = false)
    private long downVotesCount;

}
