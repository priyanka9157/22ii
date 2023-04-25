package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.PaymentBean;
import com.grownited.service.PaymentService;

@Controller
	public class PaymentController {

		@Autowired
		PaymentService paymentService;

		@GetMapping("/newpayment")
		public String newPayment() {

			return "NewPayment";
		}

		@PostMapping("/chargecreditcard")
		public String chargeCreditCard(PaymentBean paymentBean) {

			paymentService.chargeCreditCard(paymentBean.getAmount(), paymentBean.getEmail(), paymentBean.getCreditCardNum(),
					paymentBean.getExpDate());
			return "NewPayment";
		}

}
