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
@Table(name = "restaurant")
public class Restaurant implements Serializable {
	@Id
	@Column(length = 10)
	private String restaurantID;

	@Column(columnDefinition = "TEXT") // Change to TEXT for large text
	private String address;

	@Column(length = 10)
	private String phoneNumber;

	private String email;
	private String img;

	@OneToMany(mappedBy = "restaurant")
	private List<Dish> dishes;

	@OneToMany(mappedBy = "restaurant")
	private List<Voucher> vouchers;

	@OneToMany(mappedBy = "restaurant")
	private List<Order> orders;

	@OneToMany(mappedBy = "restaurant")
	private List<Category> categories;

	@OneToOne
	@JoinColumn(name = "username", referencedColumnName = "username")
	private Account account;

	public Restaurant(String restaurantID) {
		this.restaurantID = restaurantID;
	}
}
