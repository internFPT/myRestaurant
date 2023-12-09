package com.estore.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.estore.entity.KhachHang;

@Component
public class AuthorizeInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");
		if (khachHang == null) {
			session.setAttribute("back-url", request.getRequestURI()); 
			response.sendRedirect("/taikhoan/dangnhap");
			return false;
			
		}
		return true;
	}
}
