package com.grownited.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.bean.CategoryBean;
import com.grownited.bean.ProductBean;
import com.grownited.bean.ProductImageBean;
import com.grownited.dao.CategoryDao;
import com.grownited.dao.ProductImageDao;
import com.grownited.dao.Productdao;

@Controller
public class BuyerController {
	
	@Autowired
	Productdao productDao;
	
	@Autowired
	ProductImageDao productImageDao;
	
	@Autowired
	CategoryDao categoryDao;
	
	@GetMapping(value = {"/","/welcome"})
	public String welcome(Model model) {
		List<ProductBean> latestProduct  = productDao.getAllLatestProducts();
		model.addAttribute("latestProducts",latestProduct);
		List<ProductBean> topSellingProducts = productDao.getAllTopSellingProducts();
		model.addAttribute("topSellingProducts", topSellingProducts);
		List<ProductBean> AllProduct = productDao.getAllProduct();
		model.addAttribute("allProduct", AllProduct);
		List<CategoryBean> allCategoryName = categoryDao.getAllCategory();
		model.addAttribute("allCategoryName",allCategoryName);
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list",list);
		return "Welcome";
	}
	
	
	@GetMapping("/home")
	public String home() {
		return "redirect:/welcome";
	}
	
	@GetMapping("/seedetails")
	public String seeDetails(@RequestParam("productId") Integer productId,Integer categoryId, Model model) {
		ProductBean product = productDao.getProductById(productId);

		List<ProductImageBean> productImages =productImageDao.getImagesByProductId(productId);
		model.addAttribute("products", product);
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list",list);
		model.addAttribute("productImages",productImages);
		List<CategoryBean> list1 = categoryDao.getProductByCategoryId(categoryId);
		model.addAttribute("list1",list1);
		return "ProductDetail";
	}
	
	@GetMapping("/shop")
	public String shop(Model model) {
		List<ProductBean> listProducts = productDao.getAllProduct();
		model.addAttribute("listProducts",listProducts);
		List<ProductBean> AllProduct = productDao.getAllProduct();
		model.addAttribute("allProduct", AllProduct);
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list",list);
		return "Shop";
	}

	
	@GetMapping("/contactus")
	public String contactus( Model model) {
		List<ProductBean> listProducts = productDao.getAllProduct();
		model.addAttribute("listProducts",listProducts);
		List<ProductBean> AllProduct = productDao.getAllProduct();
		model.addAttribute("allProduct", AllProduct);
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list",list);
		return "ContactUs";
	}
	
	
}