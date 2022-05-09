package com.capstone.recycode.Models;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "favorites")
public class Favorite {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long favoriteId;

    @Column(nullable = false)
    private String date_favored;

    @OneToOne
    User user;

    @OneToOne
    Post post;

    public Favorite() {};
    public Favorite(String date_favored, User user, Post post) {
        this.date_favored = date_favored;
        this.user = user;
        this.post = post;
    }

    public long getFavoriteId() {
        return favoriteId;
    }

    public void setFavoriteId(long favoriteId) {
        this.favoriteId = favoriteId;
    }

    public String getDate_favored() {
        return date_favored;
    }

    public void setDate_favored(String date_favored) {
        this.date_favored = date_favored;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }
}
