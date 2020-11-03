<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="container-wrapper" style="margin-top: 50px">
    <div class="container">
        <div class="page-header">
            <h1>商品库存管理后台</h1>
            <p class="lead">您已经进入到网站的商品库存管理后台，您可以在这里看到所有商品库存，并进行相关商品库存的新增和修改。</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>查看详情与删除商品</th>
                <th>商品缩略图</th>
                <th>商品名称</th>
                <th>商品类别</th>
                <th>商品状况</th>
                <th>商品价格</th>
            </tr>
            </thead>

            <c:forEach items="${products}" var="product">
                <tr>

                    <td><a href="<spring:url value="/productList/viewProduct/${product.productId}" /> ">
                        <span class="glyphicon glyphicon-play-circle"></span></a>
                        <a href="<spring:url value="/admin/productInventory/deleteProduct/${product.productId}" />">
                        <span class="glyphicon glyphicon-remove"></span></a>
                    </td>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" />" alt="商品缩略图" style="width:100%" /></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} 元</td>
                </tr>
            </c:forEach>

        </table>

        <a href="<spring:url value="/admin/productInventory/addProduct" />" class="btn btn-primary" > 增加商品 </a>

    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>
