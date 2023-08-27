package com.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.main.model.WebMemberDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.board.BoardInfoDAO;
import com.smhrd.model.board.BoardInfoDTO;


public class BoardWriteService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		WebMemberDTO loginMember = (WebMemberDTO)session.getAttribute("loginMember");
		request.setCharacterEncoding("utf-8");
		// 파일 업로드 -> MultipartRequest -> cos.jar
				// 1. 모든 요청정보가 담겨있는 request객체
				// 2. 업로드 된 파일(이미지)을 저장할 경로
		String path = request.getServletContext().getRealPath("./file");
		System.out.println("저장 경로 : " + path);
		
		// 3. 파일의 max size
		int maxSize = 1024*1024*10;
		
		// 4. 인코딩 방식
		String encoding = "utf-8";
		
		// 5. 종복제거
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		MultipartRequest multi = new MultipartRequest(request, path, maxSize, encoding, rename);
			
		String user_id = loginMember.getUser_id();
		String user_nick = loginMember.getUser_nick();
		System.out.println(user_id + user_nick);
		String b_title = multi.getParameter("b_title");
		System.out.println(b_title);
		String b_content = multi.getParameter("b_content");
		String b_file = multi.getFilesystemName("b_file");
		
		  if(b_file ==null) { b_file="null"; }else { b_file =
		  multi.getFilesystemName("b_file"); }
		 
		
		
		
		System.out.println("b_title : " + b_title);
		System.out.println("b_content : " + b_content);
		System.out.println("b_file : " + b_file);
		System.out.println("user_id :" + user_id);
		System.out.println("user_nick :" + user_nick);
		BoardInfoDTO dto = new BoardInfoDTO(b_title, b_content, b_file, user_id, user_nick);
		int cnt = new BoardInfoDAO().BoardUpLoad(dto);
		
		if(cnt>0) {
			System.out.println("업로드 완료");
			response.sendRedirect("boardController?pagebutton=1");
		} else {
			System.out.println("업로드 실패");
			response.sendRedirect("boardInput.jsp");
		}
	
		
	}
	
}
	
	
	