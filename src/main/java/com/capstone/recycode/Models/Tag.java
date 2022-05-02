package com.capstone.recycode.Models;

import javax.persistence.*;

@Entity
@Table(name = "tags")
public class Tag {
    @Id
    @OneToOne
    PostTag postTag;

    @Column(nullable = false, length = 50)
    private String tag;
}
