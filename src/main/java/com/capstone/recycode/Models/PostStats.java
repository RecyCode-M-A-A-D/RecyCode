package com.capstone.recycode.Models;

import javax.persistence.*;

@Entity
@Table(name = "posts_stats")
public class PostStats {
    @Id
    @OneToOne
    Post post;

    @Column
    private long upVotesCount;

    @Column
    private long downVotesCount;

}
