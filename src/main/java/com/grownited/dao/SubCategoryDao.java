package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.SubCategoryBean;

@Repository

public class SubCategoryDao {
	@Autowired
	JdbcTemplate stmt;

	// add
	public void addSubCategory(SubCategoryBean subCategoryBean) {
		 
		String insertQuery ="insert into subcategory (subcategoryname,categoryId,deleted) values (?,?,?)";
		stmt.update(insertQuery,subCategoryBean.getSubCategoryName(),subCategoryBean.getCategoryId(),false);
	}

	public List<SubCategoryBean> getAllSubCagetgory() {
		
		String joinQuery = "select c.categoryName , sc.categoryId,sc.subCategoryId,sc.subCategoryName,sc.deleted from category c , subcategory sc where c.categoryId = sc.categoryId and sc.deleted = false";

		return stmt.query(joinQuery,new BeanPropertyRowMapper<SubCategoryBean>(SubCategoryBean.class));
	}

	
			
	public void deleteSubCategory(Integer subCategoryId) {
		String updateQuery = "update subcategory set deleted = true where subCategoryId = ?";
		stmt.update(updateQuery, subCategoryId);
		}
		
		public SubCategoryBean getSubCategoryById(Integer subCategoryId) {
		SubCategoryBean subcategoryBean = null;

		try {
			subcategoryBean = stmt.queryForObject("select * from subcategory where subCategoryId = ?",
					new BeanPropertyRowMapper<SubCategoryBean>(SubCategoryBean.class), new Object[] { subCategoryId });
		} catch (Exception e) {
			System.out.println("SubCategoryDao :: getSubCategoryById()");
			System.out.println(e.getMessage());
		
	}
	// list

	
		return subcategoryBean;
	}

		public void updateSubCategory(SubCategoryBean subCategoryBean) {
			String updateQuery = "update subcategory set subCategoryName  = ? where subCategoryId = ? ";
			stmt.update(updateQuery,subCategoryBean.getSubCategoryName(),subCategoryBean.getSubCategoryId());
			
		}

}