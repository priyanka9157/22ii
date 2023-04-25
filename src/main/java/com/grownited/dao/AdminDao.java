package com.grownited.dao;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.OrderChartBean;
import com.grownited.bean.ProfileBean;

@Repository
public class AdminDao {
	@Autowired
	JdbcTemplate stmt;

	public Integer getTotaleOrderCountForCurrentDate() {

		String countQuery = "select count(*) from orders where orderDate = ?";

		// dd-mm-yyyy

		Calendar c = Calendar.getInstance();

		int ddd = c.get(Calendar.DATE);
		int mmm = c.get(Calendar.MONTH) + 1;
		int yyy = c.get(Calendar.YEAR);

		String today = "";

		if (mmm < 10) {
			today = ddd + "-0" + mmm + "-" + yyy;
		} else {
			today = ddd + "-" + mmm + "-" + yyy;
		}
		System.out.println("TODAY => " + today);

		return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });

	}

	public Integer getTotalUserCountForCurrentYear() {

		String countQuery = "select count(*) from users";

		// dd-mm-yyyy

		Calendar c = Calendar.getInstance();

		int yyy = c.get(Calendar.YEAR);

		String today = "%-" + yyy;// 2023

		System.out.println("CURRENT YEAR => " + today);

		return stmt.queryForObject(countQuery, Integer.class);
	}

	public List<OrderChartBean> getOrderStats() {

		String selectQ = " select monthname(orderdate) as month , sum(totaleAmount) as orderAmount from orders where year(orderDate) = 2023 group by monthname(orderdate),month(orderDate) order by month(orderDate)";
		return stmt.query(selectQ, new BeanPropertyRowMapper<OrderChartBean>(OrderChartBean.class));

	}

	public void updateImageUrl(ProfileBean profileBean) {
		stmt.update("update users set imageUrl = ? where userId = ?", profileBean.getImageUrl(),
				profileBean.getUserId());
	}
	//total sales - amount
	public Integer getSumOfOrderAmountForCurrentYear() {
		String countQuery = "select sum(totaleAmount) from orders  where year (orderDate) = ?";
		Calendar c = Calendar.getInstance();

		int yyy = c.get(Calendar.YEAR);

		String today = yyy + "";// 2023

		System.out.println("CURRENT YEAR => " + today);
		return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });
	}

	//total orders - count 
	public Integer getTotalOrdersOfCurrentYear() {
		String countQuery = "select count(totaleAmount) from orders  where year (orderDate) = ?";
		Calendar c = Calendar.getInstance();

		int yyy = c.get(Calendar.YEAR);

		String today = yyy + "";// 2023

		System.out.println("CURRENT YEAR => " + today);
		return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });
	}
}
