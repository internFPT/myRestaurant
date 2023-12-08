package com.estore.admin.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.estore.dao.KhachHangDao;
import com.estore.entity.KhachHang;

@Controller
public class CustomerMannager {
	@Autowired
	KhachHangDao dao;
	
	@Autowired
	ServletContext app;

	@RequestMapping("/admin/customer/index")
	public String index(Model model) {
		KhachHang entity = new KhachHang();
		model.addAttribute("entity", entity);
		model.addAttribute("list", dao.findAll());

		return "admin/customer/index";
	}

	@RequestMapping("/admin/customer/edit/{maKhachHang}")
	public String edit(Model model, @ModelAttribute("maKhachHang") String maKhachHang ) {
		KhachHang entity = dao.findById(maKhachHang);
		model.addAttribute("entity", entity);
		model.addAttribute("list", dao.findAll());
		return "admin/customer/index";
	}

	@RequestMapping("/admin/customer/create")
	public String create(RedirectAttributes model, 
			@ModelAttribute("entity") KhachHang entity,
			@RequestParam("photo_file") MultipartFile file ) throws IllegalStateException, IOException {
		if (file.isEmpty()) {
			entity.setImgUrl("avatar.png");
		}else {
			entity.setImgUrl(file.getOriginalFilename());
			String path = app.getRealPath("/assets/user/100004/images/custormers/" + entity.getImgUrl());
			file.transferTo(new File(path));
		}
		dao.create(entity);
		model.addAttribute("message", "Thêm mới khách hàng thành công");

		return "redirect:/admin/customer/index";
	}

	@RequestMapping("/admin/customer/update")
	public String update(RedirectAttributes model,
			@ModelAttribute("entity") KhachHang entity, 
			@RequestParam("photo_file") MultipartFile file ) throws IllegalStateException, IOException {
				if (!file.isEmpty()) {
					entity.setImgUrl(file.getOriginalFilename());
					String path = app.getRealPath("/assets/user/100004/images/custormers/" + entity.getImgUrl());
					file.transferTo(new File(path));
				}
		dao.update(entity);
		model.addAttribute("message", "Cập nhập khách hàng thành công");

		return "redirect:/admin/customer/edit/" + entity.getMaKhachHang();
	}

	@RequestMapping(value = { "/admin/customer/delete", "/admin/customer/delete/{maKhachHang}" })
	public String delete(RedirectAttributes model,
			@RequestParam(value = "maKhachHang", required = false) String maKhachHang1,
			@PathVariable(value = "maKhachHang", required = false) String maKhachHang2) {
		if (maKhachHang1 != null) {
			dao.delete(maKhachHang1);
		} else {
			dao.delete(maKhachHang2);
		}
		model.addAttribute("message", "Xóa khách hàng thành công");
		return "redirect:/admin/customer/index";
	}
	
	
}
