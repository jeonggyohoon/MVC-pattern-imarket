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


public class CommentUpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int cmt_idx = Integer.parseInt(request.getParameter("cmt_idx"));
		String cmt_content = request.getParameter("cmt_content");
		HttpSession session = request.getSession();
		int b_idx = (int)session.getAttribute("b_idx");
		
		CommentInfoDTO dto = new CommentInfoDTO(cmt_idx, cmt_content);
		int cnt = new CommentInfoDAO().commentUpdate(dto);
		
		if(cnt > 0) {
			System.out.println("수정성공");
			response.sendRedirect("board/boardDetail.jsp?board_idx=" + b_idx);
		} else {
			System.out.println("수정실패");
			response.sendRedirect("board/commentUpdate.jsp?cmt_idx=" + cmt_idx);
		}
	}

}
