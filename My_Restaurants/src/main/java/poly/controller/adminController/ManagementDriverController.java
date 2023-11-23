package poly.controller.adminController;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import poly.domain.DriverRegister;
import poly.service.DriverRegisterService;
@Controller
@RequestMapping("tfive/admin/driver")
public class ManagementDriverController {
	@Autowired
	private DriverRegisterService driverRegisterService;
	
	void fillToTable(ModelMap model) {
		List<DriverRegister> list = driverRegisterService.findAll();
		model.addAttribute("driverRegister", list);
	}
	
	@GetMapping("view")
	public String viewDriver(ModelMap model) {
		fillToTable(model);
		return "restaurantUI/managementDriver";
	}
	
	@GetMapping("delete/{phoneNumber}")
	public ModelAndView delete(ModelMap model, @PathVariable("phoneNumber") String phoneNumber) throws IOException {
		fillToTable(model);
		Optional<DriverRegister> optional=driverRegisterService.findById(phoneNumber);
		
		if (optional.isPresent()) {
			
			driverRegisterService.delete(optional.get());
//			model.addAttribute("mess", "Tài khoản "+optional.get().get()+" đã được xoá");
			
		}else {
			model.addAttribute("mess", "Không tìm thấy tài khoản");
		}
		
		return new ModelAndView(viewDriver(model),model);
	}
}
