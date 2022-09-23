package entity;

import java.util.Date;
import java.util.List;

public class Order {

	Integer id;
	String userId;
	Date orderDate;
	String telephone;
	String address;
	Double amount;
	String description;
	Integer status;

	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Order(String userId, Date orderDate, String telephone, String address, Double amount, String description,
			Integer status) {
		super();
		this.userId = userId;
		this.orderDate = orderDate;
		this.telephone = telephone;
		this.address = address;
		this.amount = amount;
		this.description = description;
		this.status = status;
	}


	public Order(Integer id, String userId, Date orderDate, String telephone, String address, Double amount,
			String description, Integer status) {
		super();
		this.id = id;
		this.userId = userId;
		this.orderDate = orderDate;
		this.telephone = telephone;
		this.address = address;
		this.amount = amount;
		this.description = description;
		this.status = status;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public Date getOrderDate() {
		return orderDate;
	}


	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getTelephone() {
		return telephone;
	}


	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public Double getAmount() {
		return amount;
	}


	public void setAmount(Double amount) {
		this.amount = amount;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}
	
	public Integer getStatus() {
		return status;
	}


	public void setStatus(Integer status) {
		this.status = status;
	}

}