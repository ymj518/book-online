<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户登录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
   
    <style type="text/css">
       
       
       
       
        /*iconfont图标，第三方登录用*/
        @font-face {
            font-family: 'iconfont';
            src: url('//at.alicdn.com/t/font_1427254_qm1jfg7xsu.eot');
            src: url('//at.alicdn.com/t/font_1427254_qm1jfg7xsu.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_1427254_qm1jfg7xsu.woff2') format('woff2'),
            url('//at.alicdn.com/t/font_1427254_qm1jfg7xsu.woff') format('woff'),
            url('//at.alicdn.com/t/font_1427254_qm1jfg7xsu.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_1427254_qm1jfg7xsu.svg#iconfont') format('svg');
        }
        .iconfont {
            font-family: "iconfont", serif !important;
            font-size: 28px;
            font-style: normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0;
            -moz-osx-font-smoothing: grayscale;
        }
        body {
            background-image: url("images/bg.jpg");
            background-size: cover;
            background-color: rgb(124, 83, 130);
            background-blend-mode: luminosity;
        }
        /*表单外层包裹容器*/
        .form-wrap {
            position: absolute;
            top: 30%;
            left: 30%;
            width: 450px;
            height: 300px;
        }
        .sign-box {
            width: 70%;
            display: flex;
            justify-content: space-between;
        }
        .sign-box h3 {
            flex: 1 1 50%;
            margin-bottom: 15px;
            margin-right: 10px;
            padding-bottom: 5px;
        }
        .default {
            color: #ddd;
            border-bottom: 1px solid #ddd;
        }
        .active {
            color: rgb(145, 101, 144);
            border-bottom: 1px solid rgb(145, 101, 144);
        }
        /*登陆表单样式*/
        .login-box {
            width: 100%;
            height: 100%;
            padding: 10px 5px 5px 10px;
            background-color: rgba(246, 246, 241);
            border: 1px solid #ddd;
            border-radius: 20px;
            box-shadow: 2px 5px 10px #aaa;
            text-align: center;
        }
        /*表单的每个子元素都是div，设置外边距*/
        form div {
            margin: 15px auto 10px auto;
        }
        /*用户名和密码输入框样式*/
        .input-box {
            width: 70%;
            height: 30px;
            background-color: #fff;
            border: 1px solid #e4e6e5;
            border-radius: 3px;
            color: #333;
            font-size: 13px;
            padding-left: 10px;
            margin-bottom: 5px;
        }
        /*按钮样式*/
        .btn {
            width: 73%;
            margin: 0 auto;
            height: 33px;
            border: none;
            outline: none;
            border-radius: 3px;
            background-color: rgb(145, 101, 144);
            color: #fff;
            box-shadow: 2px 5px 10px #aaa;
        }
        /*两条线和第三方登录字样横条区*/
        .line-box {
            width: 80%;
            margin-top: 10px;
            display: inline-flex;
            align-items: center;
        }
        /*线条样式*/
        .line {
            border-bottom: 1px solid #9b9b9b;
            flex: 0 0 33%;
        }
        /*第三方登录文字样式*/
        .login-3rd {
            flex: 0 0 30%;
            color: #9b9b9b;
            font-size: 11px;
            text-align: center;
        }
        /*图标外层包裹区样式*/
        .icon-box {
            width: 50%;
            display: inline-flex;
            justify-content: center;
            margin-top: 5px;
        }
        /*图标样式*/
        .icon-box i {
            flex: 0 0 33%;
        }
    </style>
</head>
<body>
<div id="top">
    <a href="/home">
        <h2>在线书屋</h2>
    </a>
</div>
<div class="form-wrap">
    <form action="${pageContext.request.contextPath}/login.do" method="post" class="login-box">
        <div class="sign-box">
            <h3 class="default">短信登录/注册</h3>
            <h3 class="active">密码登录</h3>
        </div>
        <div>
            <label>
                <input type="text" name="account" class="input-box" placeholder="手机号/邮箱">
            </label>
        </div>
        <div>
            <label>
                <input type="password" name="password" class="input-box" placeholder="密码">
            </label>
        </div>
        <div>
            <label>
                <input type="submit" value="立即登录" class="btn">
            </label>
        </div>
        <div class="line-box">
            <span class="line"></span>
            <span class="login-3rd">第三方登录</span>
            <span class="line"></span>
        </div>
        <div class="icon-box">
            <i class="iconfont" style="color: rgb(81, 195, 50)">&#xe600;</i>
            <i class="iconfont" style="color: rgb(48, 165, 221)">&#xe73e;</i>
            <i class="iconfont" style="color: rgb(230, 23, 45)">&#xe636;</i>
        </div>
    </form>
</div>
</body>
</html>