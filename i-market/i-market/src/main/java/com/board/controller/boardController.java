package com.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.board.BoardInfoDAO;
import com.smhrd.model.board.BoardInfoDTO;
import com.smhrd.model.board.CommentInfoDAO;
import com.smhrd.model.board.CommentInfoDTO;


public class boardController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		
		
				
		
	
		
		ArrayList<BoardInfoDTO> board_list = (ArrayList<BoardInfoDTO>) new BoardInfoDAO().showBoard();
		request.setAttribute("board_list", board_list);
		
		
		
		int pagebutton = Integer.parseInt(request.getParameter("pagebutton"));
		request.setAttribute("boardPage", pagebutton);
		
		RequestDispatcher rd = request.getRequestDispatcher("board/boardMain.jsp");
		rd.forward(request, response);
		//response.sendRedirect("boardMain.jsp?boardPage=" + i);
	}

}
