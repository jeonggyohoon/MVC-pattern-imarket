package com.item.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.main.model.itemBargainDAO;
import com.main.model.itemBargainDTO;

public class uploadBargainService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		int cnt = 0;
		try {
			int bar_idx = 0;
			int item_idx = (int)session.getAttribute("item_idx");
			String user_id = (String)session.getAttribute("bar_id");
			System.out.println(request.getParameter("bar_price"));
			int bar_price = Integer.parseInt(request.getParameter("bar_price"));
			itemBargainDTO dto = new itemBargainDTO(bar_idx, item_idx, user_id, bar_price);
			cnt = new itemBargainDAO().barUpload(dto);

				response.sendRedirect("item/itemDetail.jsp?item_idx="+item_idx);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
