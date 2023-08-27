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


public class BoardSearchService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String searchField = request.getParameter("searchField");
		String searchText = request.getParameter("searchText");
		String b_title = searchText;
		String user_id = searchText;
		
		
		
		System.out.println(searchField + searchText);
		
		
		
		 
		if(searchField.equals("board_title")) {
			BoardInfoDTO dto = new BoardInfoDTO(b_title, null);
			BoardInfoDAO dao = new BoardInfoDAO();
			ArrayList<BoardInfoDTO> board_list = (ArrayList<BoardInfoDTO>) dao.showBoardTitle(dto);
			System.out.println(board_list);
			request.setAttribute("board_list", board_list);
			request.setAttribute("boardPage", 1);
			RequestDispatcher rd = request.getRequestDispatcher("board/boardMain.jsp");
			rd.forward(request, response);
			
		} else if(searchField.equals("user_id")) {
			BoardInfoDTO dto = new BoardInfoDTO(null, user_id); 
			BoardInfoDAO dao = new BoardInfoDAO(); 
			ArrayList<BoardInfoDTO> board_list = (ArrayList<BoardInfoDTO>) dao.showBoardUser_id(dto);
			request.setAttribute("board_list", board_list);
			request.setAttribute("boardPage", 1);
			RequestDispatcher rd = request.getRequestDispatcher("board/boardMain.jsp");
			rd.forward(request, response);
			
		} else {
			request.setAttribute("pagebutton", 1);
			RequestDispatcher rd = request.getRequestDispatcher("boardController");
			rd.forward(request, response);
			
		}
		
	}

}
