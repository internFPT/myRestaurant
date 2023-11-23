package poly.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.controller.adminController.ManagementCategoryController;
@Controller
@RequestMapping("tfive")
public class MenuController {
	@Autowired
	private ManagementCategoryController managementCategoriesController;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private HttpServletRequest request;
	
	
	@GetMapping("menu")
	public String viewMenu(ModelMap model) {
		
		managementCategoriesController.fillToTable(model);
		
		return "customerUI/menu";
	}
	
}
