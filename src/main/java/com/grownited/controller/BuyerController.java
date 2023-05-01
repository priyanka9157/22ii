package com.grownited.controller;

import java.time.LocalDate;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.bean.AddressBean;
import com.grownited.bean.CartBean;
import com.grownited.bean.CategoryBean;
import com.grownited.bean.ProductBean;
import com.grownited.bean.ProductImageBean;
import com.grownited.bean.ReviewProductBean;
import com.grownited.bean.UserBean;
import com.grownited.dao.AddressDao;
import com.grownited.dao.CartDao;
import com.grownited.dao.CategoryDao;
import com.grownited.dao.ProductImageDao;
import com.grownited.dao.Productdao;
import com.grownited.dao.ReviewProductDao;

@Controller
public class BuyerController {

	@Autowired
	Productdao productDao;

	@Autowired
	ProductImageDao productImageDao;

	@Autowired
	CartDao cartDao;

	@Autowired
	AddressDao addressDao;

	@Autowired
	CategoryDao categoryDao;

	@Autowired
	ReviewProductDao reviewProductDao;

	@GetMapping(value = { "/", "/welcome" })
	public String welcome(Model model,HttpServletRequest request) {
		List<ProductBean> latestProduct = productDao.getAllLatestProducts();
		model.addAttribute("latestProducts", latestProduct);
		List<ProductBean> topSellingProducts = productDao.getAllTopSellingProducts();
		model.addAttribute("topSellingProducts", topSellingProducts);
		List<ProductBean> AllProduct = productDao.getAllProduct();
		model.addAttribute("allProduct", AllProduct);
		List<CategoryBean> allCategoryName = categoryDao.getAllCategory();
		model.addAttribute("allCategoryName", allCategoryName);
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list", list);
		Integer userId = -1; // session cookie 
		
		
		Cookie c[] = request.getCookies();
		for (Cookie x : c) {
			if(x.getName().equals("userId")){
				userId = Integer.parseInt(x.getValue());
			}
			 
		}
	
		List<ProductBean> list4 = reviewProductDao.getAllReviewProductsByUserId(userId);
		model.addAttribute("list4",list4);
		

		
		return "Welcome";
	}

	@GetMapping("/home")
	public String home() {
		return "redirect:/welcome";
	}

	@GetMapping("/seedetails")
	public String seeDetails(@RequestParam("productId") Integer productId, Model model,HttpServletRequest request) {
		ProductBean product = productDao.getProductById(productId);

		List<ProductImageBean> productImages = productImageDao.getImagesByProductId(productId);
		model.addAttribute("products", product);
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list", list);
		model.addAttribute("productImages", productImages);
		List<CategoryBean> list1 = categoryDao.getProductByCategoryId(product.getCategoryId());
		model.addAttribute("list1", list1);
		
		List<ProductBean> list3 = productDao.getRelatedProductbyId(product.getCategoryId());
		model.addAttribute("list3", list3);

		ReviewProductBean r = new ReviewProductBean();
		r.setProductId(productId);
		Integer userId = -1; // session cookie
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
		r.setUserId(userId);

		LocalDate today = LocalDate.now();

		r.setViewedAt(today.toString());
		reviewProductDao.addReviewProduct(r);

		
		return "ProductDetail";
	}


	@GetMapping("/shop")
	public String shop(Model model) {
		List<ProductBean> listProducts = productDao.getAllProduct();
		model.addAttribute("listProducts", listProducts);
		List<ProductBean> AllProduct = productDao.getAllProduct();
		model.addAttribute("allProduct", AllProduct);
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list", list);
		return "Shop";
	}

	@GetMapping("/contactus")
	public String contactus(Model model) {
		List<ProductBean> listProducts = productDao.getAllProduct();
		model.addAttribute("listProducts", listProducts);
		List<ProductBean> AllProduct = productDao.getAllProduct();
		model.addAttribute("allProduct", AllProduct);
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list", list);
		return "ContactUs";
	}

	@GetMapping("/checkout")
	public String checkout(HttpSession session, Model model) {
		UserBean user = (UserBean) session.getAttribute("user");
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list", list);

		List<CartBean> mycart = cartDao.myCart(user.getUserId());
		model.addAttribute("mycart", mycart);
		List<AddressBean> address = addressDao.getAllAddressByUser(user.getUserId());
		model.addAttribute("address", address);

		return "Checkout2";
	}

}