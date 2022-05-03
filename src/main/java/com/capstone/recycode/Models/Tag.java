package com.capstone.recycode.Models;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "tags")
public class Tag {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long tagId;

    @ManyToMany(mappedBy = "tags")
    private List<Post> posts;

    @Column(nullable = false, length = 50)
    private String tag;
}
