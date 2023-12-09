package com.estore.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.estore.entity.Users;

@Component
public class AuthorizeInterceptorAdmin extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		Users users = (Users) session.getAttribute("users");
		if (users == null ) {
			session.setAttribute("back-urlAmin", request.getRequestURI()); 
			response.sendRedirect("/admins/users/login");
			return false;
			
		}
		return true;
	}
}
