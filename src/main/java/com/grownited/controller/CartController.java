package com.grownited.controller;

import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.bean.AddressBean;
import com.grownited.bean.CartBean;
import com.grownited.bean.CategoryBean;
import com.grownited.bean.UserBean;
import com.grownited.dao.AddressDao;
import com.grownited.dao.CartDao;
import com.grownited.dao.CategoryDao;
import com.grownited.dao.Productdao;

@Controller
public class CartController {
	@Autowired
	CartDao cartDao;

	@Autowired
	Productdao productdao;
	
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	AddressDao addressDao;

	@GetMapping("/newcart")
	public String newCart(Model model) {
		model.addAttribute("listProducts", productdao.getAllProduct());

		return "NewCart";
	}

//	@PostMapping("/savecart")
//	public String saveCart(CartBean cartBean, HttpServletRequest request) {
//		cartDao.addCart(cartBean);
//		// cookie
//		int userId = -1;
//		// read all cookies from request
//		String firstName = "";
//		Cookie c[] = request.getCookies();// jSessionId userId octo firstName
//
//		for (Cookie x : c) {// jsessionid userId firstname
//			if (x.getName().equals("userId")) {
//				userId = Integer.parseInt(x.getValue());
//			}
//			if (x.getName().equals("firstName")) {
//				firstName = x.getValue();
//			}
//		}
//		cartBean.setUserId(userId);
//
//		cartDao.addCart(cartBean);
//		return "redirect:/listcart";
//	}

	@GetMapping("/listcart")
	public String listCart(Model model) {
		List<CartBean> listCart = cartDao.getAllCart(null);
		model.addAttribute("listCart", listCart);
		return "ListCart";
	}

	@GetMapping("/deletecart")
	public String deleteCart(@RequestParam("cartId") Integer cartId,HttpSession session,
			HttpServletRequest request) {
		// 12 45
		cartDao.deleteCart(cartId);
		return "redirect:/mycart";//
	}

	
	@GetMapping("/addtocart")
	public String addToCart(@RequestParam("productId") Integer productId, HttpSession session,
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

		CartBean cart = new CartBean();
		UserBean user = (UserBean) session.getAttribute("user");
		userId = user.getUserId();

		cart.setUserId(userId);
		cart.setProductId(productId);
		cart.setQuantity(1);

		cartDao.addToCart(cart);

		return "redirect:/" + backUrl;
	}

	@GetMapping("/mycart")
	public String mycart(HttpSession session, Model model) {
		UserBean user = (UserBean) session.getAttribute("user");
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list",list);

		List<CartBean> mycart = cartDao.myCart(user.getUserId());

		model.addAttribute("mycart", mycart);
		return "MyCart";
	}
	
	@GetMapping("/checkout")
	public String checkout(HttpSession session,Model model) {
		UserBean user = (UserBean) session.getAttribute("user");
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list",list);

		List<CartBean> mycart = cartDao.myCart(user.getUserId());
		model.addAttribute("mycart",mycart);
		List<AddressBean> address =  addressDao.getAllAddressByUser(user.getUserId());
		model.addAttribute("address",address);

		return "Checkout";
	}
	
	
	
	
	
}
