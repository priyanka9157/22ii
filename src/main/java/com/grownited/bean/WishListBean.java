package com.grownited.bean;

public class WishListBean {
	Integer wishlistId;
	private Integer userId;
	private Integer productId;
	private Integer quantity;
	String productName;
	Integer price;
	Boolean deleted;
	
	
	public Integer getWishlistId() {
		return wishlistId;
	}
	public void setWishlistId(Integer wishlistId) {
		this.wishlistId = wishlistId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Boolean getDeleted() {
		return deleted;
	}
	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}
	
	

}
