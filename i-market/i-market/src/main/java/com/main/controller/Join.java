package com.main.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.main.model.WebMemberDAO;
import com.main.model.WebMemberDTO;

public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 회원가입
				request.setCharacterEncoding("UTF-8");
				// [회원가입기능]
				// 1. 입력받은 회원정보 가져오기
				String user_id = request.getParameter("user_id");
				String user_pw = request.getParameter("user_pw");
				String user_nick = request.getParameter("user_nick");
				String user_phone = request.getParameter("user_phone");
				String user_addr = request.getParameter("user_addr");
				System.out.println(user_id + user_pw);
				WebMemberDTO dto = new WebMemberDTO(user_id, user_pw, user_nick, user_phone, user_addr);
				System.out.println(dto);
				// 2. 가져온 정보를 데이터베이스에 저장하기
				// * WebMemberDAO 객체 활용
				// * WebMemberMapper.xml에 <insert> 태그 정의
				WebMemberDAO dao = new WebMemberDAO();
				int cnt = dao.insertMember(dto);

				// 3. 저장 완료 시 JoinSuccess.jsp로 이동하기
				// 저장 실패 시 main.jsp로 이동하기
				// * Mavensample 참고
				if (cnt > 0) {
					HttpSession session = request.getSession();
					session.setAttribute("user_nick", user_nick);

					 response.sendRedirect("user/joinSuccess.jsp");
				} else {
					 response.sendRedirect("main.jsp");
				}
	}

}
