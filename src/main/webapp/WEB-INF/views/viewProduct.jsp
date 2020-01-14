<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="container-wrapper" style="margin-top: 50px">
    <div class="container">
        <h1>商品详情页面</h1>

        <p class="lead">这里是商品的详细参数与信息，您可以根据您的需求进行比较与选择～</p>
    </div>

    <div class="container">
        <div class="col-md-5">
            <img src="#" alt="image" style="width:100%; height:350px"/>
        </div>

        <div class="col-md-5">
            <h2>${product.productName}</h2>
            <p>
                <strong>商品详细介绍</strong>：${product.productDescription}
            </p>
            <p>
                <strong>商品生产厂家</strong>：${product.productManufacturer}
            </p>
            <p>
                <strong>商品类别</strong>：${product.productCategory}
            </p>
            <p>
                <strong>商品状况</strong>：${product.productCondition}
            </p>
            <p>
                <strong>商品价格</strong>：${product.productPrice} 元
            </p>

        </div>
    </div>




</div>



<%@include file="/WEB-INF/views/template/footer.jsp"%>