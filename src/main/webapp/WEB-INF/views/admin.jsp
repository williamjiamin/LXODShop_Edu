<%--
  Created by IntelliJ IDEA.
  User: william
  Date: 2020/10/31
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="container-wrapper" style="margin-top: 50px">
    <div class="container">
        <div class="page-header">
            <h1>管理页面</h1>
            <p class="lead">欢迎来到管理页面</p>
        </div>

        <h2>
            <a href="<c:url value="/admin/productInventory" />" >商品库存管理</a>
        </h2>

        <p>您可以在此页面进行商品的添加和变更等管理操作</p>

    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>