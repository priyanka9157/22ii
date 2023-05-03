package com.grownited.bean;

public class PaymentBean {
	 Integer paymentId;
	String creditCardNum;
	String expDate;
	Double amount;
	String cvv;
	String email;
	Integer userId;
	Boolean defaultInd;
	
	
	
	public Integer getPaymentId() {
		return paymentId;
	}
	public void setPaymentId(Integer paymentId) {
		this.paymentId = paymentId;
	}
	public String getCreditCardNum() {
		return creditCardNum;
	}
	public void setCreditCardNum(String creditCardNum) {
		this.creditCardNum = creditCardNum;
	}
	public String getExpDate() {
		return expDate;
	}
	public void setExpDate(String expDate) {
		this.expDate = expDate;
	}
	
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	public String getCvv() {
		return cvv;
	}
	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Boolean getDefaultInd() {
		return defaultInd;
	}
	public void setDefaultInd(Boolean defaultInd) {
		this.defaultInd = defaultInd;
	}
	
	

	
	
	
	
	
	
}
