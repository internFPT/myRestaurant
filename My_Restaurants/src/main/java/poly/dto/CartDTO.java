package poly.dto;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartDTO {
  private String dishID;
//  private String customerID;
  private String name;
  private double price;
  private int quantity;
  private Boolean isEdit=false;
}
