
package com.grownited.controller;


import java.io.File;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.ProfileBean;
import com.grownited.dao.AdminDao;

@Controller
public class AdminController<OrderChartBean> {
	
	
	@Autowired
	AdminDao adminDao;

	@GetMapping("/admindashboard")
	public String adminDashboard(Model model) {
		System.out.println("InSide admindashboard--url-metho--");
		//totaleOrdersCount-Today
		//totalOrderCount-Today
				Integer totalOrderCount = adminDao.getTotaleOrderCountForCurrentDate();
				Integer totalUserCount = adminDao.getTotalUserCountForCurrentYear();
				Integer sumofOrderAmount = adminDao.getSumOfOrderAmountForCurrentYear();
				Integer sumoftotalTransaction = adminDao.getTotalOrdersOfCurrentYear();
				List<OrderChartBean> chartData = (List<OrderChartBean>) adminDao.getOrderStats();
				
				model.addAttribute("totalSales", totalOrderCount);
				model.addAttribute("totalRevenue", sumofOrderAmount);
				
				model.addAttribute("totalUsers", totalUserCount);
				model.addAttribute("totaleTransactions",sumoftotalTransaction);
				model.addAttribute("chartData", chartData);
				System.out.println(sumofOrderAmount);
		
		
		return "AdminDashboard";
	}
	
	
	@GetMapping("/myprofile")
	public String myprofile() {
		return "MyProfile";
	}

	@PostMapping("/saveprofilepic")
	public String saveProfilePic(ProfileBean profileBean) {
		System.out.println(profileBean.getUserId());
		System.out.println(profileBean.getProfileImg().getOriginalFilename());
		try {
			File userDir = new File(
					"C:\\Users\\PIKA\\OneDrive\\Documents\\workspace-spring-tool-suite-4-4.17.2.RELEASE\\Onlinegroceryy\\src\\main\\resources\\static\\assets\\Profile",
					profileBean.getUserId() + "");
			if (userDir.exists() == false) {
				userDir.mkdir();
			}
			File file = new File(userDir, profileBean.getProfileImg().getOriginalFilename());
			FileUtils.writeByteArrayToFile(file, profileBean.getProfileImg().getBytes());
			profileBean.setImageUrl("assets/Profile/" + profileBean.getUserId() + "/"+ profileBean.getProfileImg().getOriginalFilename());

			adminDao.updateImageUrl(profileBean);

		} catch (Exception e) {

		}
		return "redirect:/myprofile";
	}
}
