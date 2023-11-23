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
@Table(name = "driverRegisterForm")
public class DriverRegister implements Serializable{
	@Id
	@Column(length = 10)
	private String phoneNumber;
	@Column(columnDefinition = "nvarchar(100)")
	private String name;
	private String email;
	@Column(length = 12)
	private String identificationCard;
}
