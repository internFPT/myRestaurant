package poly.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "delivery")
public class Delivery implements Serializable {
	@Id
	@Column(length = 10)
	private String deliveryID;

	private Integer DeliveryTime;
	private Double RestaurantPayment;
	private Double CustomerFees;

	// Use TIMESTAMP for datetime columns
	@Temporal(TemporalType.TIMESTAMP)
	private Date ConfimedOrder;

	@Temporal(TemporalType.TIMESTAMP)
	private Date ReceivedOrder;

	@Temporal(TemporalType.TIMESTAMP)
	private Date ArrivedRestaurant;

	@Temporal(TemporalType.TIMESTAMP)
	private Date tookOrder;

	@Temporal(TemporalType.TIMESTAMP)
	private Date arrivedCustomer;

	@Temporal(TemporalType.TIMESTAMP)
	private Date FinishedOrder;

	@Column(columnDefinition = "TEXT") // Change to TEXT for large text
	private String noteForDriver;

	@ManyToOne
	@JoinColumn(name = "driverID", referencedColumnName = "driverID")
	private Driver driver;

	@OneToOne
	@JoinColumn(name = "orderID", referencedColumnName = "orderID")
	private Order orders;
}
