package com.LXODShop.dao;

import com.LXODShop.model.Product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {

    private List<Product> productList;

    public List<Product> getProductList(){
        Product product1 = new Product();
        product1.setProductId("P888");
        product1.setProductName("自行车");
        product1.setProductCategory("运动");
        product1.setProductDescription("这个一个山地自行车");
        product1.setProductPrice(1888);
        product1.setProductCondition("全新");
        product1.setProductStatus("Active");
        product1.setProductStock(88);
        product1.setProductManufacturer("LXOD");

        Product product2 = new Product();
        product2.setProductId("P889");
        product2.setProductName("iPhone");
        product2.setProductCategory("手机");
        product2.setProductDescription("这是最新的苹果18手机");
        product2.setProductPrice(20000);
        product2.setProductCondition("全新");
        product2.setProductStatus("Active");
        product2.setProductStock(10000);
        product2.setProductManufacturer("Apple");

        Product product3 = new Product();
        product3.setProductId("P890");
        product3.setProductName("乐学偶得的技术视频");
        product3.setProductCategory("学习");
        product3.setProductDescription("Java/安卓/ios/Python");
        product3.setProductPrice(199);
        product3.setProductCondition("全新（禁止转让）");
        product3.setProductStatus("Active");
        product3.setProductStock(999999);
        product3.setProductManufacturer("LXOD");

        Product product4 = new Product();
        product4.setProductId("P891");
        product4.setProductName("单反相机");
        product4.setProductCategory("数码");
        product4.setProductDescription("最新的佳能单反相机");
        product4.setProductPrice(30000);
        product4.setProductCondition("全新");
        product4.setProductStatus("Active");
        product4.setProductStock(2000);
        product4.setProductManufacturer("佳能");

        Product product5 = new Product();
        product5.setProductId("P892");
        product5.setProductName("上门清洁服务");
        product5.setProductCategory("本地服务");
        product5.setProductDescription("提供同城上门清洁服务一次");
        product5.setProductPrice(500);
        product5.setProductCondition("全新");
        product5.setProductStatus("Active");
        product5.setProductStock(200);
        product5.setProductManufacturer("Service");

        Product product6 = new Product();
        product6.setProductId("P893");
        product6.setProductName("AJ");
        product6.setProductCategory("鞋靴");
        product6.setProductDescription("AJ的潮牌鞋子");
        product6.setProductPrice(2999);
        product6.setProductCondition("全新");
        product6.setProductStatus("Active");
        product6.setProductStock(20);
        product6.setProductManufacturer("AJ");

        productList = new ArrayList<Product>();
        productList.add(product1);
        productList.add(product2);
        productList.add(product3);
        productList.add(product4);
        productList.add(product5);
        productList.add(product6);

        return productList;





    }

    public Product getProductById(String productId) throws IOException{
        for (Product product:getProductList()){
            if(product.getProductId().equals(productId)){
                return product;
            }
        }

        throw new IOException("No product.");

    }

}
