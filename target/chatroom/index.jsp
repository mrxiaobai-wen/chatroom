<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>网络聊天室</title>
</head>
<body>
<h2>在线聊天室</h2>
<form method="post" action="/chat/login" id="loginForm">
    <label>用户名：</label>
    <input type="text" name="name" id="name" />
    <br/>
    <label>密&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
    <input type="text" name="password" id="password"/>
    <br/>
    <br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="reset" value="重置"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="submit" value="登录"/>
</form>
</body>
</html>