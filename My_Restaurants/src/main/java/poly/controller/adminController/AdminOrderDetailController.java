package poly.controller.adminController;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("tfive/admin")
public class AdminOrderDetailController {
	
	@GetMapping("order-detail")
	public String viewOrderDetail(ModelMap model) {
		
		return "restaurantUI/order-detail";
	}
}
