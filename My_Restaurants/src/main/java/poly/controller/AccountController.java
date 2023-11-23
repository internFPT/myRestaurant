package poly.controller;

import java.util.List;



import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import poly.domain.Account;
import poly.domain.Customer;
import poly.domain.Order;
import poly.dto.CustomerDTO;
import poly.service.CustomerService;
import poly.service.OrderService;
import poly.service.StorageService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
@RequestMapping("tfive")
public class AccountController {

	@Autowired
	private HttpSession session;

	@Autowired
	private StorageService storageService;

	@Autowired
	private HttpServletRequest request;

	@Autowired
	private CustomerService customerService;

	@Autowired
	private OrderService orderService;

	@GetMapping("my-order")
	public String viewOrder(ModelMap model) {
		List<Order> list=orderService.findByCustomer_CustomerID(model.getAttribute("customerID").toString());
		model.addAttribute("listOrder", list);
		return "customerUI/my-order";
	}

	public void fillCustomerInfo(ModelMap model) {
		try {
			Customer customer = customerService.findByUsername(session.getAttribute("username").toString());
			if (customer.getSex()==null) {
				customer.setSex(true);
			}
			model.addAttribute("customer", customer);
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("mess", e.getMessage());
		}
	}

	@GetMapping("profile")
	public String viewProfile(ModelMap model) {

		fillCustomerInfo(model);

		return "customerUI/profile";
	}


	@PostMapping("profile/saveOrUpdate")
	public ModelAndView save(ModelMap model, @Valid @ModelAttribute("customer") CustomerDTO dto, BindingResult result) {
		if (result.hasErrors()) {
			return new ModelAndView(viewProfile(model));
		}

		Customer entity =new Customer();
		BeanUtils.copyProperties(dto, entity);

		if (!dto.getImageFile().isEmpty()) {
			entity.setImg(storageService.getStoredFileName(dto.getImageFile(), dto.getCustomerID()));
			storageService.store(dto.getImageFile(), entity.getImg());
		}

		Account account=new Account(session.getAttribute("username").toString());
		entity.setAccount(account);

		customerService.save(entity);
		model.addAttribute("mess", "Product is saved");

		return new ModelAndView(viewProfile(model), model);
	}

}
