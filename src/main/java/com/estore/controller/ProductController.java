package com.estore.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.estore.bean.MailInfo;
import com.estore.dao.DanhMucSanPhamDao;
import com.estore.dao.SanPhamDao;
import com.estore.entity.SanPham;
import com.estore.service.CookieService;
//import com.estore.service.MailService;

@Controller
public class ProductController {
	@Autowired
	DanhMucSanPhamDao ddao;

	@Autowired
	CookieService cookie;
//
//	@Autowired
//	MailService mail;

	@RequestMapping("/sanpham/danhsach-danhmuc/{cid}")
	public String danhSachDanhMuc(Model model, @PathVariable("cid") Integer maDanhMuc) {

		/*
		 * DanhMucSanPham danhMucSanPham = ddao.findById(maDanhMuc); List<SanPham> list
		 * = danhMucSanPham.getSanPhams(); model.addAttribute("list", list);
		 */

		// get danh mục sản phẩm
		List<SanPham> list = pdao.findByDanhMucSPId(maDanhMuc);
		model.addAttribute("list", list);

		// get san phẩm được quan tâm nhất
		List<SanPham> listSPQT = pdao.findBySanPhamQT(maDanhMuc);
		model.addAttribute("listSPQT", listSPQT);

		return "product/list";
	}

	@Autowired
	SanPhamDao pdao;

	@RequestMapping("/sanpham/list-by-keywords")
	public String listbykeywords(Model model, @RequestParam("keywords") String keywords) {

		List<SanPham> list = pdao.findByKeyword(keywords);
		model.addAttribute("list", list);

		return "product/list";
	}

	@RequestMapping("/sanpham/chitiet/{maDanhMuc}")
	public String sanPhamDetail(Model model, @PathVariable("maDanhMuc") Integer maDanhMuc) {

		SanPham sanphamCT = pdao.findById(maDanhMuc);
		model.addAttribute("sanphamCT", sanphamCT);

		// Sản phẩm cùng loại
		List<SanPham> listSPCL = pdao.findByDanhMucSPId(sanphamCT.getDanhMucSanPham().getMaDanhMuc());
		model.addAttribute("listSPCL", listSPCL);

		// Tăng số lần xem
		if (sanphamCT.getLuotXem() == null) {
			sanphamCT.setLuotXem((double) 0);
		}
		sanphamCT.setLuotXem(sanphamCT.getLuotXem() + 1);
		pdao.update(sanphamCT);

		// get danh sách sản phẩm yêu thích
		Cookie yeuthich = cookie.read("yeuthich");
		if (yeuthich != null) {
			String ids = yeuthich.getValue();
			List<SanPham> yeuthichDS = pdao.findByIDs(ids);
			model.addAttribute("yeuthichDS", yeuthichDS);
		}

		// get các sản phẩm đã xem
		Cookie viewed = cookie.read("viewed");
		String value = maDanhMuc.toString();
		if (viewed != null) {
			value = viewed.getValue();
			value += "," + maDanhMuc.toString();
		}
		cookie.create("viewed", value, 10);
		List<SanPham> viewedDS = pdao.findByIDs(value);
		model.addAttribute("viewed", viewedDS);

		// get san phẩm được quan tâm nhất
		List<SanPham> listSPQT = pdao.findBySanPhamQT(maDanhMuc);
		model.addAttribute("listSPQT", listSPQT);

		return "product/chitiet";
	}

	@ResponseBody
	@RequestMapping("/sanpham/sanPhamYeuThich/{maDanhMuc}")
	public boolean sanPhamYeuThich(Model model, @PathVariable("maDanhMuc") Integer maDanhMuc) {
		Cookie yeuthich = cookie.read("yeuthich");
		String value = maDanhMuc.toString();
		if (yeuthich != null) {
			value = yeuthich.getValue();
			if (!value.contains(maDanhMuc.toString())) {
				value += "," + maDanhMuc.toString();
			} else {
				return false;
			}
		}
		cookie.create("yeuthich", value, 30);
		return true;
	}

	@ResponseBody
	@RequestMapping("/sanpham/guiDenBanBe")
	public boolean guiDenBanBe(Model model, MailInfo info, HttpServletRequest req) {

		// send email
		info.setSubject("Thông tin hàng hóa");
		try {
			String id = req.getParameter("id");
			String link = req.getRequestURL().toString().replace("guiDenBanBe", "chitiet/" + id);
			info.setBody(info.getBody() + "<hr><a href='" + link + "'>Xem chi tiết...</a>");
//			mail.send(info);
			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
