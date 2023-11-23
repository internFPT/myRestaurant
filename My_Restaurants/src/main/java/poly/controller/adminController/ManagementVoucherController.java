package poly.controller.adminController;

import poly.domain.Voucher;
import poly.dto.VoucherDTO;
import poly.service.VoucherService;
import poly.utils.RamdomID;
import poly.utils.RedirectHelper;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/tfive/admin/voucher")
public class ManagementVoucherController {

	@Autowired
	private VoucherService voucherService;

	@Autowired
    private RedirectHelper redirectHelper;

	void fillToTable(ModelMap model) {
		List<Voucher> list = voucherService.findAll();
		model.addAttribute("vouchers", list);
	}
	
	@GetMapping("view")
	public String viewForm(ModelMap model) {
		fillToTable(model);
		
		VoucherDTO voucherDTO=new VoucherDTO();
		voucherDTO.setVoucherID("V-"+RamdomID.generateRandomId());
		model.addAttribute("voucher", voucherDTO);
	    return "restaurantUI/managementVoucher";
	}

	@PostMapping("saveOrUpdate")
	public ModelAndView save(ModelMap model, @Valid @ModelAttribute("voucher") VoucherDTO dto, BindingResult result) {
		if (result.hasErrors()) {
			return new ModelAndView("restaurantUI/managementVoucher");
		}

		if (voucherService.existsById(dto.getVoucherID()) && dto.getIsEdit() == false) {
			model.addAttribute("mess", "ID này đã tồn tại. Vui lòng chọn một ID khác.");
			return new ModelAndView(viewForm(model), model);
		}

		Voucher entity = new Voucher();
		BeanUtils.copyProperties(dto, entity);
		dto.setIsEdit(false);
		voucherService.save(entity);
		if (dto.getIsEdit()) {
			model.addAttribute("mess", "Voucher is saved");
		} else {
			model.addAttribute("mess", "Voucher is update");
		}

		return redirectHelper.redirectTo("/tfive/admin/voucher/view");
	}

	@GetMapping("delete/{voucherID}")
	public ModelAndView delete(ModelMap model, @PathVariable("voucherID") String voucherID) {
		voucherService.deleteById(voucherID);
		model.addAttribute("mess", "Category id delete");
		return redirectHelper.redirectTo("/tfive/admin/voucher/view");
	}

	@GetMapping("edit/{voucherID}")
	public ModelAndView edit(ModelMap model, @PathVariable("voucherID") String voucherID) {
		fillToTable(model);
		Optional<Voucher> opt = voucherService.findById(voucherID);
		VoucherDTO dto = new VoucherDTO();

		if (opt.isPresent()) {
			Voucher entity = opt.get();
			BeanUtils.copyProperties(entity, dto);
			dto.setIsEdit(true);
			model.addAttribute("voucher", dto);

			return new ModelAndView("restaurantUI/managementVoucher", model);
		}
		model.addAttribute("mess", "Category is not existed");

		return redirectHelper.redirectTo("/tfive/admin/voucher/view");
	}
}
