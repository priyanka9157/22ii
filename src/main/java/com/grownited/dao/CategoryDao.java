package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.CategoryBean;

@Repository
public class CategoryDao {
	@Autowired
	JdbcTemplate stmt;

	// add
	public void addCategory(CategoryBean categoryBean) {
		String insertQuery = "insert into category (categoryName,deleted) values (?,?) ";

		stmt.update(insertQuery, categoryBean.getCategoryName(), false);// insert //update //delete
	}

	public List<CategoryBean> getAllCategory() {

		String selectQuery = "select * from category";

		List<CategoryBean> list = stmt.query(selectQuery, new BeanPropertyRowMapper<CategoryBean>(CategoryBean.class));

		// c1 c2 c3

		return list;
	}

	public void deleteCategory(Integer categoryId, boolean currentStatus) {
		currentStatus = !currentStatus;
		String updateQuery = "update category set deleted = ? where categoryId = ?";
		stmt.update(updateQuery, currentStatus, categoryId);

	}

	public CategoryBean getCategoryById(Integer categoryId) {
		CategoryBean categoryBean = null;

		try {
			categoryBean = stmt.queryForObject("select * from category where categoryId = ?",
					new BeanPropertyRowMapper<CategoryBean>(CategoryBean.class), new Object[] { categoryId });
		} catch (Exception e) {
			System.out.println("CategoryDao :: getCategoryById()");
			System.out.println(e.getMessage());

		}
		// list

		return categoryBean;
	}

	public void updateCategory(CategoryBean categoryBean) {
		String updateQuery = "update category set categoryName  = ? where categoryId = ? ";
		stmt.update(updateQuery, categoryBean.getCategoryName(), categoryBean.getCategoryId());
	}

	public List<CategoryBean> getProductByCategoryId(Integer categoryId) {
		return stmt.query(
				"select c.*,p.* from category c,product p where c.deleted = false and c.categoryId = p.categoryId and c.categoryId = ? order by c.categoryId desc",
				new BeanPropertyRowMapper<CategoryBean>(CategoryBean.class),new Object[] {categoryId});
	}

	


	
	

}