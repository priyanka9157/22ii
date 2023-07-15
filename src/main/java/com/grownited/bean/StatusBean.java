package com.grownited.bean;

public class StatusBean {
	private Integer statusId;
	private String status;
	private Boolean deleted;
	
	Integer orderId;
	private String orderDate;
	private Integer totaleAmount;
	


	public Integer getStatusId() {
		return statusId;
	}

	public void setStatusId(Integer statusId) {
		this.statusId = statusId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	public boolean getDeleted() {
		return deleted;
	}

	public void setDeleted(boolean deleted) {
		this.deleted = deleted;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public Integer getTotaleAmount() {
		return totaleAmount;
	}

	public void setTotaleAmount(Integer totaleAmount) {
		this.totaleAmount = totaleAmount;
	}

	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}
	
	
     
	
}
