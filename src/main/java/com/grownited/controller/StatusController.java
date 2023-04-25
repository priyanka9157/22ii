package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.bean.StatusBean;
import com.grownited.dao.StatusDao;

@Controller
public class StatusController {
	
	@Autowired
	StatusDao statusDao;
	
	@GetMapping ("/newstatus")
	public String newStatus() {
		return "NewStatus";
	}

    @PostMapping("/savestatus")
    public String savestatus(StatusBean statusBean) {
    	System.out.println(statusBean.getStatus());
    	statusDao.insertStatus(statusBean);
    	return "redirect:/liststatus";
    }

    @GetMapping("/liststatus")
    public String listStatus(Model model) {
    	//pull all status from db-table
    	List<StatusBean> list = statusDao.getAllstatus();
    	model.addAttribute( "list",list);
    	return "ListStatus";
    	}
   
   
    
    @GetMapping("/deletestatus/{statusId}")
	public String deleteStatus(@PathVariable("statusId") Integer statusId) {
		statusDao.deleteStatus(statusId);
		return "redirect:/liststatus";//
	}
    
    @GetMapping("/viewstatus/{statusId}")
	public String viewStatus(@PathVariable("statusId") Integer statusId,Model model) {
		StatusBean statusBean = statusDao.getStatusBeanbyId(statusId);
		model.addAttribute("statusBean",statusBean);
		return "ViewStatus";
	}

    
    @GetMapping("/editstatus")
	public String editStatus(@RequestParam("statusId") Integer statusId,Model model) {
		StatusBean statusBean = statusDao .getStatusBeanbyId(statusId);
		model.addAttribute("statusBean",statusBean);
		return "EditStatus";
	}

	@PostMapping("/updatestatus")
	public String updateStatus(StatusBean statusBean) {

		statusDao .updateStatus(statusBean);

		return "redirect:/liststatus";
	}
    }

