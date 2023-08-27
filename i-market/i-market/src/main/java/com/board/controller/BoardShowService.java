package com.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.board.BoardInfoDAO;
import com.smhrd.model.board.BoardInfoDTO;
import com.smhrd.model.board.CommentInfoDAO;
import com.smhrd.model.board.CommentInfoDTO;


public class BoardShowService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		
		int b_idx =  Integer.parseInt(request.getParameter("board_idx"));
		BoardInfoDTO dto = new BoardInfoDTO(b_idx);
		BoardInfoDAO dao = new BoardInfoDAO();
		List<BoardInfoDTO> dtail_list= dao.showBoardDtail(dto);
		int b_views = dtail_list.get(0).getB_views();
		b_views = b_views + 1;
		
		BoardInfoDTO dto1 = new BoardInfoDTO(b_idx, b_views, 0);
		int cnt = new BoardInfoDAO().boardView(dto1);
		
		if(cnt > 0){
			System.out.println("조회수 up!!");
			response.sendRedirect("board/boardDetail.jsp?board_idx=" + b_idx);
			
		} else {
			System.out.println("실패~!!!!");
		}
		
		
	}

}
