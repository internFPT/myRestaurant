package poly.domain;

import java.io.Serializable;


import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "orderDetail")
public class OrderDetail implements Serializable{
	@Id
	@Column(length = 10)
	private String orderDetailID;
	private Integer quantity;
	private Double totalAmount;
	
	@ManyToOne
	@JoinColumn(name = "dishID", referencedColumnName = "dishID")
	private Dish dish ;

	@ManyToOne
	@JoinColumn(name = "orderID", referencedColumnName = "orderID")
	private Order orders;

}
