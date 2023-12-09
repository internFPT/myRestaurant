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

import com.estore.dao.DanhMucSanPhamDao;
import com.estore.entity.DanhMucSanPham;

@Controller
public class CategoryManager {
	@Autowired
	DanhMucSanPhamDao dao;

	@Autowired
	ServletContext app;

	@RequestMapping("/admin/category/index")
	public String index(Model model) {
		DanhMucSanPham entity = new DanhMucSanPham();
		model.addAttribute("entity", entity);
		model.addAttribute("list", dao.findAll());

		return "admin/category/index";
	}

	@RequestMapping("/admin/category/edit/{maDanhMuc}")
	public String edit(Model model, @ModelAttribute("maDanhMuc") Integer maDanhMuc) {
		DanhMucSanPham entity = dao.findById(maDanhMuc);
		model.addAttribute("entity", entity);
		model.addAttribute("list", dao.findAll());
		return "admin/category/index";
	}

	@RequestMapping("/admin/category/create")
	public String create(RedirectAttributes model, @ModelAttribute("entity") DanhMucSanPham entity,
			@RequestParam("photo_file") MultipartFile file) throws IllegalStateException, IOException {
		System.out.println(entity.toString());
		if (entity.getMaDanhMuc() == null) {
			model.addAttribute("messageError", "Mã danh mục không được để trống");
			return "redirect:/admin/category/index";
		} else if (entity.getTenDanhMuc() == null || entity.getTenDanhMuc().equals("")) {
			model.addAttribute("messageError", "Tên danh mục không được để trống");
			return "redirect:/admin/category/index";
		}
//		else if (entity.getImgUrl() == null || entity.getImgUrl().equals("")) {
//			model.addAttribute("messageError", "Tên danh mục không được để trống");
//			return "redirect:/admin/category/index";
//		}

		if (file.isEmpty()) {
			entity.setImgUrl("s1.png");
		} else {
			entity.setImgUrl(file.getOriginalFilename());
			String path = app.getRealPath("/assets/user/100004/images/icon/" + entity.getImgUrl());
			file.transferTo(new File(path));
		}
		dao.create(entity);
		model.addAttribute("message", "Thêm mới danh mục thành công");

		return "redirect:/admin/category/index";
	}

	@RequestMapping("/admin/category/update")
	public String update(RedirectAttributes model, @ModelAttribute("entity") DanhMucSanPham entity,
			@RequestParam("photo_file") MultipartFile file) throws IllegalStateException, IOException {
		if (entity.getMaDanhMuc() == null) {
			model.addAttribute("messageError", "Mã danh mục không được để trống");
			return "redirect:/admin/category/edit/" + entity.getMaDanhMuc();
		} else if (entity.getTenDanhMuc() == null || entity.getTenDanhMuc().equals("")) {
			model.addAttribute("messageError", "Tên danh mục không được để trống");
			return "redirect:/admin/category/edit/" + entity.getMaDanhMuc();
		} else if (entity.getImgUrl() == null || entity.getImgUrl().equals("")) {
			model.addAttribute("messageError", "Tên danh mục không được để trống");
			return "redirect:/admin/category/edit/" + entity.getMaDanhMuc();
		}

		if (!file.isEmpty()) {
			entity.setImgUrl(file.getOriginalFilename());
			String path = app.getRealPath("/assets/user/100004/images/icon/" + entity.getImgUrl());
			file.transferTo(new File(path));
		}
		dao.update(entity);
		model.addAttribute("message", "Cập nhập danh mục thành công");

		return "redirect:/admin/category/edit/" + entity.getMaDanhMuc();
	}

	@RequestMapping(value = { "/admin/category/delete", "/admin/category/delete/{maDanhMuc}" })
	public String delete(RedirectAttributes model,
			@RequestParam(value = "maDanhMuc", required = false) Integer maDanhMuc1,
			@PathVariable(value = "maDanhMuc", required = false) Integer maDanhMuc2) {
		if (maDanhMuc1 != null) {
			dao.delete(maDanhMuc1);
		} else {
			dao.delete(maDanhMuc2);
		}
		model.addAttribute("message", "Xóa danh mục thành công");
		return "redirect:/admin/category/index";
	}

}
