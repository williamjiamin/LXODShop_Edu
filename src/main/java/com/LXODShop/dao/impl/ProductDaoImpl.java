//乐学偶得版权所有，主讲人：William 公众号：乐学Fintech 网站：lexueoude.com
// Created by  from lexueoude.com

package com.LXODShop.dao.impl;

import com.LXODShop.dao.ProductDao;
import com.LXODShop.model.Product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addProduct(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();
    }

    public void editProduct(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();
    }

    public Product getProductById(String id) {
        Session session = sessionFactory.getCurrentSession();
        Product product = (Product) session.get(Product.class, id);
        session.flush();

        return product;
    }

    public List<Product> getAllProducts() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product");
        List<Product> products = query.list();
        session.flush();

        return products;
    }

    public void deleteProduct (String id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(getProductById(id));
        session.flush();
    }
}
