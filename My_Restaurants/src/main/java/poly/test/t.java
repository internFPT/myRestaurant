package poly.test;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("test")
public class t {
	@GetMapping()
	public String viewIndex(ModelMap model) {
		
		return "customerUI/my-account";
	}
}