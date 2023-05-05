package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.PaymentBean;
import com.grownited.bean.ProductBean;
@Repository
public class PaymentDao {
	@Autowired
	JdbcTemplate stmt;
	
	public void addPayment(PaymentBean paymentBean) {
		String insertQuery = "insert into payment (userId,creditCardNum,expDate,email,defaultInd) values (?,?,?,?,?)";

		stmt.update(insertQuery,paymentBean.getUserId(),paymentBean.getCreditCardNum(),paymentBean.getExpDate(),paymentBean.getEmail(),false);// insert //update //delete
	}


	public List<PaymentBean> getAllPayment(Integer userId) {
		String updateQuery="select * from payment where userId = ? ";

		List<PaymentBean> list =  stmt.query(updateQuery, new BeanPropertyRowMapper<PaymentBean>(PaymentBean.class),new Object[] {userId});
		System.out.println("payment list => "+list.size());
		return list;
	}

}
