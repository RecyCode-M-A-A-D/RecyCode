package com.capstone.recycode.Models;

import javax.persistence.*;

@Entity
@Table(name = "categories")
public class Category {
    @Id
    @OneToOne
    PostCategory postCategories;

    @Column
    private String category;
}
