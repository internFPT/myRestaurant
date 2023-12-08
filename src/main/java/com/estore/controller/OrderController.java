package com.estore.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.estore.entity.DonHang;
import com.estore.entity.KhachHang;
import com.estore.service.CartService;

public class OrderController {
	/*
	 * @Autowired HttpSession session;
	 * 
	 * @Autowired CartService cart;
	 * 
	 * @GetMapping("/dathang/thanhtoan") public String
	 * showForm(@ModelAttribute("donHang") DonHang donHang) {
	 * 
	 * KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");
	 * donHang.setNgayDatHang(new Date()); donHang.setKhachHang(khachHang);
	 * donHang.setTongTien(cart.getAmount()); return "order/thanhtoan"; }
	 * 
	 * @PostMapping("/dathang/thanhtoan") public String purchase(Model
	 * model, @ModelAttribute("donHang") DonHang donHang) { return
	 * "order/thanhtoan"; }
	 */
}
