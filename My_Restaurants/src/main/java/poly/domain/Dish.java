package poly.domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "dish")
public class Dish implements Serializable {
	@Id
	@Column(length = 10)
	private String dishID;

	@Column(length = 50, columnDefinition = "nvarchar(100)")
	private String name;

	@Column(columnDefinition = "TEXT") // Change to TEXT for large text
	private String description;

	private String img;
	private Double price;
	private Boolean status;

	@ManyToOne
	@JoinColumn(name = "restaurantID", referencedColumnName = "restaurantID")
	private Restaurant restaurant;

	@ManyToOne
	@JoinColumn(name = "categoryID", referencedColumnName = "categoryID")
	private Category category;

	@OneToMany(mappedBy = "dish")
	private List<OrderDetail> orderDetails;

	@OneToMany(mappedBy = "dish")
	private List<Cart> carts;

	public Dish(String dishID) {
		this.dishID = dishID;
	}
}
