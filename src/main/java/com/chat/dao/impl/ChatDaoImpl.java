package com.chat.dao.impl;

import com.chat.dao.ChatDao;
import com.chat.entity.UserModel;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.xml.transform.Result;

@Repository
public class ChatDaoImpl implements ChatDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public boolean checkExist(UserModel user) {
        return true;
    }
}
