package com.chat.service;

import com.chat.entity.UserModel;

public interface ChatService {
    /**
     * 判断指定用户是否存在，验证用户名和密码
     * @param user
     * @return
     */
    public boolean checkExist(UserModel user);
}
