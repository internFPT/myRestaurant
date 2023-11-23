package poly.controller.adminController;



import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("tfive/admin/customer")
public class ManagementCustomerController {
	
	@GetMapping("view")
	public String viewCustomer(ModelMap model) {
		
		return "restaurantUI/managementCustomer";
	}
}
