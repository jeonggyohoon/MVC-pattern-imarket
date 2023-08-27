package com.main.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.main.model.WebMemberDAO;

public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id = request.getParameter("user_id");
				
				
				// DAO -> deleteMember() 만들기
				// sql 작성 -> WebMemberMapper
				//WebMemberDTO dto = new WebMemberDTO(email);
				WebMemberDAO dao = new WebMemberDAO(); 
				int cnt = dao.deleteMember(user_id);
				
				
				if(cnt > 0) {
					// 삭제 성공시 -> 콘솔창에 "삭제 성공"
					System.out.println("삭제 성공");
					response.sendRedirect("select.jsp");
					
				} else {
					// 삭제 실패시 -> 콘솔창에 "삭제 실패"
					// -> select.jsp
					System.out.println("삭제 실패");
					response.sendRedirect("select.jsp");
				}
			}
}
