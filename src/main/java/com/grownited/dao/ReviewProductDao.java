package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.ProductBean;
import com.grownited.bean.ReviewProductBean;

@Repository
public class ReviewProductDao {
	@Autowired
	JdbcTemplate stmt;

	public void addReviewProduct(ReviewProductBean r) {
		String insertQuery = "insert into reviewproduct (reviewProductId,productId,userId,viewedAt) values (?,?,?,?)";
		stmt.update(insertQuery,r.getReviewproductId(),r.getProductId(),r.getUserId(),r.getViewedAt());
	}

	public List<ProductBean> getAllReviewProductsByUserId(Integer userId) {
		String joinQuery = " select rp.*,p.*,c.categoryId from product p,category c, reviewproduct rp  where p.categoryId = c.categoryId and p.productId = rp.productId and rp.userId  = ? ";
		return stmt.query(joinQuery, new BeanPropertyRowMapper<>(ProductBean.class), new Object[] { userId });
	}


}
