package com.grownited.bean;

public class AddressBean {
	
	private Integer addressId,userId;
	private String addressLine;
	private String landMark;
	private String pincode;
	private String city;
	private String state;
	private Boolean defaultInd;
	
	
	public Integer getAddressId() {
		return addressId;
	}
	

	public void setAddressId(Integer addressId) {
		this.addressId=addressId;
	}
	
	
	public Integer getUserId() {
		return userId;
	}


	public void setUserId(Integer userId) {
		this.userId = userId;
	}


	public String getAddressLine() {
		return addressLine;
	}

	public void setAddressLine(String addressLine) { 
		this.addressLine = addressLine;
	}
	
	public String getLandMark() {
		return landMark;
	}

	public void setLandMark(String landMark) {
		this.landMark = landMark;
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
	

	public Boolean getDefaultInd() {
		return defaultInd;
	}


	public void setDefaultInd(Boolean defaultInd) {
		this.defaultInd = defaultInd;
	}
	
	
}
