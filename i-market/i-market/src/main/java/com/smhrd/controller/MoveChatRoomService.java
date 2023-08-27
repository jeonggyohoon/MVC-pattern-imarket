package com.smhrd.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;

public class MoveChatRoomService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		int croom_idx = (int)session.getAttribute("croom_idx");
			System.out.println("croom인덱스체크"+croom_idx);
		return "../chat/Chat02.jsp?croom_idx="+croom_idx;
	
	}

}
