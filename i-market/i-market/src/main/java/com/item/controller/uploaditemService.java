package com.item.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.main.model.t_iteminfoDAO;
import com.main.model.t_iteminfoDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class uploaditemService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String path = request.getServletContext().getRealPath("./photo");
		System.out.println("저장경로 : " + path);
		int maxSize = 1024 * 1024 * 10; // 10mb
		String encoding = "UTF-8";
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		int cnt = 0;
		MultipartRequest multi;
		try {
			multi = new MultipartRequest(request, path, maxSize, encoding, rename);
			int item_idx = 0;
			String item_name = multi.getParameter("item_name");
			int item_price = Integer.parseInt(multi.getParameter("item_price"));
			String item_info = multi.getParameter("item_info");
			String item_category = multi.getParameter("item_category");
			String item_photo = multi.getFilesystemName("item_photo");
			String user_id = (String)session.getAttribute("user_id");
			int item_status = 1;
			String user_addr_at = multi.getParameter("user_addr_at");
			String user_addr = "참조키";
			String item_bargain_YN = multi.getParameter("item_bargain_YN");
			int item_view = 0;
			t_iteminfoDTO dto = new t_iteminfoDTO(item_idx, item_name, item_price, item_info, item_category, null,
					item_photo, user_id, item_status, user_addr_at, user_addr, item_bargain_YN, item_view);
			cnt = new t_iteminfoDAO().itemUpload(dto);

			if (cnt == 0) {
				response.sendRedirect("item/uploadItemBoard.jsp");
			} else {
				response.sendRedirect("item/uploadItemBoard.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
