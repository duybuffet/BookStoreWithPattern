package model.business;

import java.util.List;
import model.user.User;

public class Order {
	private String orderId;
	private String orderDate;
	private int orderStatus;
	private String receiverTown;
	private String receiverHouseNo;
	private String receiverPhoneNo;
	private float totalPrice;
	private String note;
	private User user;
	private List<Cart> listCart;

	public Order(String orderId, String orderDate, int orderStatus,
			String receiverTown, String receiverHouseNo,
			String receiverPhoneNo, float totalPrice, String note,
			User user, List<Cart> listCart) {
		super();
		this.orderId = orderId;
		this.orderDate = orderDate;
		this.orderStatus = orderStatus;
		this.receiverTown = receiverTown;
		this.receiverHouseNo = receiverHouseNo;
		this.receiverPhoneNo = receiverPhoneNo;
		this.totalPrice = totalPrice;
		this.note = note;
		this.user = user;
		this.listCart = listCart;
	}

	public Order() {
		super();
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public int getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(int orderStatus) {
		this.orderStatus = orderStatus;
	}

	public String getReceiverTown() {
		return receiverTown;
	}

	public void setReceiverTown(String receiverTown) {
		this.receiverTown = receiverTown;
	}

	public String getReceiverHouseNo() {
		return receiverHouseNo;
	}

	public void setReceiverHouseNo(String receiverHouseNo) {
		this.receiverHouseNo = receiverHouseNo;
	}

	public String getReceiverPhoneNo() {
		return receiverPhoneNo;
	}

	public void setReceiverPhoneNo(String receiverPhoneNo) {
		this.receiverPhoneNo = receiverPhoneNo;
	}

	public float getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Cart> getListCart() {
		return listCart;
	}

	public void setListCart(List<Cart> listCart) {
		this.listCart = listCart;
	}

}
