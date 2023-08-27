package com.main.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.main.model.WebMemberDAO;
import com.main.model.WebMemberDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		WebMemberDTO loginMember = (WebMemberDTO) session.getAttribute("loginMember");
		String user_id = loginMember.getUser_id();
		
		String path = request.getServletContext().getRealPath("./file");
		System.out.println("저장 경로 : " + path);

		// 3. 파일의 max size
		int maxSize = 1024 * 1024 * 10; // 10MB

		// 4. 인코딩 방식
		String encoding = "UTF-8";

		// 5. 중복 제거 -> 파일명 뒤에 숫자를 붙여주는 객체
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();

		MultipartRequest multi = new MultipartRequest(request, path, maxSize, encoding, rename);

		String user_pw = multi.getParameter("user_pw");
		String user_nick = multi.getParameter("user_nick");
		String user_phone = multi.getParameter("user_phone");
		String user_addr = multi.getParameter("user_addr");
		String user_profile = multi.getFilesystemName("user_profile");
		System.out.println(user_id + user_pw + user_nick + user_phone);
		WebMemberDTO dto = new WebMemberDTO(user_id, user_pw, user_nick, user_phone, user_addr, user_profile, null);
		System.out.println(dto);
		WebMemberDAO dao = new WebMemberDAO();
		
		int cnt = dao.updateMember(dto);
		// 1. WebMemberDAO -> updateMember() 작성

		// 2. updateMember() -> 반환타입이 int

		// 3. 반환타입에 따라서 수정 성공시 -> 콘솔창에 "수정 성공"
		// 수정 실패시 -> 콘솔창에 "수정 실패"
		if (cnt > 0) {
			System.out.println("수정 성공");

			session.setAttribute("loginMember", dto);
			response.sendRedirect("main.jsp");
		} else {
			System.out.println("수정 실패");
			response.sendRedirect("update.jsp");
		}
	}

}
