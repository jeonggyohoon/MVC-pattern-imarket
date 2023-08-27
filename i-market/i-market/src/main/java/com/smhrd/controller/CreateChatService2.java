package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.chat.t_chatroominfoDAO;
import com.smhrd.model.chat.t_chatroominfoDTO;

public class CreateChatService2 implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id");
		System.out.println("유저아이디"+user_id);
		String croom_title = (String)session.getAttribute("item_name");
		String croom_content = (String)session.getAttribute("item_info");
		String to_id = (String)session.getAttribute("to_id_2");
		System.out.println("아이템설명"+croom_content);
		System.out.println("아이템이름"+croom_title);
		System.out.println("to 아이디"+to_id);
		
		String moveURL = null;

		t_chatroominfoDTO chatRoomChk = new t_chatroominfoDTO(croom_title, user_id, to_id);
		t_chatroominfoDAO dao = new t_chatroominfoDAO();
		t_chatroominfoDTO sel_chatRoomChk = dao.selectRoom(chatRoomChk);
		System.out.println("sel 챗룸체크"+sel_chatRoomChk);
		if (sel_chatRoomChk == null ) {
		
			t_chatroominfoDTO dto = new t_chatroominfoDTO(croom_title, croom_content, user_id, to_id);
			int cnt = dao.createChat(dto);
		
		

			if (cnt > 0) {
			
				session.setAttribute("chatroom", dto);
				System.out.println(dto);
			
				t_chatroominfoDTO chatRoom = new t_chatroominfoDTO(croom_title, user_id, to_id);
				t_chatroominfoDTO sel_chatRoom = dao.selectRoom(chatRoom);
				System.out.println("챗룸확인"+sel_chatRoom.getCroom_idx());
				int croom_idx = sel_chatRoom.getCroom_idx();
				session.setAttribute("croom_idx", croom_idx);
				moveURL = "MoveChatRoomService.do";
			} else {
				moveURL = "Chat01.jsp";
			}
			
		}else {
			int croom_idxChk = sel_chatRoomChk.getCroom_idx();
			System.out.println("croom인덱스체크"+croom_idxChk);
			moveURL = "../chat/Chat02.jsp?croom_idx="+croom_idxChk;
		}
		return moveURL;
	}

}
