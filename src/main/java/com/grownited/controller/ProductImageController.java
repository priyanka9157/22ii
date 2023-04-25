package com.grownited.controller;

import java.io.File;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.bean.ProductImageBean;
import com.grownited.dao.ProductImageDao;
import com.grownited.dao.Productdao;
@Controller
public class ProductImageController {
	@Autowired
	ProductImageDao productImageDao;
	
	@Autowired
	Productdao productDao;
	
	@GetMapping("/newproductimage")
	public String newproduct(Model model) {
		model.addAttribute("listProducts", productDao.getAllProduct());
		return "NewProductImage";
	}
	
	
	
	@PostMapping("/saveproductimage")
	public String saveProductImage(ProductImageBean productImageBean) {
		productImageDao.saveProductImage(productImageBean);
		System.out.println(productImageBean.getProductImageId());
		System.out.println(productImageBean.getImageUrl());
		System.out.println(productImageBean.getproductId 	());
		return "redirect:/listproductimage";
	}

	//listproduct 
	
	@GetMapping("/listproductimage")
	public String listProductImage (Model model) {
		List<ProductImageBean> list = productImageDao.getAllProductImages();
		model.addAttribute("listProductImage",list);
		return "ListProductImage";
	}
	
	
	
	@GetMapping("/deleteproductimage")
	public String deleteImage(@RequestParam("productImageId") Integer productImageId) {
		productImageDao.deleteProductImage(productImageId);
		return "redirect:/listproductimage";
	}
	
	
	@GetMapping("/uploadimage")
	public String uploadImageForProduct() {
		return "UploadImage";
	}

	

	
	@PostMapping("/saveimage")
	public String saveImage(ProductImageBean pb) {
		System.out.println(pb.getImageFile().getOriginalFilename());
		System.out.println(pb.getproductId());

		String mainPath = "C:\\Users\\PIKA\\OneDrive\\Documents\\workspace-spring-tool-suite-4-4.17.2.RELEASE\\Onlinegroceryy\\src\\main\\resources\\static\\assets\\product";
		try {
			File dir = new File(mainPath,pb.getproductId()+"");

			if (!dir.exists()) {
				dir.mkdir();
			}
			File file = new File(dir,pb.getImageFile().getOriginalFilename()); 
			FileUtils.writeByteArrayToFile(file, pb.getImageFile().getBytes());
			pb.setImageUrl("assets/product/"+pb.getproductId()+"/"+pb.getImageFile().getOriginalFilename());
			productImageDao.saveProductImage(pb);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/listproductimage";
	}
	
	
	

}
