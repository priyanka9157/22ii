package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.bean.ProductBean;
import com.grownited.dao.CategoryDao;
import com.grownited.dao.Productdao;
import com.grownited.dao.SubCategoryDao;

@Controller
public class ProductController {

	@Autowired
	Productdao productDao;
	
	@Autowired
	CategoryDao categoryDao;
	 
	@Autowired
	SubCategoryDao subCategoryDao;
	
	@GetMapping("/newproduct")
	public String newproduct(Model model) {
		model.addAttribute("list", categoryDao.getAllCategory());
		model.addAttribute("listSubCategory", subCategoryDao.getAllSubCagetgory());

		return "NewProduct";
	}
	
	
	
	@PostMapping("/saveproduct")
	public String saveProduct(ProductBean productBean) {
		productBean.setMostValueInd(false);
		if (productBean.getTopSellingInd() == null) {
			productBean.setTopSellingInd(false);
		}
		if(productBean.getLatestInd() == null) {
			productBean.setLatestInd(false);
		}
		productDao.addProduct(productBean);
		return "redirect:/listproducts";
	}
		
		
		
		
	//listproduct 
	
	@GetMapping("/listproducts")
	public String listProduct (Model model) {
		List<ProductBean> listProducts = productDao.getAllProduct();
		model.addAttribute("listProducts",listProducts);
		
		return "ListProducts";
	}
	
	@GetMapping("/deleteproduct/{productId}")
	public String deleteProduct(@PathVariable("productId") Integer productId ) {
		//12 45 
		productDao.deleteProduct(productId);
		return "redirect:/listproducts";//
	}
	
	


	@GetMapping("/viewproduct/{productId}")
	public String viewProduct(@PathVariable("productId") Integer productId,Model model) {
		ProductBean productBean = productDao.getProductById(productId);
		model.addAttribute("productBean",productBean);
		return "ViewProduct";
	}
	
	@GetMapping("/productDetailDescription")
	public String ProductDetailDescription(@RequestParam("productId") Integer productId,Model model) {
		ProductBean productBean = productDao.getProductById(productId);
		model.addAttribute("productBean",productBean);
		return "Description";
	}
	
	@GetMapping("/editproduct")
	public String editProduct(@RequestParam("productId") Integer productId,Model model) {
		ProductBean productBean = productDao .getProductById(productId);//12
		model.addAttribute("productBean",productBean);
		return "EditProduct";
	}

	@PostMapping("/updateproduct")
	public String updateProduct(ProductBean productBean) {

		productDao .updateProduct(productBean);

		return "redirect:/listproducts";
	}

	}


