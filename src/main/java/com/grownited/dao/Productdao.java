package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.ProductBean;

@Repository
public class Productdao {

	@Autowired
	JdbcTemplate stmt;

	// add
	public void addProduct(ProductBean productBean) {
		String insertQuery = "insert into product (productId,productName,description,quantity,price,topSellingInd,mostValueInd,brandName,categoryId,subCategoryId,deleted,categoryName,subCategoryName) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";

		stmt.update(insertQuery, productBean.getProductId(),productBean.getProductName(),productBean.getDescription(),productBean.getQuantity(),productBean.getPrice(),false,false, productBean.getBrandName(),productBean.getCategoryId(),productBean.getSubCategoryId(), false,productBean.getCategoryName(),productBean.getSubCategoryName());// insert //update //delete
	}

	public  List<ProductBean> getAllProduct() {

		String joinQuery=" select p.*,c.categoryId,c.categoryName,sb.subCategoryId,sb.subCategoryName,p.deleted from product p,category c,subCategory sb where p.categoryId = c.categoryId and p.subCategoryId = sb.subCategoryId and p.deleted = false";

		List<ProductBean> list =  stmt.query(joinQuery, new BeanPropertyRowMapper<ProductBean>(ProductBean.class));
		
		//c1 c2 c3 
		return list;
		
	}

	public void deleteProduct(Integer product) {
		String updateQuery = "update product set deleted = true where productId = ?";
		stmt.update(updateQuery, product);
		
	}
	// list
	
	public ProductBean getProductById(Integer productId) {
		ProductBean productBean = null;

		try {
			productBean = stmt.queryForObject("select p.*,c.categoryName,sc.subCategoryName from product p,category c,subcategory sc  where p.categoryId = c.categoryId and  p.subcategoryId = sc.subcategoryId and productId = ?",
					new BeanPropertyRowMapper<ProductBean>(ProductBean.class), new Object[] { productId });
		} 
		catch (Exception e) {
			System.out.println("ProductDao :: getProductById()");
			System.out.println(e.getMessage());
		}
		return productBean;
	}

	public List<ProductBean> getAllLatestProducts() {
		return stmt.query(
				"select p.*,c.categoryName,sc.subCategoryName from product p,category c,subcategory sc where p.deleted = false and p.categoryId = c.categoryId and p.subCategoryId = sc.subCategoryId and p.latestInd = 1 order by p.productId desc",
			new BeanPropertyRowMapper<ProductBean>(ProductBean.class));
	}


	
	public List<ProductBean> getAllTopSellingProducts() {
		return stmt.query(
				"select p.*,c.categoryName,sc.subCategoryName from product p,category c,subcategory sc where p.deleted = false and p.categoryId = c.categoryId and p.subCategoryId = sc.subCategoryId and p.topSellingInd = 1 order by p.productId desc",
				new BeanPropertyRowMapper<ProductBean>(ProductBean.class));

	}

	public void updateProduct(ProductBean productBean) {
		String updateQuery = "update product set productName  = ?,description =?,quantity=?,brandName=?,price=?,productDetailDescriptionURL=? where productId = ? ";
		stmt.update(updateQuery,productBean.getProductName(),productBean.getDescription(),productBean.getQuantity(),productBean.getBrandName(),productBean.getPrice(),productBean.getProductId());
		
	}
	
	
	// update

	// delete

	
}
