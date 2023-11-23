package poly.controller.adminController;



import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("tfive/admin/order")
public class ManagementOrderController {
	
	@GetMapping("view")
	public String viewOrder(ModelMap model) {
		
		return "restaurantUI/managementOrder";
	}
}
