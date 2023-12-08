package com.estore.admin.controller;



import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.estore.dao.DonHangChiTietDao;
import com.estore.entity.DonHangChiTiet;

@Controller
public class OrderDetailMannager {
	@Autowired
	DonHangChiTietDao dao;
	
	@Autowired
	ServletContext app;

	@RequestMapping("/admin/order_detail/index")
	public String index(Model model) {
		DonHangChiTiet entity = new DonHangChiTiet();
		model.addAttribute("entity", entity);
		model.addAttribute("list", dao.findAll());

		return "admin/order_detail/index";
	}

	@RequestMapping(value = { "/admin/order_detail/delete", "/admin/order_detail/delete/{maDonHangChiTiet}" })
	public String delete(RedirectAttributes model,
			@RequestParam(value = "maDonHangChiTiet", required = false) Integer maDonHangChiTiet1,
			@PathVariable(value = "maDonHangChiTiet", required = false) Integer maDonHangChiTiet2) {
		if (maDonHangChiTiet1 != null) {
			dao.delete(maDonHangChiTiet1);
		} else {
			dao.delete(maDonHangChiTiet2);
		}
		model.addAttribute("message", "Xóa danh mục thành công");
		return "redirect:/admin/order_detail/index";
	}
	
	
}
