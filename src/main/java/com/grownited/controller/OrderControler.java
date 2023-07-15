package com.grownited.controller;

import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpRequest;
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
import com.grownited.bean.OrderBean;
import com.grownited.bean.OrderDetailBean;
import com.grownited.bean.PaymentBean;
import com.grownited.bean.StatusBean;
import com.grownited.bean.UserBean;
import com.grownited.dao.AddressDao;
import com.grownited.dao.CartDao;
import com.grownited.dao.CategoryDao;
import com.grownited.dao.OrderDao;
import com.grownited.dao.PaymentDao;
import com.grownited.dao.StatusDao;
@Controller
public class OrderControler {
	@Autowired
	OrderDao orderDao;
	
	
	@Autowired
	AddressDao addressDao;
	
	@Autowired
	StatusDao statusDao;
	
	@Autowired
	CartDao cartDao;
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	PaymentDao paymentDao;


	
	
	@GetMapping("/neworder")
	public String newOrder(Model model) {
		model.addAttribute("listAddress", addressDao.getAllAddressByUser(null));
		model.addAttribute("list", statusDao.getAllstatus());

		return "NewOrder";
	}

	
	@PostMapping("/saveorder")
	public String saveOrder(OrderBean orderBean,HttpServletRequest request) {
		int userId=-1;
		// read all cookies from request
		String firstName="";
		Cookie c[] = request.getCookies();//jSessionId userId octo firstName 

		for (Cookie x : c) {// jsessionid userId firstname
			if (x.getName().equals("userId")) {
				userId = Integer.parseInt(x.getValue());
			}
			if (x.getName().equals("firstName")) {
				firstName = x.getValue();
			}
		}
		orderBean.setUserId(userId);

    	orderDao.addOrder(orderBean);
        return "redirect:/listorders";
	}
	
	@GetMapping("/listorders")
	public String listOrder(Model model) {
		List<OrderBean> listOrders = orderDao.getAllOrder();
		model.addAttribute("listOrders",listOrders);
		return "ListOrders";

		
	}
	
	@GetMapping("/deleteorder/{orderId}")
	public String deleteOrder(@PathVariable("orderId") Integer orderId ) {
		//12 45 
		orderDao.deleteOrder(orderId);
		return "redirect:/listorders";//
	}

	
	@PostMapping("/placeorder")
	public String placeOrder(AddressBean addressBean,HttpSession session,Model model) {
		
		
		System.out.println("==============================================");
		UserBean user = (UserBean) session.getAttribute("user");
		List<CategoryBean> list = categoryDao.getAllCategory();

		System.out.println("list => "+list.size());
		model.addAttribute("list", list);

		
		Integer addressId = addressBean.getAddressId(); 
		LocalDate today = LocalDate.now();
		Integer status = 9; //placed
		Integer orderId = (int)(Math.random()*10000000);//565475455 

		//amount 
		
		List<CartBean> mycart = cartDao.myCart(user.getUserId());
		model.addAttribute("mycart", mycart);
		
		
		Integer totalAmount =0 ; 
		for(CartBean c:mycart) {
			totalAmount = (totalAmount)+(c.getPrice()*c.getQuantity());
		}
		System.out.println(orderId);
		System.out.println(today);
		System.out.println(user.getUserId());
		System.out.println(totalAmount);
		System.out.println(status);
		System.out.println(addressId);



		OrderBean orderBean = new OrderBean();
		orderBean.setAddressId(addressId);
		orderBean.setOrderDate(today.toString());
		orderBean.setOrderId(orderId);
		orderBean.setUserId(user.getUserId());
		orderBean.setStatus(status);
		orderBean.setTotaleAmount(totalAmount);
        
		orderDao.addOrder(orderBean);
		for(CartBean c:mycart) {
			orderDao.addOrderDetail(c, orderId);
		}


		cartDao.removeItemsFromCart(user.getUserId());

		
		
		return "PlaceOrder";
		
		
	}
	
	@GetMapping("/myorder")
	public String myOrders(HttpSession session,Model model) {
		UserBean user = (UserBean) session.getAttribute("user");
		List<OrderBean> myorders = orderDao.getOrdersByUser(user.getUserId());
		model.addAttribute("myorders",myorders);
		System.out.println("=="+myorders.size());
		List<CategoryBean> list = categoryDao.getAllCategory();
		System.out.println("=="+list.size());
		model.addAttribute("list",list);
		return "MyOrder";	

	}
	
	@GetMapping("/orderdetails")
	public String orderDetails(@RequestParam("orderId") Integer orderId,Model model,HttpServletRequest request) {
Integer userId = -1; // session cookie 
		
		
		Cookie c[] = request.getCookies();
		for (Cookie x : c) {
			if(x.getName().equals("userId")){
				userId = Integer.parseInt(x.getValue());
			}
			 
		}
		List<OrderDetailBean> myorderdetail = orderDao.getOrderDetailByOrder(orderId);
		OrderBean order = orderDao.getOrdersByOrderId(orderId);

		model.addAttribute("order",order);
		model.addAttribute("myorderdetail",myorderdetail);

		System.out.println("Order =>"+order);
		System.out.println("OrderDetail =>"+myorderdetail);
		List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list",list);
		return "MyOrderDetail";
	}


	
	@GetMapping("/editorderstatus")
	public String editOrderStatus(@RequestParam("statusId") Integer statusId,Model model) {
		OrderBean orderBean = orderDao .getStatusbyId(statusId);
		
		model.addAttribute("orderBean",orderBean);
    	List<StatusBean> list = statusDao.getAllstatus();
    	model.addAttribute( "list",list);
		return "EditOrderStatus";
	}
	
	

	@PostMapping("/updateorderstatus")
	public String updateOrderStatus(OrderBean orderBean) {

		orderDao.updateOrderStatus(orderBean);

		return "redirect:/listorders";
	}

	

}
