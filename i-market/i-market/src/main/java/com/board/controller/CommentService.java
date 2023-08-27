package com.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.board.BoardInfoDTO;
import com.smhrd.model.board.CommentInfoDAO;
import com.smhrd.model.board.CommentInfoDTO;
import com.main.model.WebMemberDTO;


public class CommentService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		
		//int b_idx = Integer.parseInt(request.getParameter("board_idx"));
		HttpSession session = request.getSession();
		WebMemberDTO loginMember = (WebMemberDTO)session.getAttribute("loginMember");
		
		int b_idx = Integer.parseInt(request.getParameter("board_idx"));
		String user_nick = loginMember.getUser_nick();
		/*
		 * RequestDispatcher rd = request.getRequestDispatcher("./");
		 * rd.forward(request, response);
		 */
		String cmt_content = request.getParameter("cmt_content");
		String user_id = loginMember.getUser_id();
		
		System.out.println("b_idx : " + b_idx);
		System.out.println("user_id :" + user_id);
		System.out.println("user_nick : " + user_nick);
		System.out.println("cmt_content : " + cmt_content);
		CommentInfoDTO dto = new CommentInfoDTO(b_idx, cmt_content, user_id, user_nick);
		int cnt = new CommentInfoDAO().CommentUpLoad(dto);
		
		if(cnt>0) {
			System.out.println("댓글달기 성공");
			response.sendRedirect("board/boardDetail.jsp?board_idx=" + b_idx);
		} else {
			System.out.println("댓글달기 실패");
			response.sendRedirect("board/boardDetail.jsp");
			
		}
	}

}
