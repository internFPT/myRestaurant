package poly.domain;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "orders")
public class Order implements Serializable{
	@Id
	@Column(length = 10)
	private String orderID;

//	Tạo trường dữ liệu có kiểu dữ liệu là datetime

	@Column(columnDefinition = "nvarchar(100)")
	private String status;
	private Double totalPrice;
	@Column(columnDefinition = "TEXT")
	private String noteForRestaurant;
	private Double shipMoney;
	@Temporal(TemporalType.TIMESTAMP)
	private Date orderDate;

	@PrePersist
    public void prePersist() {
        Calendar calendar = Calendar.getInstance();
        orderDate= calendar.getTime();
    }

	@ManyToOne
	@JoinColumn(name = "restaurantID", referencedColumnName = "restaurantID")
	private Restaurant restaurant;
	@ManyToOne
	@JoinColumn(name = "customerID", referencedColumnName = "customerID")
	private Customer customer;
	@ManyToOne
    @JoinColumn(name = "voucherID", referencedColumnName = "voucherID")
    private Voucher voucher;

	@OneToMany(mappedBy = "orders")
    private List<OrderDetail> orderDetails;
	@OneToOne(mappedBy = "orders")
    private Delivery delivery;

	public Order(String orderID) {
		this.orderID = orderID;
	}
}
