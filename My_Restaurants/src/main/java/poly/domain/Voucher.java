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
@Table(name = "voucher")
public class Voucher implements Serializable {
	@Id
	@Column(length = 10)
	private String voucherID;

	@Column(columnDefinition = "bit")
	private Boolean voucherType;

	@Column(columnDefinition = "TEXT") // Change to TEXT for large text
	private String description;

	private String img;

	@Column(columnDefinition = "bit")
	private Boolean isShare;

	@Column(columnDefinition = "float(53)")
	private Double minimumPrice;

	@Column(columnDefinition = "float(53)")
	private Double reducedPrice;

	@ManyToOne
	@JoinColumn(name = "restaurantID", referencedColumnName = "restaurantID")
	private Restaurant restaurant;

	@OneToMany(mappedBy = "voucher")
	private List<Order> orders;

	public Voucher(String voucherID) {
		this.voucherID = voucherID;
	}
}
