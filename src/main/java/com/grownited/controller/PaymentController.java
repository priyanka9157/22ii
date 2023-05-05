package com.grownited.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.CategoryBean;
import com.grownited.bean.PaymentBean;
import com.grownited.bean.UserBean;
import com.grownited.dao.CategoryDao;
import com.grownited.dao.PaymentDao;
import com.grownited.service.PaymentService;

@Controller
public class PaymentController {

	@Autowired
	PaymentService paymentService;

	@Autowired
	PaymentDao paymentDao;

	@Autowired
	CategoryDao categoryDao;

	@GetMapping("/newpayment")
	public String newPayment(Model model, HttpServletRequest request) {
		int userId = -1;
		// read all cookie from request
		String firstName = "";
		Cookie c[] = request.getCookies();
		for (Cookie x : c) {
			if (x.getName().equals("userId")) {
				userId = Integer.parseInt(x.getValue());
			}
			if (x.getName().equals("firstName")) {
				firstName = x.getValue();
			}
		}
		System.out.println("userId - > " + userId);
		System.out.println("firstName - > " + firstName);

		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list", list);

		return "NewPayment";
	}

	@PostMapping("/savepayment")
	public String savePayment(PaymentBean paymentBean) {
		paymentDao.addPayment(paymentBean);

		return "redirect:/listpayment";
	}

	@GetMapping("/listpayment")
	public String listPrayment(Model model, HttpSession session) {

		UserBean user = (UserBean) session.getAttribute("user");
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list", list);

		List<PaymentBean> list1 = paymentDao.getAllPayment(user.getUserId());
		model.addAttribute("Plist", list1);

		return "MyPayment";
	}

	@PostMapping("/chargecreditcard")
	public String chargeCreditCard(PaymentBean paymentBean, Model model, HttpSession session) {
		UserBean user = (UserBean) session.getAttribute("user");

		List<PaymentBean> list1 = paymentDao.getAllPayment(user.getUserId());
		model.addAttribute("list", list1);

		paymentService.chargeCreditCard(paymentBean.getAmount(), paymentBean.getEmail(), paymentBean.getCreditCardNum(),
				paymentBean.getExpDate());
		return "redirect:/myorder";
	}

}
