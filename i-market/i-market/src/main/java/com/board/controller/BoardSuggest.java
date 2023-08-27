package com.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.board.BoardInfoDAO;
import com.smhrd.model.board.BoardInfoDTO;


public class BoardSuggest extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("들어옴?");
		HttpSession session = request.getSession();
		int b_idx = (int)session.getAttribute("b_idx");
		BoardInfoDTO dto = new BoardInfoDTO(b_idx);
		BoardInfoDAO dao = new BoardInfoDAO();
		List<BoardInfoDTO> detail_list = dao.showBoardDtail(dto);
		int b_likes = detail_list.get(0).getB_likes();
		b_likes = b_likes + 1;
		BoardInfoDTO dto1 = new BoardInfoDTO(b_idx, 0,b_likes);
		int cnt = new BoardInfoDAO().boardLike(dto1);
		System.out.println(cnt);
		if(cnt > 0) {
			System.out.println("추천~~");
			
			response.sendRedirect("board/boardDetail.jsp?board_idx=" + b_idx+"&cnt="+cnt);
			
		}
		
	}

}
