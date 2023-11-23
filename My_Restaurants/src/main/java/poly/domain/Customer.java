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
@Table(name = "customer")
public class Customer implements Serializable {
	@Id
	@Column(length = 10)
	private String customerID;

	@Column(length = 50, columnDefinition = "TEXT") // Change to TEXT for large text
	private String name;

	private Boolean sex;

	@Column(length = 10)
	private String phoneNumber;
	private String email;

	@Column(columnDefinition = "TEXT") // Change to TEXT for large text
	private String address;

	private String img;

	@OneToMany(mappedBy = "customer")
	private List<Cart> carts;

	@OneToMany(mappedBy = "customer")
	private List<Order> orders;

	@OneToOne
	@JoinColumn(name = "username", referencedColumnName = "username")
	private Account account;

	public Customer(String customerID) {
		this.customerID = customerID;
	}
}
