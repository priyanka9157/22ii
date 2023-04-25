package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.CartBean;
@Repository
public class CartDao {
	@Autowired
	JdbcTemplate stmt;

 
	public  List<CartBean> getAllCart(Integer userId) {
		return stmt.query("select u.userId,p.productId,p.price,p.productName,p.quantity,c.cartId,c.deleted from cart c,product p,users u where c.productId = p.productId and c.deleted  = false",new BeanPropertyRowMapper<>(CartBean.class), new Object[] { userId });
	}
	
	public void deleteCart(Integer cartId) {
		String updateQuery = "update cart set deleted = true where cartId = ?";
		stmt.update(updateQuery, cartId);
		
	}
	// list
	
	public CartBean getCartById(Integer cartId) {
		CartBean cartBean = null;

		try {
			cartBean = stmt.queryForObject("select * from cart where cartId = ?",
					new BeanPropertyRowMapper<CartBean>(CartBean.class), new Object[] { cartId });
		} catch (Exception e) {
			System.out.println("ProductDao :: getProductById()");
			System.out.println(e.getMessage());
		}
		return cartBean;
	}

	
	public void addToCart(CartBean cart) {
		stmt.update("insert into cart (userId,productId,quantity) values (?,?,?) ", cart.getUserId(), cart.getProductId(),
				cart.getQuantity());
	}
	
	public List<CartBean> myCart(Integer userId) {

		return stmt.query(
				"select p.productId , p.price , p.productName  , c.quantity , c.cartId from product p , cart c where c.userId = ? and c.productId = p.productId",
				new BeanPropertyRowMapper<>(CartBean.class), new Object[] { userId });
	}
	
	public void removeItemsFromCart(Integer userId) {
		stmt.update("delete from cart where userId = ?",userId);

	}
	

	// update

	// delete
}
