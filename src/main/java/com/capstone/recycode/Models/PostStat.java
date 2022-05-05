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

    @OneToOne
    Post post;

    public PostStat() {}

    public PostStat(long upVotesCount, long downVotesCount, Post post) {
        this.upVotesCount = upVotesCount;
        this.downVotesCount = downVotesCount;
        this.post = post;
    }

    public long getStatId() {
        return statId;
    }

    public void setStatId(long statId) {
        this.statId = statId;
    }

    public long getUpVotesCount() {
        return upVotesCount;
    }

    public void setUpVotesCount(long upVotesCount) {
        this.upVotesCount = upVotesCount;
    }

    public long getDownVotesCount() {
        return downVotesCount;
    }

    public void setDownVotesCount(long downVotesCount) {
        this.downVotesCount = downVotesCount;
    }

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }
}
