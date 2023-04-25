package com.grownited.controller;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.bean.CategoryBean;
import com.grownited.bean.ProductBean;
import com.grownited.dao.CategoryDao;
import com.grownited.dao.ProductImageDao;
import com.grownited.dao.Productdao;

@Controller

public class CategoryContoller {
	@Autowired
	CategoryDao categoryDao;
	
    @Autowired
    Productdao productdao;
    
    @Autowired
    ProductImageDao productImageDao;
	
	@GetMapping("/newcategory")
	public String newCategory(HttpServletRequest request) {

		//cookie name
		//cookie userid
		int userId=-1;
		//read all cookie from request
		String firstName="";
			Cookie c[] = request.getCookies();
			for (Cookie x : c) {
				if(x.getName().equals("userId")){
					userId = Integer.parseInt(x.getValue());
				}
				if(x.getName().equals("firstName")){
					firstName = x.getValue();
				}
			}
			System.out.println("userId - > " + userId);
			System.out.println("firstName - > " + firstName);
			return "NewCategory";
		}


	@PostMapping("/savecategory")
	public String saveCategory(CategoryBean categoryBean) {
		System.out.println(categoryBean.getCategoryName());// categoryName;
		categoryDao.addCategory(categoryBean);
		return "redirect:/listcategories";
	}
	@GetMapping("/listcategories")
	public String listCategories(Model model) {
		// pull all category from db-table
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list",list);
		
		return "ListCategory";
	}
	
	@GetMapping("/deletecategory/{categoryId}/{currentStatus}")
	public String deleteCategory(@PathVariable("categoryId") Integer categoryId,@PathVariable("currentStatus") boolean currentStatus) {
		// 12 45
		categoryDao.deleteCategory(categoryId,currentStatus);
		return "redirect:/listcategories";//
	}
	
	@GetMapping("/viewcategory/{categoryId}")
	public String viewCategory(@PathVariable("categoryId") Integer categoryId, Model model) {
		CategoryBean categoryBean = categoryDao.getCategoryById(categoryId);
		model.addAttribute("categoryBean",categoryBean);
		return "ViewCategory";
	}
	
	@GetMapping("/editcategory")
	public String editCategory(@RequestParam("categoryId") Integer categoryId,Model model) {
		CategoryBean categoryBean = categoryDao.getCategoryById(categoryId);//12
		model.addAttribute("categoryBean", categoryBean);
		return "EditCategory";
	}

	@PostMapping("/updatecategory")
	public String updateCategory(CategoryBean categoryBean) {

		categoryDao.updateCategory(categoryBean);

		return "redirect:/listcategories";
	}

	
	@GetMapping("/seecategory")
	public String SeeCategory(@RequestParam("categoryId") Integer categoryId,  Model model) {
		List<CategoryBean> list1 = categoryDao.getProductByCategoryId(categoryId);
		model.addAttribute("list1",list1);
		
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list",list);
		 
		List<ProductBean> AllProduct = productdao.getAllProduct();
		model.addAttribute("allProduct", AllProduct);
		
		List<ProductBean> listProducts = productdao.getAllProduct();
		model.addAttribute("listProducts",listProducts);
		return "SeeCategory";
	}
	
	
	

	
	
}