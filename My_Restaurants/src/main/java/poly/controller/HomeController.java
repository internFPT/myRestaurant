package poly.controller;

import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.controller.adminController.ManagementCategoryController;
import poly.domain.Dish;
import poly.service.DishService;
@Controller
@RequestMapping("tfive")
public class HomeController {
	@Autowired
	private ManagementCategoryController managementCategoriesController;
	
	@Autowired
	private HttpSession session;

	@Autowired
	private DishService dishService;

	public void fillAllProduct(ModelMap model) {
		List<Dish> list = dishService.findAll();
		model.addAttribute("products", list);
	}
	
	@GetMapping("")
	public String viewHome(ModelMap model) {		
		fillAllProduct(model);
		managementCategoriesController.fillToTable(model);
		System.out.println("Role: " + session.getAttribute("role"));
		System.out.println("username: " + session.getAttribute("username"));
		return "customerUI/index";
	}
	
}
