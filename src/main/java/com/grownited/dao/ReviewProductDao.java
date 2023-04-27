package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.ReviewProductBean;

@Repository
public class ReviewProductDao {
	@Autowired
	JdbcTemplate stmt;

	public List<ReviewProductBean> getAllReviewProducts(Integer userId) {
		 return stmt.query("select rp.productId from reviewproduct rp where rp.userId = userId order by rp.userId=? desc",new BeanPropertyRowMapper<ReviewProductBean>(ReviewProductBean.class),new Object[] {userId} );
	}
	
//    List<ReviewProductBean> findViewedProductsByUserId(@Param("userId") Long userId);

	
	

}
