package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.CartBean;
import com.grownited.bean.OrderBean;
import com.grownited.bean.OrderDetailBean;
@Repository
public class OrderDao {
	@Autowired
	JdbcTemplate stmt;

	// add
	public void addOrder(OrderBean orderBean) {
		String insertQuery = "insert into orders (orderId,userId,addressId,orderDate,totaleAmount,status) values (?,?,?,?,?,?) ";

		stmt.update(insertQuery,orderBean.getOrderId(),orderBean.getUserId(),orderBean.getAddressId(),orderBean.getOrderDate(),orderBean.getTotaleAmount(),orderBean.getStatus());
	}

	
	public List<OrderBean> getOrdersByUser(Integer userId) {
		return stmt.query(
				"select o.*,s.status as statusName,statusId,a.* from orders o  ,status s ,address a  where o.userId=? and o.status=s.statusId and o.addressId = a.addressId",
				new BeanPropertyRowMapper<>(OrderBean.class), new Object[] { userId });
		
	}
	

	
	public void addOrderDetail(CartBean cart, Integer orderId) {
		stmt.update("insert into orderDetail(orderId,userId,productId,price,qty,status) values (?,?,?,?,?,?)", orderId,
				cart.getUserId(), cart.getProductId(), cart.getPrice(), cart.getQuantity(),9);
	}


	public List<OrderDetailBean> getOrderDetailByOrder(Integer orderId) {
		return stmt.query(
				" select * from orderdetail o ,product p where o.productId = p.productId and o.orderId = ?",
				new BeanPropertyRowMapper<>(OrderDetailBean.class), new Object[] { orderId });
	}

	
    public OrderBean getOrdersByOrderId(Integer orderId) {
		
		return stmt.queryForObject(
				"select o.*, s.status as statusName,statusId,a.addressLine,a.state,a.city,a.pincode from orders o ,status s,address a  where o.orderId = ? and o.status = s.statusId and o.addressId = a.addressId ",
				new BeanPropertyRowMapper<>(OrderBean.class), new Object[] { orderId });
	}

    
    
    
    /////////
    
    
    
   public void allOrder(OrderBean orderBean) {
		String insertQuery = "insert into orders (orderId,userId,addressId,statusId,orderDate,totaleAmount,status,deleted) values (?,?,?,?,?,?,?,?) ";
		stmt.update(insertQuery,orderBean.getOrderId(),orderBean.getUserId(),orderBean.getAddressId(),orderBean.getStatusId(),orderBean.getOrderDate(),orderBean.getTotaleAmount(),orderBean.getStatus(),false);
    }
    
    
    public  List<OrderBean> getAllOrder() {

	String selectQuery = "select o.*,s.status as statusName,statusId,a.* from orders o  ,status s ,address a  where o.status=s.statusId and o.addressId = a.addressId";
	return stmt.query(selectQuery,new BeanPropertyRowMapper<OrderBean>(OrderBean.class));


   }
   
    
    public OrderBean getOrderById(Integer orderId) {
		OrderBean orderBean = null;

		try {
			orderBean = stmt.queryForObject("select * from orders where orderId = ?",
					new BeanPropertyRowMapper<OrderBean>(OrderBean.class), new Object[] { orderId });
		} 
		catch (Exception e) {
			System.out.println("OrderDao :: getOrderById()");
			System.out.println(e.getMessage());
		}
		return orderBean;
    }


	public void deleteOrder(Integer orderId) {
		String updateQuery = "update orders set deleted = true where orderId = ?";
		stmt.update(updateQuery, orderId);		
	}


	public void updateOrderStatus(OrderBean orderBean) {
		String updateQuery = "update orders set status  = ? where orderId = ? ";
		stmt.update(updateQuery,orderBean.getStatus(),orderBean.getOrderId());
		
	}
	
	


	public OrderBean getStatusbyId(Integer statusId) {
		OrderBean orderBean = null;

		try {
		orderBean = stmt.queryForObject("select * from orders where status = ?",
					new BeanPropertyRowMapper<OrderBean>(OrderBean.class), new Object[] { statusId });
		} catch (Exception e) {
			System.out.println("OrderDao :: getStatusById()");
			System.out.println(e.getMessage());
		}
		return orderBean;
	}


	public List<OrderBean> getAllOrderdetail() {
		String selectQuery = "select o.orderDetailId,o.orderId,o.userId,o.productId,o.qty,o.price,o.status from orderdetail o";
		return stmt.query(selectQuery,new BeanPropertyRowMapper<OrderBean>(OrderBean.class));

	}


	


	
	

	

}
