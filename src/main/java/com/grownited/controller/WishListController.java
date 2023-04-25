package com.grownited.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.bean.CategoryBean;
import com.grownited.bean.UserBean;
import com.grownited.bean.WishListBean;
import com.grownited.dao.CategoryDao;
import com.grownited.dao.Productdao;
import com.grownited.dao.WishListDao;

@Controller
public class WishListController {

	@Autowired
	WishListDao wishListDao;
	
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	Productdao productdao;
	
	@GetMapping("/newwishlist")
	public String newWishlist(Model model) {
		model.addAttribute("listProducts", productdao.getAllProduct());

		return "NewWishlist";
	}
	
	

	@GetMapping("/deletewishlist")
	public String deleteWishlist(@RequestParam("wishlistId") Integer wishlistId) {
		// 12 45
		wishListDao.deleteWishlist(wishlistId);
		return "redirect:/mywishlist";//
	}
	
	@GetMapping("/addtowishlist")
	public String addToWishList(@RequestParam("productId") Integer productId, HttpSession session,
			HttpServletRequest request) {
		String ref = request.getHeader("referer");
		String backUrl = "";
		if (ref == null) {
			backUrl = "welcome";
		} else {
			backUrl = ref.substring(22);
			if (backUrl.length() == 0) {
				backUrl = "welcome";

			}
		}
		Integer userId = -1;
		// cookie userId
        
		WishListBean wishlist = new WishListBean();
		UserBean user = (UserBean) session.getAttribute("user");
		userId = user.getUserId();
       
		wishlist.setUserId(userId);
		wishlist.setProductId(productId);
		wishlist.setQuantity(1);
        
		System.out.println("got "+backUrl);
		
		wishListDao.addToWishList(wishlist);

		return "redirect:/" + backUrl;
	}

	
	@GetMapping("/mywishlist")
	public String MyWishlist(HttpSession session, Model model) {
		UserBean user = (UserBean) session.getAttribute("user");
		
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list",list);

		List<WishListBean> mywList = wishListDao.mywList(user.getUserId());
		model.addAttribute("mywList", mywList);
		return "MyWishlist";
	}
}
