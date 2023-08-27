package com.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.chat.t_chatroominfoDAO;
import com.smhrd.model.chat.t_chatroominfoDTO;

public class ChatRoomService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String c_user_id = (String)session.getAttribute("user_id");
		String user_id = request.getParameter("c_user_id");
		System.out.println("유저아이디" + c_user_id);	

		// t_chatroominfoDTO dto = new t_chatroominfoDTO();
		t_chatroominfoDTO dto = new t_chatroominfoDTO(user_id);
		t_chatroominfoDAO dao = new t_chatroominfoDAO();
		List<t_chatroominfoDTO> chatRoom = dao.showChatRoom(dto);

			System.out.println(session);
		
		return "Chat01.jsp";
	
	}

}
