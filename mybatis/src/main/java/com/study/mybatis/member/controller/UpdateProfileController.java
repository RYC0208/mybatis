package com.study.mybatis.member.controller;

import java.io.IOException;

import com.study.mybatis.member.service.MemberService;
import com.study.mybatis.member.service.MemberServiceImpl;
import com.study.mybatis.member.vo.Member;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateProfileController
 */
public class UpdateProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Member m = new Member();
		m.setUser_id(request.getParameter("user_id"));
		m.setUser_pwd(request.getParameter("user_pwd"));
		m.setUser_name(request.getParameter("user_name"));
		m.setEmail(request.getParameter("email"));
		m.setPhone(request.getParameter("phone"));
		m.setAddress(request.getParameter("address"));
		System.out.println("DDDDDDDDDDDDD" + m);
		request.getSession().setAttribute("loginUser", m);
		
		int result = new MemberServiceImpl().updateMember(m);
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/myPage.me");
		} else {
			request.setAttribute("errorMsg", "회원 가입 실패");
			request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
	}

}
