package com.chat.dao;

import com.chat.entity.UserModel;

public interface ChatDao {
    /**
     * 判断指定用户是否存在,验证用户名和密码
     * @param user
     * @return
     */
    public boolean checkExist(UserModel user);
}
