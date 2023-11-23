package poly.controller.driverController;



import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("tfive/driver")
public class HomeDriverController {
	
	@GetMapping("home")
	public String viewHome(ModelMap model) {
		
		return "driverUI/index";
	}
	
}
