package com.main.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.main.model.WebMemberDAO;
import com.main.model.WebMemberDTO;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//로그인
				// [로그인 기능]
				// 1. 입력받은 회원정보(이메일, 비밀번호) 가져오기
				String user_id = request.getParameter("user_id");
				String user_pw = request.getParameter("user_pw");
				System.out.println(user_id + user_pw);
				
				// 2. 데이터베이스에 해당 회원이 있는지 조회하기
				WebMemberDTO member = new WebMemberDTO(user_id, user_pw);
				WebMemberDAO dao = new WebMemberDAO(); 
				WebMemberDTO loginMember = dao.selectMember(member);
				
				if(loginMember != null) {
					// 2-1. 회원이 존재할 경우 세션 영역에 저장하고 main.jsp로 이동
					System.out.println("로그인 성공");
					HttpSession session =  request.getSession();
					session.setAttribute("loginMember", loginMember);
					session.setAttribute("user_id", user_id);
					
					response.sendRedirect("main.jsp");
				} else {
					// 2-2. 비회원일 경우  main.jsp로 이동
					System.out.println("로그인 실패");
					response.sendRedirect("main.jsp");
				}
				
	}

}
