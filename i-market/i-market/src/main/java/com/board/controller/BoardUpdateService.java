package com.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.board.BoardInfoDAO;
import com.smhrd.model.board.BoardInfoDTO;


public class BoardUpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		
		String path = request.getServletContext().getRealPath("./file");
		System.out.println("저장 경로 : " + path);
		
		int maxSize = 1024*1024*10;
		
		String encoding = "utf-8";
		
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		MultipartRequest multi = new MultipartRequest(request, path, maxSize, encoding, rename);
		
		int b_idx = (int)session.getAttribute("b_idx");
		
		String b_title = multi.getParameter("b_title");
		String b_content = multi.getParameter("b_content");
		String b_file = multi.getFilesystemName("b_file");
		
		
		  if(b_file == null) { b_file = "null"; } else { b_file =
		  multi.getFilesystemName("b_file"); }
		 
		
		BoardInfoDTO dto = new BoardInfoDTO(b_idx, b_title, b_content, b_file);
		int cnt = new BoardInfoDAO().boardUpdate(dto);
		
		if(cnt > 0) {
			System.out.println("수정성공");
			response.sendRedirect("boardController?pagebutton=1");
		} else {
			System.out.println("수정실패");
			response.sendRedirect("boardUpdate.jsp");
			
		}
	}

}
