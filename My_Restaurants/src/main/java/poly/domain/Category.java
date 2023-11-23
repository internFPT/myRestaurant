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
@Table(name = "category")
public class Category implements Serializable{
	@Id
	@Column(length = 10)
	private String categoryID;
	@Column(columnDefinition = "nvarchar(100)")
	private String name;
	
	@OneToMany(mappedBy = "category")
    private List<Dish> dishes;
	
	@ManyToOne
	@JoinColumn(name = "restaurantID", referencedColumnName = "restaurantID")
	private Restaurant restaurant;
}
