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
@Table(name = "account")
public class Account implements Serializable{
	@Id
	@Column(length = 20)
	private String username;
	@Column(length = 20)
	private String password;
	@Column(length = 20)
	private String role;
	
	@OneToOne(mappedBy = "account")
    private Restaurant restaurant;
	@OneToOne(mappedBy = "account")
    private Customer customer;
	@OneToOne(mappedBy = "account")
    private Driver driver;
	
	public Account(String username) {
		this.username = username;
	}
	
	
}
