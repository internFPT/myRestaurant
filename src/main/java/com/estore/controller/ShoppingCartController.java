package com.estore.controller;

import java.text.DateFormat;
import java.text.Normalizer.Form;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.estore.bean.MailInfo;
import com.estore.dao.DonHangChiTietDao;
import com.estore.dao.DonHangDao;
import com.estore.dao.KhachHangDao;
import com.estore.entity.DonHang;
import com.estore.entity.DonHangChiTiet;
import com.estore.entity.KhachHang;
import com.estore.entity.SanPham;
import com.estore.service.CartService;
//import com.estore.service.MailService;

@Controller
public class ShoppingCartController {

	@Autowired
	HttpSession session;

	@Autowired
	CartService cart;

	@Autowired
	DonHangDao dao;

	@Autowired
	KhachHangDao khdao;

	@Autowired
	DonHangChiTietDao ddao;

//	@Autowired
//	MailService mailler;

	@ResponseBody
	@RequestMapping("/giohang/capnhap/{id}/{qty}")
	public Object[] update(@PathVariable("id") Integer id, @PathVariable("qty") Integer qty) {
		cart.update(id, qty);
		Object[] info = { cart.getCount(), cart.getAmount() };
		return info;
	}

	@ResponseBody
	@RequestMapping("/giohang/them/{idsp}")
	public Object[] add(@PathVariable("idsp") Integer idsp) {
		cart.add(idsp);
		Object[] info = { cart.getCount(), cart.getAmount() };

		return info;
	}

	@RequestMapping("/home/giohang")
	public String giohang() {
		return "home/giohang";
	}

	@ResponseBody
	@RequestMapping("/giodang/xoagiohang")
	public void xoagiohang() {
		cart.clear();
	}

	@ResponseBody
	@RequestMapping("/giodang/xoagiohangtheoSP/{id}")
	public Object[] remove(@PathVariable("id") Integer id) {
		cart.remove(id);
		Object[] info = { cart.getCount(), cart.getAmount() };

		return info;
	}

	@GetMapping("/dathang/thanhtoan")
	public String showForm(@ModelAttribute("donHang") DonHang donHang) {

		KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");

		Date date = new Date();
		DateFormat dateFormat = null;
		dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		donHang.setNgayDatHang(dateFormat.format(date));

		donHang.setKhachHang(khachHang);
		donHang.setTongTien(cart.getAmount());
		return "order/thanhtoan";
	}

	@PostMapping("/dathang/thanhtoan")
	public String purchase(Model model, @ModelAttribute("donHang") DonHang donHang) throws MessagingException {
		Collection<SanPham> list = cart.getItems();
		List<DonHangChiTiet> details = new ArrayList<>();
		for (SanPham sanPham : list) {
			DonHangChiTiet detail = new DonHangChiTiet();
			detail.setDonHang(donHang);
			detail.setSanPham(sanPham);
			detail.setGiaBan(sanPham.getGiaGoc());
			detail.setSoLuong(sanPham.getSoLuong());
			detail.setKhuyenMai(sanPham.getKhuyenMai());
			detail.setTongTien(cart.getAmount());
			details.add(detail);

		}
		dao.create(donHang, details);
		KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");
		String from = khachHang.getEmail();
		String to = "chuongbui1309@gmail.com";
		String subject = "Thông tin đặt hàng";
		String body = "Khách hàng " + khachHang.getHoTen() + "đã đặt hàng";
		MailInfo mail = new MailInfo(from, to, subject, body);
//		mailler.send(mail);
		cart.clear();
		return "redirect:/dathang/danhsach";
	}

	@GetMapping("/dathang/danhsach")
	public String list(Model model) {
		KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");
		List<DonHang> donhangs = dao.findByUser(khachHang);
		model.addAttribute("donhangs", donhangs);
		return "order/list";
	}

	@GetMapping("/dathang/chitiet/{maDonHang}")
	public String detail(Model model, @PathVariable("maDonHang") Integer maDonHang) {
		DonHang donHang = dao.findById(maDonHang);
		List<DonHangChiTiet> details = ddao.findByOder(donHang);
		model.addAttribute("donHang", donHang);
		model.addAttribute("details", details);

		return "order/chitiet";
	}

	@GetMapping("/dathang/sanphamdamua")
	public String items(Model model) {
		KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");
		List<SanPham> list = dao.findItemsByUser(khachHang);
		model.addAttribute("list", list);
		return "product/list";
	}

}
