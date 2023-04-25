package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.WishListBean;
@Repository
public class WishListDao {
	@Autowired
	
	JdbcTemplate stmt;
	
	
	

	public void addToWishList(WishListBean wishBean) {
		stmt.update("insert into wishlist (userId,productId,quantity) values (?,?,?) ", wishBean.getUserId(), wishBean.getProductId(),
				wishBean.getQuantity());
		
	}

	public List<WishListBean> mywList(Integer userId) {
		return stmt.query(
		"select p.productId,p.price,p.productName,w.quantity,w.wishlistId from wishlist w, product p where w.userId = ? and w.productId = p.productId",
		new BeanPropertyRowMapper<>(WishListBean.class), new Object[] { userId });
	}
	
	
	public void removeItemsFromWhislist(Integer userId) {
		stmt.update("delete from wishlist where userId = ?",userId);

	}


	public void deleteWishlist(Integer wishlistId) {
		stmt.update("delete from wishlist where wishlistId  = ?",wishlistId);

	}
	

	



}
