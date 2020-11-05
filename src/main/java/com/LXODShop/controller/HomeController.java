package com.LXODShop.controller;

import com.LXODShop.dao.ProductDao;
import com.LXODShop.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;


@Controller
public class HomeController {

    private Path path;

    @Autowired
    private ProductDao productDao;

    @RequestMapping("/")
    public String home() {
        return "home";
    }


    @RequestMapping("/productList")
    public String getProducts(Model model) {
        List<Product> products = productDao.getAllProducts();
        model.addAttribute("products", products);

        return "productList";
    }

    @RequestMapping("/productList/viewProduct/{productId}")
    public String viewProduct(@PathVariable String productId, Model model) throws IOException {

        Product product = productDao.getProductById(productId);
        model.addAttribute(product);

        return "viewProduct";
    }

    @RequestMapping("/admin")
    public String adminPage() {
        return "admin";
    }

    @RequestMapping("/admin/productInventory")
    public String productInventory(Model model) {
        List<Product> products = productDao.getAllProducts();
        model.addAttribute("products", products);

        return "productInventory";
    }


    @RequestMapping("/admin/productInventory/addProduct")
    public String addProduct(Model model) {
        Product product = new Product();
        product.setProductCategory("影像制品");
        product.setProductCondition("全新");
        product.setProductStatus("上架");

        model.addAttribute("product", product);

        return "addProduct";
    }

    @RequestMapping(value = "/admin/productInventory/addProduct", method = RequestMethod.POST)
    public String addProductPost(@ModelAttribute("product") Product product, HttpServletRequest request) {
        productDao.addProduct(product);

        MultipartFile productImage = product.getProductImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "//WEB-INF//resources//images//" + product.getProductId() + ".png");

        if (productImage != null && !productImage.isEmpty()) {
            try {
                productImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("We are having trouble saving our image", e);
            }
        }

        return "redirect:/admin/productInventory";
    }


    @RequestMapping("/admin/productInventory/deleteProduct/{id}")
    public String deleteProduct(@PathVariable String id, Model model, HttpServletRequest request) {

        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "//WEB-INF//resources//images//" + id + ".png");

        if (Files.exists(path)) {
            try {
                Files.delete(path);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        productDao.deleteProduct(id);

        return "redirect:/admin/productInventory";
    }

    @RequestMapping("/admin/productInventory/editProduct/{id}")
    public String editProduct(@PathVariable("id") String id, Model model) {
        Product product = productDao.getProductById(id);

        model.addAttribute(product);

        return "editProduct";
    }

    @RequestMapping(value = "/admin/productInventory/editProduct", method = RequestMethod.POST)
    public String editProduct(@ModelAttribute("product") Product product, Model model, HttpServletRequest
            request) {

        MultipartFile productImage = product.getProductImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "//WEB-INF//resources//images//" + product.getProductId() + ".png");

        if (productImage != null && !productImage.isEmpty()) {
            try {
                productImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                throw new RuntimeException("储存产品图片失败", e);
            }
        }

        productDao.editProduct(product);

        return "redirect:/admin/productInventory";
    }
}