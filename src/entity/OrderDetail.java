package entity;

public class OrderDetail {

	Integer id;
	Integer orderId;
	Integer productId;
	Double unitPrice;
	Integer quantity;
	Double discount;
	

	public OrderDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderDetail(Integer orderId, Integer productId, Double unitPrice, Integer quantity, Double discount) {
		super();
		this.orderId = orderId;
		this.productId = productId;
		this.unitPrice = unitPrice;
		this.quantity = quantity;
		this.discount = discount;
	}

	public OrderDetail(Integer id, Integer orderId, Integer productId, Double unitPrice, Integer quantity,
			Double discount) {
		super();
		this.id = id;
		this.orderId = orderId;
		this.productId = productId;
		this.unitPrice = unitPrice;
		this.quantity = quantity;
		this.discount = discount;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}

}
