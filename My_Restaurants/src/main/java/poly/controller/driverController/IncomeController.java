package poly.controller.driverController;



import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("tfive/driver")
public class IncomeController {
	
	@GetMapping("income")
	public String viewhistoryOrder(ModelMap model) {
		
		return "driverUI/income";
	}
	
}
