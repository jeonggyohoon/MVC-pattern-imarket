package com.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.board.BoardInfoDAO;
import com.smhrd.model.board.BoardInfoDTO;
import com.main.model.WebMemberDTO;


public class BoardDeleteService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		WebMemberDTO loginMember = (WebMemberDTO)session.getAttribute("loginMember");
		int b_idx = (int)session.getAttribute("b_idx");
		
		
		
		request.setCharacterEncoding("utf-8");
		
		String insert_id = request.getParameter("user_id");
		String insert_pw = request.getParameter("user_pw");
		
		String user_id = loginMember.getUser_id();
		String user_pw = loginMember.getUser_pw();
		
		System.out.println(insert_id + insert_pw + user_id + user_pw);
		
		if(insert_id.equals(loginMember.getUser_id()) && insert_pw.equals(loginMember.getUser_pw())) {
			BoardInfoDAO dao = new BoardInfoDAO();
			BoardInfoDTO dto = new BoardInfoDTO(b_idx);
			
			int cnt = dao.boardDelete(dto);
			
			if(cnt > 0) {
				System.out.println("삭제 성공");
				response.sendRedirect("boardController?pagebutton=1");
			} else {
				System.out.println("삭제 실패");
				response.sendRedirect("board/boardDetail.jsp");
			}
			
		} else {
			System.out.println("조회실패");
			response.sendRedirect("board/boardDelete.jsp");
		}
	}

}
