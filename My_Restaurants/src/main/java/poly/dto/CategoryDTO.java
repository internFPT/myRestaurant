package poly.dto;

import java.io.Serializable;




import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CategoryDTO implements Serializable{
	private String categoryID;
	private String restaurantID;
	private String name;
	private Boolean isEdit = false;

}
