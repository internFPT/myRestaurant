package com.estore.admin.controller;



import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.estore.dao.DonHangChiTietDao;
import com.estore.dao.DonHangDao;
import com.estore.entity.DanhMucSanPham;
import com.estore.entity.DonHang;
import com.estore.entity.DonHangChiTiet;

@Controller
public class OrderMannager {
	@Autowired
	DonHangDao dao;
	
	@Autowired
	DonHangChiTietDao ddao;
	
	@Autowired
	ServletContext app;

	@RequestMapping("/admin/order/index")
	public String index(Model model) {
		DonHang entity = new DonHang();
		model.addAttribute("entity", entity);
		model.addAttribute("details", ddao.findByOder(entity));
		model.addAttribute("list", dao.findAll());

		return "admin/order/index";
	}
	
	@RequestMapping("/admin/order/edit/{maDonHang}")
	public String edit(Model model, @ModelAttribute("maDonHang") Integer maDonHang) {
		DonHang entity = dao.findById(maDonHang);
		model.addAttribute("entity", entity);
		model.addAttribute("details", ddao.findByOder(entity));
		model.addAttribute("list", dao.findAll());
		return "admin/order/index";
	}

	@RequestMapping(value = { "/admin/order/delete", "/admin/order/delete/{maDonHang}" })
	public String delete(RedirectAttributes model,
			@RequestParam(value = "maDonHang", required = false) Integer maDonHang1,
			@PathVariable(value = "maDonHang", required = false) Integer maDonHang2) {
		if (maDonHang1 != null) {
			dao.delete(maDonHang1);
		} else {
			dao.delete(maDonHang2);
		}
		model.addAttribute("message", "Xóa đơn hàng thành công");
		return "redirect:/admin/order/index";
	}
	
	
}
