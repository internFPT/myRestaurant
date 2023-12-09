package com.estore.admin.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.estore.dao.UsersDao;
import com.estore.entity.Users;
import com.estore.service.CookieService;

@Controller
public class AdminHomController {
	@Autowired
	UsersDao dao;

	@Autowired
	ServletContext app;

	@Autowired
	CookieService cookie;

	@Autowired
	HttpSession session;

	@RequestMapping("/admin/user/index")
	public String index(Model model) {
		Users entity = new Users();
		model.addAttribute("entity", entity);
		model.addAttribute("list", dao.findAll());

		return "admin/user/index";
	}

	@RequestMapping("/admin/user/edit/{taiKhoan}")
	public String edit(Model model, @ModelAttribute("taiKhoan") String taiKhoan) {
		Users entity = dao.findById(taiKhoan);
		model.addAttribute("entity", entity);
		model.addAttribute("list", dao.findAll());
		return "admin/user/index";
	}

	@RequestMapping("/admin/user/create")
	public String create(RedirectAttributes model, @ModelAttribute("entity") Users entity) {

		dao.create(entity);
		model.addAttribute("message", "Thêm mới danh mục thành công");

		return "redirect:/admin/user/index";
	}

	@RequestMapping("/admin/user/update")
	public String update(RedirectAttributes model, @ModelAttribute("entity") Users entity) {
		dao.update(entity);
		model.addAttribute("message", "Cập nhập danh mục thành công");

		return "redirect:/admin/user/edit/" + entity.getTaiKhoan();
	}

	@RequestMapping(value = { "/admin/user/delete", "/admin/user/delete/{taiKhoan}" })
	public String delete(RedirectAttributes model, @RequestParam(value = "taiKhoan", required = false) String taiKhoan1,
			@PathVariable(value = "taiKhoan", required = false) String taiKhoan2) {
		if (taiKhoan1 != null) {
			dao.delete(taiKhoan1);
		} else {
			dao.delete(taiKhoan2);
		}
		model.addAttribute("message", "Xóa danh mục thành công");
		return "redirect:/admin/user/index";
	}

	@GetMapping("/admins/users/login")
	public String login(Model model) {
		Cookie ckid = cookie.read("taiKhoan");
		Cookie ckpw = cookie.read("matKhau");
		if (ckid != null) {
			String usd = ckid.getValue();
			String pwd = ckpw.getValue();

			model.addAttribute("usd", usd);
			model.addAttribute("pwd", pwd);
		}

		return "admins/users/login";
		
	}

	@PostMapping("/admins/users/login")
	public String login(Model model, @RequestParam("id") String id, @RequestParam("pw") String pw,
			@RequestParam(value = "rm", defaultValue = "false") boolean rm) {

		Users users = dao.findById(id);
		if (users == null) {
			model.addAttribute("message", "Thông tin tài khoản không chính xác. Vui lòng nhập lại.");
			return "admins/users/login";
		}
		if (users.getTaiKhoan() == null || users.getTaiKhoan().trim().isEmpty()) {
			model.addAttribute("message", "Tài khoản không được để trống. Vui lòng nhập lại.");
			return "admins/users/login";
		} else if (users.getMatKhau() == null || users.getMatKhau().trim().isEmpty()) {
			model.addAttribute("message", "Mật khẩu không được để trống. Vui lòng nhập lại.");
			return "admins/users/login";

		} else if (!pw.equals(users.getMatKhau())) {
			model.addAttribute("message", "Tài khoản hoặc mật khẩu không chính xác. Vui lòng nhập lại hoặc đăng ký.");
			return "admins/users/login";

		} else  {
			// model.addAttribute("message", "Đăng nhập thành công :)");
			session.setAttribute("users", users);
			
			// ghi nhớ tài khoản bằng cookie
			if (rm == true) {
				cookie.create("taiKhoan", users.getTaiKhoan(), 30);
				cookie.create("matKhau", users.getMatKhau(), 30);
			} else {
				cookie.delete("taiKhoan");
				cookie.delete("matKhau");
			}
			session.setAttribute("fullname", users.getHoTen());
		}

		// Quay lại trang được bảo vệ nếu có
		String backUrl = (String) session.getAttribute("back-urlAmin");
		String url = "/admin";
		if (backUrl != null && !backUrl.equals(url)) {
			return "redirect:" + backUrl;
		}

		return "redirect:/admin/user/index";
	}
	@RequestMapping("/admins/users/logout")
	public String logout(Model model) {
	    // Xóa phiên làm việc của người dùng
	    session.removeAttribute("users");
	    // Xóa các cookie lưu thông tin đăng nhập (nếu có)
	    cookie.delete("taiKhoan");
	    cookie.delete("matKhau");
	    // Chuyển hướng người dùng về trang đăng nhập
	    return "redirect:/admins/users/login";
	}

}

