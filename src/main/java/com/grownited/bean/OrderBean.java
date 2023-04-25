package com.grownited.bean;

public class OrderBean {

	private Integer orderId,userId,addressId,statusId;
	private String orderDate;
	private Integer totaleAmount;
	private String statusName;
	private Boolean deleted;
	String firstName;
	String email;
	String addressLine;
	String pincode;
	String city;
	String state; 
	Integer status;
	
	
	public Integer getOrderId() {
		return orderId;	
	}
	
	public void setOrderId(Integer orderId ){
		this.orderId=orderId;
		
	}
	
	
	public Integer getUserId() {
		return userId;	
	}
	
	public void setUserId(Integer userId ){
		this.userId=userId;
		
	}
		
	public Integer getAddressId() {
		return addressId;
	}

	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}

	public Integer getStatusId() {
		return statusId;
	}

	public void setStatusId(Integer statusId) {
		this.statusId = statusId;
	}


	public String getStatusName() {
		return statusName;
	}

	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}

	public String getOrderDate() {
		return orderDate;
	} 
	
	public void setOrderDate(String orderDate) {
		this.orderDate=orderDate;
			
	}

	public Integer getTotaleAmount() {
		return totaleAmount;
	}

	public void setTotaleAmount(Integer totaleAmount) {
		this.totaleAmount = totaleAmount;
	}

	public Boolean getDeleted() {
		return deleted;
	}

	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddressLine() {
		return addressLine;
	}

	public void setAddressLine(String addressLine) {
		this.addressLine = addressLine;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	

	
	
	
	
	
	
}
