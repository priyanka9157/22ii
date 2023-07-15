package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.OrderBean;
import com.grownited.bean.StatusBean;

@Repository
public class StatusDao {
	@Autowired
	JdbcTemplate stmt;
	
	public  void insertStatus(StatusBean statusBean) {
		String insertQuery = "insert into status (statusId,status,deleted) value (?,?,?)";
		stmt.update(insertQuery,statusBean.getStatusId(),statusBean.getStatus(),false);
		
	}
	 
	public List<StatusBean> getAllstatus () {
		String selectQuery = "select * from status where  deleted = false";
		List<StatusBean> list = stmt.query(selectQuery, new BeanPropertyRowMapper<StatusBean>(StatusBean.class));
		return list;
	}
	
	public void deleteStatus(Integer statusId ) {
		String updateQuery = "update status set deleted = true where statusId = ?";
		stmt.update(updateQuery, statusId);
		
	}	


	public StatusBean getStatusBeanbyId(Integer statusId) {
		StatusBean statusBean = null;

		try {
			statusBean = stmt.queryForObject("select * from status where statusId = ?",
					new BeanPropertyRowMapper<StatusBean>(StatusBean.class), new Object[] { statusId });
		} catch (Exception e) {
			System.out.println("StatusDao :: getStatusById()");
			System.out.println(e.getMessage());
		}
		return statusBean;
	}

	public void updateStatus(StatusBean statusBean) {
		String updateQuery = "update status set status  = ? where statusId = ? ";
		stmt.update(updateQuery,statusBean.getStatus(),statusBean.getStatusId());
		
	}

	public void updateOrderStatus(StatusBean statusBean) {
		String updateQuery = "update status set status  = ? where statusId = ? ";
		stmt.update(updateQuery,statusBean.getStatus(),statusBean.getStatusId());
		
	}

	public StatusBean getStatusbyId(Integer statusId) {
		StatusBean statusBean = null;

		try {
			statusBean = stmt.queryForObject("select * from status where statusId = ?",
					new BeanPropertyRowMapper<StatusBean>(StatusBean.class), new Object[] { statusId });
		} catch (Exception e) {
			System.out.println("StatusDao :: getStatusById()");
			System.out.println(e.getMessage());
		}
		return statusBean;
	}

	
	
//	 public  List<OrderBean> getAllOrder() {
//
//			String selectQuery = "select o.orderId,u.userId,a.addressId,s.statusId,o.orderdate,o.totaleAmount,s.status,o.deleted from orders o,users u,address a,status s where o.addressId=a.addressId and o.statusId=s.statusId and o.deleted=false";
//			return stmt.query(selectQuery,new BeanPropertyRowMapper<OrderBean>(OrderBean.class));
//
//
//		   }

	}

	

	// update

	// delete

