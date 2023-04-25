package com.grownited.controller;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.ForgetPasswordBean;
import com.grownited.bean.LoginBean;
import com.grownited.bean.UpdatePasswordBean;
import com.grownited.bean.UserBean;
import com.grownited.dao.UserDao;
import com.grownited.service.EmailService;
import com.grownited.util.OtpGenerator;

//annotation 
@Controller
public class SessionController {

	@Autowired
	UserDao userDao;

	@Autowired
	EmailService emailService;

	// jsp open
	@GetMapping("/signup")
	public String signup() {
		return "Signup"; // JSP
	}

	// jsp input process
	@PostMapping("/saveuser")
	public String saveUser(UserBean user) {
		System.out.println(user.getFirstName());
		System.out.println(user.getEmail());

		// validation
		// dbValidation
		// insert
		userDao.insertUser(user);
		return "Login"; // EmployeeLogin.jsp
	}

	// calculateTempSalary()

	@GetMapping("/login") // URL => Browser
	public String login() {
		return "Login";// JSP NAME
	}

	// on submit of Login.jsp
	@PostMapping("/authentication")
	public String authentication(LoginBean login, Model model,HttpServletResponse  responce,HttpSession session) {
		System.out.println(login.getEmail());
		System.out.println(login.getPassword());

		// validation : true
		// db -> users -> email : password match -> loginBean:email,password
		UserBean userBean = userDao.authenticateUser(login);

		if (userBean == null) {
			// inValid
			model.addAttribute("error", "Invalid Credentials");
			return "Login";
		} else {
			// valid
			//Cookie
			Cookie c1 = new Cookie ("userId",userBean.getUserId()+"");
			Cookie c2 = new Cookie ("FirstName",userBean.getFirstName());
			//Add Cookie
			responce.addCookie(c1);
			responce.addCookie(c2);
			
			//session
			session.setAttribute ("userId",userBean.getUserId());
			session.setAttribute("user", userBean);
			//max inactive interval time
			session.setMaxInactiveInterval(60*5);
			if (userBean.getRole() == 1) {
				// admin
				return "redirect:/admindashboard";
			} else if (userBean.getRole() == 2) {
				// buyer
				return "redirect:/home";
			} else {
				return "404";
			}
		}

	}

	@GetMapping("/")
	public String root() {
		return "Login";
	}

	@GetMapping("/forgetpassword")
	public String forgetPassword() {
		return "Forgetpassword";
	}

	@PostMapping("/sendotpforforgetpassword")
	public String sendOtpForForgetPassword(ForgetPasswordBean forgetPasswordBean, Model model) {
		System.out.println(forgetPasswordBean.getEmail());

		UserBean user = userDao.findUserByEmail(forgetPasswordBean);
		if (user == null) {
			// error
			model.addAttribute("error", "Invalid Email");
			return "Forgetpassword";
		} else {
			// otp
			// generate otp
			// int otp = (int)(Math.random()*1000000);

			String otp = OtpGenerator.generateOTP(6);
			userDao.updateOtp(forgetPasswordBean.getEmail(), otp);
			// user set --> email
			// send mail
			emailService.sendEmailForForgetPassword(forgetPasswordBean.getEmail(), otp);
			return "redirect:/updatepassword";

		}

	}

	@GetMapping("/updatepassword")
	public String updatePasswordJspOpen() {
		return "UpdatePassword";

	}

	@PostMapping("/updatemypassword")
	public String udpateMyPassword(UpdatePasswordBean upBean) {
		System.out.println(upBean.getEmail());
		System.out.println(upBean.getPassword());
		System.out.println(upBean.getOtp());

		//email otp password confirmpassword  - nt blank
		//password  - confirmpassword 
		// otp == dbOtp

		UserBean user = userDao.verifyOtpByEmail(upBean);
		if (user == null) {
			return "UpdatePassword";
		} else {
			userDao.updateMyPassword(upBean);
			return "Login";
		}
		
	}
	
		@GetMapping("/logout")
		public String logout (HttpSession session) {
			session.invalidate();
			return "redirect:/login";
		}

}

		