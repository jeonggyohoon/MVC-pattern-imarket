package com.item.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.main.model.t_iteminfoDAO;
import com.main.model.t_iteminfoDTO;


public class itemViewUpService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int item_idx = Integer.parseInt(request.getParameter("item_idx"));
		t_iteminfoDTO dto1 = new t_iteminfoDTO(item_idx);
		t_iteminfoDAO dao = new t_iteminfoDAO();
		List<t_iteminfoDTO> dtail_list = dao.showItemDetail(dto1);
		int item_view = dtail_list.get(0).getItem_view();
		item_view = item_view + 1;
		
		t_iteminfoDTO dto = new t_iteminfoDTO(item_idx, item_view);
		int cnt = new t_iteminfoDAO().ViewUp(dto);
		
		if(cnt > 0) {
			System.out.println("조회수 올랐다!");
			response.sendRedirect("item/itemDetail.jsp?item_idx=" + item_idx);
			
		} else {
			System.out.println("실패해 버렸어~~");
			response.sendRedirect("item/itemListMain.jsp");
		}
				
	}

}
