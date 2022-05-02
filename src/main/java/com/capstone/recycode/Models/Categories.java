package com.capstone.recycode.Models;

import javax.persistence.*;

@Entity
@Table(name = "categories")
public class Categories {
    @Id
    @OneToOne
    PostCategories postCategories;

    @Column
    private String category;
}
