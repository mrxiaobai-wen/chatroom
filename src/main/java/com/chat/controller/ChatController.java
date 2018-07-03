package com.chat.controller;

import antlr.StringUtils;
import com.chat.entity.UserModel;
import com.chat.service.ChatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "/chat")
public class ChatController {
    @Autowired
    private ChatService chatServiceImpl;

    /**
     * 用户登录
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "login")
    public String login(HttpServletRequest request, HttpServletResponse response) throws Exception{
        String name=request.getParameter("name");
        String password=request.getParameter("password");
        //登录失败返回到原登录页面
        if(org.springframework.util.StringUtils.isEmpty(name)||
                org.springframework.util.StringUtils.isEmpty(password)){
            return request.getContextPath()+"/../../index";
        }
        UserModel user=new UserModel(name,password);
        if(chatServiceImpl.checkExist(user)){
            request.setAttribute("name",name);
            return request.getContextPath()+"chat";  //登录成功进入chat页面
        }
        return request.getContextPath()+"/../../index";
    }




}
