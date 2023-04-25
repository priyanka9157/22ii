package com.grownited.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.AddressBean;
import com.grownited.bean.CartBean;
import com.grownited.bean.CategoryBean;
import com.grownited.bean.UserBean;
import com.grownited.dao.AddressDao;
import com.grownited.dao.CartDao;
import com.grownited.dao.CategoryDao;
@Controller
public class AddressController {
	@Autowired
	AddressDao addressDao;
	
	@Autowired
	CartDao cartDao;
	
	@Autowired
	CategoryDao categoryDao;
	
	@GetMapping("/newaddress")
	public String newAddress(Model model) {
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list",list);
		return "NewAddress";
	}

	@PostMapping("/saveaddress")
	public String saveAddress(AddressBean address) {
		addressDao.addAddress(address);	
		return "redirect:/myaddress";
	}
	@GetMapping("/myaddress")
	public String myAddress(Model model,HttpSession session) {
		UserBean user = (UserBean) session.getAttribute("user");
		Integer userId = user.getUserId();
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list",list);
		List<AddressBean> address = addressDao.getAllAddressByUser(userId);
		model.addAttribute("address",address);
		return "MyAddress";
	}

	
}
