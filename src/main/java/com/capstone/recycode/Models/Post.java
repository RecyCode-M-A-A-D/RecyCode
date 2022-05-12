package com.capstone.recycode.Models;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "posts")
public class Post {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long postId;

    @ManyToMany
    @JoinTable(
            name = "post_tags",
            joinColumns = @JoinColumn(name = "post_id"),
            inverseJoinColumns = @JoinColumn(name = "tag_id")
    )
    private List<Tag> tags;

    @ManyToMany
    @JoinTable(
            name = "post_categories",
            joinColumns = @JoinColumn(name = "post_id"),
            inverseJoinColumns = @JoinColumn(name = "category_id")
    )
    private List<Category> categories;

    @Column(nullable = false, length = 50)
    private String title;

    @Lob
    @Column
    private String html;

    @Lob
    @Column
    private String css;

    @Lob
    @Column
    private String js;

    @Column(nullable = false)
    private String description;

    @Column(nullable = false)
    private String date_published;

    @Column
    private String image_url;

    @OneToOne
    User user;

    public Post() {}

    public Post(String title, String html, String css, String js, String description, String date_published) {
        this.title = title;
        this.html = html;
        this.css = css;
        this.js = js;
        this.description = description;
        this.date_published = date_published;
    }

    public Post(String title, String html, String css, String js, String description, String date_published, String image_url) {
        this.title = title;
        this.html = html;
        this.css = css;
        this.js = js;
        this.description = description;
        this.date_published = date_published;
        this.image_url = image_url;
    }

    public Post(Post copy) {
        postId = copy.postId;
        title = copy.title;
        html = copy.html;
        css = copy.css;
        js = copy.js;
        description = copy.description;
        date_published = copy.date_published;
        image_url = copy.image_url;
    }

    public long getPostId() {
        return postId;
    }

    public void setPostId(long postId) {
        this.postId = postId;
    }

    public List<Tag> getTags() {
        return tags;
    }

    public void setTags(List<Tag> tags) {
        this.tags = tags;
    }

    public List<Category> getCategories() {
        return categories;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getHtml() {
        return html;
    }

    public void setHtml(String html) {
        this.html = html;
    }

    public String getCss() {
        return css;
    }

    public void setCss(String css) {
        this.css = css;
    }

    public String getJs() {
        return js;
    }

    public void setJs(String js) {
        this.js = js;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDate_published() {
        return date_published;
    }

    public void setDate_published(String date_published) {
        this.date_published = date_published;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }
}
