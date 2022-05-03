package com.capstone.recycode.Models;

import javax.persistence.*;

@Entity
@Table(name = "post_stats")
public class PostStat {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long statId;

    @Column(nullable = false)
    private long upVotesCount;

    @Column(nullable = false)
    private long downVotesCount;

}
