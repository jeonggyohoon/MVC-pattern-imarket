package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.chat.t_chattinginfoDAO;
import com.smhrd.model.chat.t_chattinginfoDTO;

public class SendChatService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// [회원가입기능]
		// 1. 입력받은 회원정보(이메일, 비밀번호, 전화번호, 주소) 가져오기
		HttpSession session = request.getSession();

		String talker = (String)session.getAttribute("user_id");
		String talking = request.getParameter("talking");
		int croom_idx = (int)session.getAttribute("croom_idx");
		System.out.println(talking);
		


		t_chattinginfoDTO dto = new t_chattinginfoDTO(croom_idx, talker, talking);
		t_chattinginfoDAO dao = new t_chattinginfoDAO();
		int cnt = dao.sendChat(dto);

		String moveURL = null;

		if (cnt > 0) {
			
			moveURL = "Chat02.jsp?croom_idx="+croom_idx+"";
		} else {
			System.out.println("전송실패");
			moveURL = "Chat01.jsp";
		}
		return moveURL;
	}
}
