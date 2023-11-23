package poly.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("tfive")
public class OrtherController {

	@Autowired
	private HttpSession session;
	
	@Autowired
	private HttpServletRequest request;
	
	
	@GetMapping("blog")
	public String viewBlog(ModelMap model) {
		
		return "customerUI/blog";
	}
	
	@GetMapping("about")
	public String viewAbout(ModelMap model) {
		
		return "customerUI/about";
	}
	
	@GetMapping("contact")
	public String viewContact(ModelMap model) {
		
		return "customerUI/contact";
	}
	
	@GetMapping("privacy-policy")
	public String viewPrivacypolicy(ModelMap model) {
		
		return "customerUI/privacy-policy";
	}
	
	@GetMapping("error-page")
	public String viewError(ModelMap model) {
		return "customerUI/404";
	}
	
	@GetMapping("faq")
	public String viewFaq(ModelMap model) {
		return "customerUI/faq";
	}
	
}
