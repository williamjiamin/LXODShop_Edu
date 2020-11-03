<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="container-wrapper" style="margin-top: 50px">
    <div class="container">
        <div class="page-header">
            <h1>新增商品页面</h1>
            <p class="lead">在下方填入您需要新增的商品信息：</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method="post" commandName="product"  enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">商品名称</label>
            <form:input path="productName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">点击上传图片</label>
            <form:input path="productImage" id="productImage" type="file" class="form:input-large"/>
        </div>

        <div class="form-group">
            <label for="category">商品类别</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="艺术品"/>艺术品</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="影像制品"/>影像制品</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="动漫周边"/>动漫周边</label>
        </div>

            <div class="form-group">
            <label for="descroption">商品介绍</label>
            <form:textarea path="productDescription" id="descroption" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="price">商品价格</label>
            <form:input path="productPrice" id="price" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="condition">商品状况</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="全新"/>全新</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="二手"/>二手</label>
        </div>

            <div class="form-group">
            <label for="status">商品状态</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="上架"/>上架</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="仓库"/>仓库</label>
        </div>

        <div class="form-group">
            <label for="unitInStock">商品库存</label>
            <form:input path="unitInStock" id="unitInStock" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">商品生产厂家</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-Control"/>
        </div>

        <input type="submit" value="提交" class="btn btn-primary">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">取消编辑</a>

        </form:form>
    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>
