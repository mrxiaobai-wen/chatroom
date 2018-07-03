package com.chat.entity;

import lombok.Data;

import javax.persistence.*;

@Table(name="user")
public class UserModel {
    public UserModel(){}

    public UserModel(String name,String password){
        this.name=name;
        this.password=password;
    }

    @Id
    @Column(name = "name")
    private String name;

    @Column(name="password")
    private  String password;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
