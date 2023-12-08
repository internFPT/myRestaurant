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


import com.estore.dao.SanPhamDao;
import com.estore.entity.SanPham;

@Controller
public class ProductMannager {
	@Autowired
	SanPhamDao dao;
	
	@Autowired
	ServletContext app;

	@RequestMapping("/admin/product/index")
	public String index(Model model) {
		SanPham entity = new SanPham();
		model.addAttribute("entity", entity);
		model.addAttribute("list", dao.findAll());

		return "admin/product/index";
	}

	@RequestMapping("/admin/product/edit/{maSanPham}")
	public String edit(Model model, @ModelAttribute("maSanPham") Integer maSanPham ) {
		SanPham entity = dao.findById(maSanPham);
		model.addAttribute("entity", entity);
		model.addAttribute("list", dao.findAll());
		return "admin/product/index";
	}

	@RequestMapping("/admin/product/create")
	public String create(RedirectAttributes model, 
			@ModelAttribute("entity") SanPham entity,
			@RequestParam("photo_file") MultipartFile file ) throws IllegalStateException, IOException {
		
		if (file.isEmpty()) {
			entity.setImgUrl("coi-so-diep-1_master.jpg");
		}else {
			entity.setImgUrl(file.getOriginalFilename());
			String path = app.getRealPath("/assets/user/100004/images/product/" + entity.getImgUrl());
			file.transferTo(new File(path));
		}
		dao.create(entity);
		model.addAttribute("message", "Thêm mới sản phẩm thành công");

		return "redirect:/admin/product/index";
	}

	@RequestMapping("/admin/product/update")
	public String update(RedirectAttributes model,
			@ModelAttribute("entity") SanPham entity, 
			@RequestParam("photo_file") MultipartFile file ) throws IllegalStateException, IOException {
				if (!file.isEmpty()) {
					entity.setImgUrl(file.getOriginalFilename());
					String path = app.getRealPath("/assets/user/100004/images/product/" + entity.getImgUrl());
					file.transferTo(new File(path));
				}
		dao.update(entity);
		model.addAttribute("message", "Cập nhập sản phẩm thành công");

		return "redirect:/admin/product/edit/" + entity.getMaSanPham();
	}

	@RequestMapping(value = { "/admin/product/delete", "/admin/product/delete/{maSanPham}" })
	public String delete(RedirectAttributes model,
			@RequestParam(value = "maSanPham", required = false) Integer maSanPham1,
			@PathVariable(value = "maSanPham", required = false) Integer maSanPham2) {
		if (maSanPham1 != null) {
			dao.delete(maSanPham1);
		} else {
			dao.delete(maSanPham2);
		}
		model.addAttribute("message", "Xóa sản phẩm thành công");
		return "redirect:/admin/product/index";
	}
	
	
}
