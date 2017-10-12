<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!doctype html>
<html>
<head>
    <title>听咯时空</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/mainDisplay.css">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
</head>
<body>
<!-- 顶部显示区域 -->
<div id="topDisplay">
    <!-- 用户头像显示区域 -->
    <div id="headView" class="displayFlag" alt="用户信息">
        <!-- 测试使用图片，直接使用背景方便设置 -->
        <!-- <img src="../image/head.jpg" width="120px" height="120px" /> -->
    </div>
    <div id="personInfo" class="displayFlag" >Allen Lee</div>
    <!-- 改区域通常为隐藏显示，当点击用户名或者头像会显示 -->
    <ul id="personInfoArea">
        <li>个人中心</li>
        <li>我的论坛</li>
        <li>我的消息</li>
        <li>我的博客</li>
        <li>设置</li>
        <li>注销</li>
    </ul>
    <!-- BBS首页显示 -->
    <div></div>
    <!-- 当首页上部移出屏幕时显示该顶部导航栏 -->
    <div id="topFloat">
        <!-- 信息显示部分与上部分显示一样 -->
        <div id="floatHeadView"></div>
        <div id="floatPersonInfo">Allen Lee</div>
        <ul id="floatPersonInfoArea">
            <li>个人中心</li>
            <li>我的论坛</li>
            <li>我的消息</li>
            <li>我的博客</li>
            <li>设置</li>
            <li>注销</li>
        </ul>
    </div>
</div>
<!-- 中部显示区域 -->
<div id="midArea">
    <div class="mainInfo"></div>
    <div class="mainInfo"></div>
    <div class="mainInfo"></div>
    <div class="mainInfo"></div>
    <div class="mainInfo"></div>
    <div class="mainInfo"></div>
    <div class="mainInfo"></div>
    <div class="mainInfo"></div>
    <br/>
</div>
<!-- 底部版权区域 -->
<div id="copyArea">
    <div>Allen&copy;版权所有</div>
</div>
</body>
</html>