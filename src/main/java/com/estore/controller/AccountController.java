package com.estore.controller;

import com.estore.dao.KhachHangDao;
import com.estore.dao.SanPhamDao;
import com.estore.entity.KhachHang;
import com.estore.entity.SanPham;
import com.estore.service.CookieService;
import com.estore.util.hashPass;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import javax.mail.MessagingException;
import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
//import com.estore.service.MailService;

@Controller
public class AccountController {

	@Autowired
	KhachHangDao dao;

	@Autowired
	HttpSession session;

	@Autowired
	CookieService cookie;

	@Autowired
	ServletContext app;


//	@Autowired
//	MailService mailer;

	@Autowired
	HttpServletRequest request;

	@Autowired
	SanPhamDao pdao;

	@GetMapping("/taikhoan/dangnhap")
	public String login(Model model) {
		Cookie ckid = cookie.read("makhachHang");
		Cookie ckpw = cookie.read("matKhau");
		if (ckid != null) {
			String usd = ckid.getValue();
			String pwd = ckpw.getValue();

			model.addAttribute("usd", usd);
			model.addAttribute("pwd", pwd);
		}

		return "home/dangnhap";
	}

	@PostMapping("/taikhoan/dangnhap")
	public String login(Model model, @RequestParam("id") String id, @RequestParam("pw") String pw,
			@RequestParam(value = "rm", defaultValue = "false") boolean rm) {

		KhachHang khachHang = dao.findById(id);
		if (khachHang == null) {
			model.addAttribute("message", "Thông tin tài khoản không được chính xác. Vui lòng nhập lại.");
			return "home/dangnhap";
		}
		if (khachHang.getMaKhachHang() == null || khachHang.getMaKhachHang().trim().isEmpty()) {
			model.addAttribute("message", "Tài khoản không được để trống. Vui lòng nhập lại.");
			return "home/dangnhap";
		} else if (khachHang.getMaKhachHang().length() > 20) {
			model.addAttribute("message", "Tài khoản không được nhập quá 20 kí tự. Vui lòng nhập lại.");
			return "home/dangnhap";
		} else if (khachHang.getMatKhau() == null || khachHang.getMatKhau().trim().isEmpty()) {
			model.addAttribute("message", "Mật khẩu không được để trống. Vui lòng nhập lại.");
			return "home/dangnhap";


		}
		 else if(khachHang != null && hashPass.isPasswordValid(pw, khachHang.getMatKhau())) {

			// model.addAttribute("message", "Đăng nhập thành công :)");
			session.setAttribute("khachHang", khachHang);
			session.setAttribute("MaKhachHangSS", khachHang.getMaKhachHang());
			session.setAttribute("ImgUrlSS", khachHang.getImgUrl());

			// ghi nhớ tài khoản bằng cookie
			if (rm == true) {
				cookie.create("makhachHang", khachHang.getMaKhachHang(), 30);
				cookie.create("matKhau", khachHang.getMatKhau(), 30);
			} else {
				cookie.delete("makhachHang");
				cookie.delete("matKhau");
			}
		}

		// Quay lại trang được bảo vệ nếu có
		String backUrl = (String) session.getAttribute("back-url");
		if (backUrl != null) {
			return "redirect:" + backUrl;
		}

		// get All sản phẩm
		List<SanPham> sanphamAll = pdao.findAll();
		model.addAttribute("sanphamAll", sanphamAll);

		return "redirect:/home/index";
	}

	@RequestMapping("/taikhoan/dangxuat")
	public String logout(Model model) {
		session.removeAttribute("khachHang");

		return "redirect:/home/index";
	}

	@GetMapping("/taikhoan/dangky")
	public String register(Model model) {
		model.addAttribute("form", new KhachHang());

		return "home/dangky";
	}

	@PostMapping("/taikhoan/dangky")
	public String register(Model model, @ModelAttribute("form") KhachHang khachHang,
			@RequestParam("photo_file") MultipartFile file)
			throws IllegalStateException, IOException, MessagingException {
		System.out.println(khachHang);
		if (khachHang.getMaKhachHang() == null || khachHang.getMaKhachHang().trim().isEmpty()) {
			model.addAttribute("message", "Tài khoản không được để trống. Vui lòng nhập lại.");
			return "home/dangky";

		} else if (khachHang.getMaKhachHang().length() > 20) {
			model.addAttribute("message", "Tài khoản không được nhập quá 20 kí tự. Vui lòng nhập lại.");
			return "home/dangky";
		}
		if (khachHang.getMatKhau() == null || khachHang.getMatKhau().trim().isEmpty()) {
			model.addAttribute("message", "Mật khẩu không được để trống. Vui lòng nhập lại.");
			return "home/dangky";

		} else if (khachHang.getMatKhau().length() > 10) {
			model.addAttribute("message", "Mật khẩu không được nhập quá 10 kí tự. Vui lòng nhập lại.");
			return "home/dangky";
		}
		if (khachHang.getHoTen() == null || khachHang.getHoTen().trim().isEmpty()) {
			model.addAttribute("message", "Họ tên không được để trống. Vui lòng nhập lại.");
			return "home/dangky";
		} else if (khachHang.getHoTen().length() > 30) {
			model.addAttribute("message", "Họ tên không được nhập quá 30 kí tự. Vui lòng nhập lại.");
			return "home/dangky";
		}
		if (khachHang.getEmail() == null || khachHang.getEmail().trim().isEmpty()) {
			model.addAttribute("message", "Email không được để trống. Vui lòng nhập lại.");
			return "home/dangky";
		}
		if (khachHang.getSoDt() == null || khachHang.getSoDt().trim().isEmpty()) {
			model.addAttribute("message", "Số điện thoại không được để trống. Vui lòng nhập lại.");
			return "home/dangky";
		} else if (khachHang.getSoDt().length() > 12) {
			model.addAttribute("message", "Số điện thoại không được nhập quá 12 kí tự. Vui lòng nhập lại.");
			return "home/dangky";
		}
		if (khachHang.getDiaChi() == null || khachHang.getDiaChi().trim().isEmpty()) {
			model.addAttribute("message", "Địa chỉ không được để trống. Vui lòng nhập lại.");
			return "home/dangky";
		}

		if (file.isEmpty()) {
			khachHang.setImgUrl("user.png");

		} else {
			String dir = app.getRealPath("/assets/user/100004/images/custormers");
			File f = new File(dir, file.getOriginalFilename());
			file.transferTo(f);
			khachHang.setImgUrl(f.getName());
		}
		String hashedPassword = DigestUtils.sha256Hex(khachHang.getMatKhau());
		khachHang.setMatKhau(hashedPassword);
		khachHang.setChungThuc(false);

		dao.create(khachHang);
		model.addAttribute("message", "Ok");

		String from = "chuongbui1309@gmail.com";
		String to = khachHang.getEmail();
		String subject = "Xin chào";
		String url = request.getRequestURL().toString().replace("dangky", "chungthuc/" + khachHang.getMaKhachHang());
		String body = "Nhấn vào đây  <a href='" + url + "'>Chứng thực tài khoản</a>";

//		MailInfo mail = new MailInfo(from, to, subject, body);
//		mailer.send(mail);
		return "home/dangky";
	}

	@GetMapping("/taikhoan/chungthuc/{maKhachHang}")
	public String activate(Model model, @PathVariable("maKhachHang") String maKhachHang) {
		KhachHang khachHang = dao.findById(maKhachHang);
		khachHang.setChungThuc(true);
		dao.update(khachHang);
		model.addAttribute("form", new KhachHang());

		return "redirect:/taikhoan/dangnhap";
	}

	@GetMapping("/taikhoan/quenmatkhau")
	public String registes(Model model) {

		return "home/quenmatkhau";
	}

	@PostMapping("/taikhoan/quenmatkhau")
	public String registes(Model model, @RequestParam("maKhachHang") String maKhachHang,
			@RequestParam("email") String email) throws MessagingException {
		KhachHang khachHang = dao.findById(maKhachHang);
		if (khachHang == null) {
			model.addAttribute("message", "Tài khoản chưa được đăng ký. Vui lòng nhập lại!");
			return "home/quenmatkhau";
		} else if (khachHang.getMaKhachHang() == null || khachHang.getMaKhachHang().trim().isEmpty()) {
			model.addAttribute("message", "Tài khoản không được để trống. Vui lòng nhập lại!");
			return "home/quenmatkhau";

		} else if (khachHang.getEmail() == null || khachHang.getEmail().trim().isEmpty()) {
			model.addAttribute("message", "Email không được để trống. Vui lòng nhập lại!");
			return "home/quenmatkhau";

		} else if (!email.equals(khachHang.getEmail())) {
			model.addAttribute("message", "Email được nhâp và email đăng ký không giống nhau. Vui lòng nhập lại!");
			return "home/quenmatkhau";
		}

		String from = "chuongbui1309@gmail.com";
		String to = khachHang.getEmail();
		String subject = "Lấy lại mật khẩu";
		String body = "Mật khẩu của bạn là " + khachHang.getMatKhau();

//		MailInfo mail = new MailInfo(from, to, subject, body);
//		mailer.send(mail);
		model.addAttribute("messageAll", "Mật khẩu đã được gửi đến email của bạn. Vui lòng kiểm tra email của bạn!");

		return "home/quenmatkhau";
	}

	@GetMapping("/taikhoan/doimatkhau")
	public String change(Model model) {

		return "home/doimatkhau";
	}

	@PostMapping("/taikhoan/doimatkhau")
	public String change(Model model, @RequestParam("maKhachHang") String maKhachHang, @RequestParam("pw") String pw,
			@RequestParam("pw1") String pw1, @RequestParam("pw2") String pw2) {
		if (pw1 == null || pw1.trim().isEmpty()) {
			model.addAttribute("message", "Mật khẩu mới chưa được nhập. Vui lòng nhập lại!");

		} else if (pw1.length() > 10) {
			model.addAttribute("message", "Mật khẩu không được nhập quá 10 kí tự. Vui lòng nhập lại.");
			return "home/dangky";
		}
		if (pw2 == null || pw2.trim().isEmpty()) {
			model.addAttribute("message", "Mật khẩu xác nhận chưa được nhập. Vui lòng nhập lại!");
		}
		if (!pw1.equals(pw2)) {
			model.addAttribute("message", "Mật khẩu mới và mật khẩu xác nhận đang không khớp. Vui lòng nhập lại!");
		} else {

			KhachHang khachHang = dao.findById(maKhachHang);
			if (khachHang == null) {
				model.addAttribute("message", "Khách hàng chưa được đăng ký. Vui lòng nhập lại!");

			} else if (!pw.equals(khachHang.getMatKhau())) {
				model.addAttribute("message", "Mật khẩu đăng ký không giống nhau. Vui lòng nhập lại!");
			} else {
				String hashedPassword = DigestUtils.sha256Hex(pw1);
				khachHang.setMatKhau(hashedPassword);
				dao.update(khachHang);
				model.addAttribute("message", "Mật khẩu đã được đổi thành công.");

			}
		}

		return "redirect:/taikhoan/dangnhap";
	}

	@GetMapping("/taikhoan/suathongtin")
	public String edit(Model model) {
		KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");
		model.addAttribute("form", khachHang);

		return "home/suathongtin";
	}

	@PostMapping("/taikhoan/suathongtin")
	public String edit(Model model, @ModelAttribute("form") KhachHang khachHang,
			@RequestParam("photo_file") MultipartFile file) throws IllegalStateException, IOException {

		if (khachHang.getMaKhachHang() == null || khachHang.getMaKhachHang().trim().isEmpty()) {
			model.addAttribute("message", "Tài khoản không được để trống. Vui lòng nhập lại.");
			return "home/dangky";

		} else if (khachHang.getMaKhachHang().length() > 20) {
			model.addAttribute("message", "Tài khoản không được nhập quá 20 kí tự. Vui lòng nhập lại.");
			return "home/dangky";
		}
		if (khachHang.getMatKhau() == null || khachHang.getMatKhau().trim().isEmpty()) {
			model.addAttribute("message", "Mật khẩu không được để trống. Vui lòng nhập lại.");
			return "home/dangky";

		} else if (khachHang.getMatKhau().length() > 10) {
			model.addAttribute("message", "Mật khẩu không được nhập quá 10 kí tự. Vui lòng nhập lại.");
			return "home/dangky";
		}
		if (khachHang.getHoTen() == null || khachHang.getHoTen().trim().isEmpty()) {
			model.addAttribute("message", "Họ tên không được để trống. Vui lòng nhập lại.");
			return "home/dangky";
		} else if (khachHang.getHoTen().length() > 30) {
			model.addAttribute("message", "Họ tên không được nhập quá 30 kí tự. Vui lòng nhập lại.");
			return "home/dangky";
		}
		if (khachHang.getEmail() == null || khachHang.getEmail().trim().isEmpty()) {
			model.addAttribute("message", "Email không được để trống. Vui lòng nhập lại.");
			return "home/dangky";
		}
		if (khachHang.getSoDt() == null || khachHang.getSoDt().trim().isEmpty()) {
			model.addAttribute("message", "Số điện thoại không được để trống. Vui lòng nhập lại.");
			return "home/dangky";
		} else if (khachHang.getSoDt().length() > 12) {
			model.addAttribute("message", "Số điện thoại không được nhập quá 12 kí tự. Vui lòng nhập lại.");
			return "home/dangky";
		}
		if (khachHang.getDiaChi() == null || khachHang.getDiaChi().trim().isEmpty()) {
			model.addAttribute("message", "Địa chỉ không được để trống. Vui lòng nhập lại.");
			return "home/dangky";
		}
		if (!file.isEmpty()) {
			String dir = app.getRealPath("/assets/user/100004/images/custormers");
			File f = new File(dir, file.getOriginalFilename());
			file.transferTo(f);
			khachHang.setImgUrl(f.getName());
		}

		dao.update(khachHang);
		session.setAttribute("khachHang", khachHang);
		model.addAttribute("message", "Bạn đã cập nhập thông tin thành công.");

		return "home/suathongtin";
	}



}
