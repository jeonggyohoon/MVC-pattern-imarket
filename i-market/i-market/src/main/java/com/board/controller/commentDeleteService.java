package com.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.smhrd.model.board.CommentInfoDAO;
import com.smhrd.model.board.CommentInfoDTO;


public class commentDeleteService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int b_idx = (int)session.getAttribute("b_idx");
		
		int cmt_idx = Integer.parseInt(request.getParameter("cmt_idx"));
		CommentInfoDAO dao = new CommentInfoDAO();
		CommentInfoDTO dto = new CommentInfoDTO(cmt_idx, 0);
		
		int cnt = dao.commentDelete(dto);
		
		if(cnt > 0) {
			System.out.println("삭제 성공");
			response.sendRedirect("board/boardDetail.jsp?board_idx=" + b_idx);
		} else {
			System.out.println("삭제 실패 ㅠㅠ");
			response.sendRedirect("board/boardDetail.jsp?board_idx=" + b_idx);
		}
		
	}

}
