package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.AddressBean;
@Repository
public class AddressDao {

	@Autowired
	JdbcTemplate stmt;

	// add
	public void addAddress(AddressBean addressBean) {
		String insertQuery = "insert into address (userId,addressLine,landMark,pincode,city,state,defaultInd) values (?,?,?,?,?,?,?) ";

		stmt.update(insertQuery,addressBean.getUserId(),addressBean.getAddressLine(),addressBean.getLandMark(),addressBean.getPincode(),addressBean.getCity(),addressBean.getState(),addressBean.getDefaultInd());// insert //update //delete
	}

	public List<AddressBean> getAllAddressByUser(Integer userId) {
		return stmt.query("select * from address where userId = ?", new BeanPropertyRowMapper<>(AddressBean.class),
				new Object[] { userId });
	}
	
	
	
	
	
	
	

	// update

	// delete
}
