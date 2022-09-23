package entity;

import java.util.Date;
import java.util.List;

public class Product {

	Integer id;
	String name;
	Double unitPrice;
	String image;
	Date productDate;
	Boolean available;
	Integer categoryId;
	Integer quantity;
	String description;
	Double discount;
	Integer viewCount;
	Boolean special;


	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Product(String name, Double unitPrice, String image, Date productDate, Boolean available, Integer categoryId,
			Integer quantity, String description, Double discount, Integer viewCount, Boolean special) {
		super();
		this.name = name;
		this.unitPrice = unitPrice;
		this.image = image;
		this.productDate = productDate;
		this.available = available;
		this.categoryId = categoryId;
		this.quantity = quantity;
		this.description = description;
		this.discount = discount;
		this.viewCount = viewCount;
		this.special = special;
	}


	public Product(Integer id, String name, Double unitPrice, String image, Date productDate, Boolean available,
			Integer categoryId, Integer quantity, String description, Double discount, Integer viewCount,
			Boolean special) {
		super();
		this.id = id;
		this.name = name;
		this.unitPrice = unitPrice;
		this.image = image;
		this.productDate = productDate;
		this.available = available;
		this.categoryId = categoryId;
		this.quantity = quantity;
		this.description = description;
		this.discount = discount;
		this.viewCount = viewCount;
		this.special = special;
	}


	public Integer getCategoryId() {
		return categoryId;
	}


	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Double getUnitPrice() {
		return unitPrice;
	}


	public void setUnitPrice(Double unitPrice) {
		this.unitPrice = unitPrice;
	}


	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}


	public Date getProductDate() {
		return productDate;
	}


	public void setProductDate(Date productDate) {
		this.productDate = productDate;
	}


	public Boolean getAvailable() {
		return available;
	}


	public void setAvailable(Boolean available) {
		this.available = available;
	}


	public Integer getQuantity() {
		return quantity;
	}


	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public Double getDiscount() {
		return discount;
	}


	public void setDiscount(Double discount) {
		this.discount = discount;
	}


	public Integer getViewCount() {
		return viewCount;
	}


	public void setViewCount(Integer viewCount) {
		this.viewCount = viewCount;
	}


	public Boolean getSpecial() {
		return special;
	}


	public void setSpecial(Boolean special) {
		this.special = special;
	}

	
}
