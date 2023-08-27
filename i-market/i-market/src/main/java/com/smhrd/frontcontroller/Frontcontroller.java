package com.smhrd.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.command.Command;
import com.smhrd.controller.ChatRoomService;
import com.smhrd.controller.CreateChatService;
import com.smhrd.controller.CreateChatService2;
import com.smhrd.controller.MoveChatRoomService;
import com.smhrd.controller.SendChatService;

public class Frontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("[Frontcontroller]");


		// 공통되는 부분 - post방식 인코딩
		request.setCharacterEncoding("UTF-8");

		// 어떤 요청이 들어왔는지 구분
		String reqURI = request.getRequestURI();
		System.out.println("어디주소 : " + reqURI);

		// ContextPath 출력
		String contextPath = request.getContextPath();
		System.out.println("ContextPath : " + contextPath);

		// 최
		String result = reqURI.substring(contextPath.length() + 1);
		String moveURL = null;
		Command service = null;
		System.out.println(result);
		if (result.equals("chat/ChatRoomService.do")) {
			service = new ChatRoomService();
		} else if (result.equals("chat/SendChatService.do")) {
			service = new SendChatService();
		} else if (result.equals("item/CreateChatService.do")) {
			service = new CreateChatService();
		} else if (result.equals("item/CreateChatService2.do")) {
			service = new CreateChatService2();
		} else if (result.equals("item/MoveChatRoomService.do")) {
			service = new MoveChatRoomService();
		}
		System.out.println(service);
		moveURL = service.execute(request, response);
		response.sendRedirect(moveURL);

	}
}
