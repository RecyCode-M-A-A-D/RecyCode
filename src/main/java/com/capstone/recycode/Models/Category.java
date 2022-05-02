package com.capstone.recycode.Models;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "categories")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long categoryId;

    @ManyToMany(mappedBy = "categories")
    private List<Post> posts;

    @Column
    private String category;
}
