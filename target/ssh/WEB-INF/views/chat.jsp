<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>网络聊天室</title>
</head>
    <h2>在线聊天室</h2>

    <div>
        <DIV align=left
             style='border: solid 1px black;width: 550px;height: 250px;overflow: scroll;'
             id="messageArea" name="messageArea">
        </DIV>
    </div>
    <br/>

    <form action="#">
        <input type="hidden" id="name" name="name" value="${name}"/>
        <input typye="text" id="message" name="message" style="width:550px;height:50px;"/>
        <br/><br/>
        <input type="reset" id="restBut" name="restBut" value="重置" style="margin-left: 100px;"/>
        <input type="button" id="sendBut" name="sendBut" value="发送" style="margin-left: 150px;"
            onclick="send()"/>
    </form>
</body>

<script type="text/javascript">
    var websocket = null;

    //对当前浏览器是否支持进行一个判断
    if ('WebSocket' in window) {
        websocket = new WebSocket("ws://localhost:8080/chatRoom");
    }
    else {
        alert('该浏览器不支持');
    }

    //连接错误
    websocket.onerror = function () {
        setMessageShow("连接错误！");
    };

    //连接成功
    websocket.onopen = function (event) {
        setMessageShow("连接成功！");
    };

    //接收消息
    websocket.onmessage = function () {
        setMessageShow(event.data);
    };

    //连接关闭
    websocket.onclose = function () {
        setMessageShow("close");
    };

    //监听窗口关闭
    window.onbeforeunload = function () {
        websocket.close();
    };

    //将消息显示在网页上
    function setMessageShow(message) {
        var pElement = document.createElement("p");
        var messageNode = document.createTextNode(message);
        pElement.appendChild(messageNode);
        document.getElementById('messageArea').appendChild(pElement);
    }

    //关闭连接
    function closeWebSocket() {
        websocket.close();
    }

    //发送消息
    function send() {
        var name=document.getElementById('name').value;
        var message = document.getElementById('message').value;
        var time=new Date();
        var month=time.getMonth()+1;
        var day=time.getDate();
        var hour=time.getHours();
        var minute=time.getMinutes();
        var second=time.getSeconds();
        var mes=name+"("+month+"."+day+" "+hour+":"+minute+":"+second+"):"+message;
        websocket.send(mes);
        document.getElementById("message").value=""; //发送成功后将输入框置空
    }
</script>
</html>