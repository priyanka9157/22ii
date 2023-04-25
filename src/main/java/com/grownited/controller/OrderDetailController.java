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
import com.grownited.bean.OrderBean;
import com.grownited.bean.OrderDetailBean;
import com.grownited.dao.CategoryDao;
import com.grownited.dao.OrderDao;
import com.grownited.dao.OrderDetailDao;
import com.grownited.dao.Productdao;
import com.grownited.dao.StatusDao;

@Controller
public class OrderDetailController {
	@Autowired
	OrderDetailDao orderDetailDao;
	
	@Autowired
	Productdao productdao;
	
	@Autowired
	OrderDao orderDao;
	

	@Autowired
	StatusDao statusDao;
	@Autowired
	CategoryDao categoryDao;

	

}
