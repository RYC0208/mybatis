package com.study.mybatis.member.controller;

import java.io.IOException;

import com.study.mybatis.member.vo.Member;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class MyPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Member loginUser = (Member) session.getAttribute("loginUser");

        request.setAttribute("user", loginUser);

        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/member/myPage.jsp");
        dispatcher.forward(request, response);
	}

}
