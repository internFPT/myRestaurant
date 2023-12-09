package com.estore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.estore.dao.AnhBiaDao;
import com.estore.dao.SanPhamDao;
import com.estore.entity.AnhBia;
import com.estore.entity.SanPham;

@Controller
public class HomeController {
	@Autowired
	SanPhamDao pdao;

	@Autowired
	AnhBiaDao abdao;

	@RequestMapping("/home/index")
	public String index(Model model) {
		List<SanPham> sanphamAll = pdao.findAll();
		model.addAttribute("sanphamAll", sanphamAll);

		List<AnhBia> anhbiaAll = abdao.findAll();
		model.addAttribute("anhbiaAll", anhbiaAll);

		return "home/index";
	}

	@RequestMapping("/home/gioithieu")
	public String gioithieu() {
		return "home/gioithieu";
	}

	@RequestMapping("/home/sanpham")
	public String sanpham(Model model) {

		// get all san pham
		List<SanPham> sanphamAll = pdao.findAll();
		model.addAttribute("sanphamAll", sanphamAll);

		return "home/sanpham";
	}
	@RequestMapping("/home/sanphamtangdan")
	public String sanphamtangdan(Model model) {

		List<SanPham> sanphamAll = pdao.findByGiaTangDan();
		model.addAttribute("sanphamAll", sanphamAll);

		return "home/sanpham";
	}
	@RequestMapping("/home/sanphamgiamdan")
	public String sanphamgiamdan(Model model) {

		List<SanPham> sanphamAll = pdao.findByGiaGiamDan();
		model.addAttribute("sanphamAll", sanphamAll);

		return "home/sanpham";
	}
	@RequestMapping("/home/sanphamAZ")
	public String sanphamAZ(Model model) {

		List<SanPham> sanphamAll = pdao.findByTenAZ();
		model.addAttribute("sanphamAll", sanphamAll);

		return "home/sanpham";
	}
	@RequestMapping("/home/sanphamZA")
	public String sanphamZA(Model model) {

		List<SanPham> sanphamAll = pdao.findByTenZA();
		model.addAttribute("sanphamAll", sanphamAll);

		return "home/sanpham";
	}

	@RequestMapping("/home/tintuc")
	public String tintuc() {
		return "home/tintuc";
	}

	@RequestMapping("/home/lienhe")
	public String lienhe() {
		return "home/lienhe";
	}

	@RequestMapping("/home/dangnhap")
	public String dangnhap() {
		return "home/dangnhap";
	}

	@RequestMapping("/home/dangky")
	public String dangky() {
		return "home/dangky";
	}

}
