<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: william
  Date: 2019/12/27
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <link rel="canonical" href="https://getbootstrap.com/docs/3.3/examples/carousel/">

    <title>乐学偶得商城</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">

<%--    自定义style--%>
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
</head>
<!-- NAVBAR
================================================== -->
<body>
<div class="navbar-wrapper">
    <div class="container">

        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                            aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">乐学偶得出品</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true" aria-expanded="false">全部商品分类<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-header">热销潮品</li>
                                <li><a href="#">运动/户外/乐器</a></li>
                                <li><a href="#">家电/数码/手机</a></li>
                                <li><a href="#">女装/男装/箱包/鞋靴</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">虚拟产品与服务</li>
                                <li><a href="#">游戏/动漫/影视</a></li>
                                <li><a href="#">学习/电子书/卡券</a></li>
                                <li><a href="#">本地服务/闲置</a></li>
                            </ul>
                        </li>
                        <li><a href="<c:url value="/productList" /> ">所有商品</a></li>
                        <li class="active"><a href="<c:url value="/" /> ">主页</a></li>
                        <li><a href="#about">关于</a></li>
                        <li><a href="#contact">联系我们</a></li>
                    </ul>
                </div>
            </div>
        </nav>

    </div>
</div>