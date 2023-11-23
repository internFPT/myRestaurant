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
public class WishListController {

	@Autowired
	private HttpSession session;
	
	@Autowired
	private HttpServletRequest request;
	
	
	@GetMapping("wish-list")
	public String viewWishList(ModelMap model) {
		
		return "customerUI/wishlist";
	}
	
}