package poly.dto;

import java.io.Serializable;




import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LoginDTO implements Serializable{
	private String username;
	private String password;
	private String role;
}
