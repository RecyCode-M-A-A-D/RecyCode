package com.capstone.recycode.Models;

import javax.persistence.*;

@Entity
@Table(name = "posts_stats")
public class PostStats {
    @Id
    @OneToOne
    Post post;

    @Column(nullable = false)
    private long upVotesCount;

    @Column(nullable = false)
    private long downVotesCount;

}
