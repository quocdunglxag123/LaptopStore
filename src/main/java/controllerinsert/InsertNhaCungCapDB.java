package controllerinsert;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.DAONHANVIEN;

/**
 * Servlet implementation class InsertThongTinSanPhamDB
 */
@WebServlet("/InsertNhaCungCapDB")
public class InsertNhaCungCapDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	

		String tenNCC = request.getParameter("tenNCC");

		String diaChi = request.getParameter("diaChi");

	
		String dienThoai = request.getParameter("dienThoai");

		

		if (tenNCC != null && diaChi != null && dienThoai != null) {
			DAONHANVIEN dao = new DAONHANVIEN();
			dao.insertNhaCungCap(tenNCC, diaChi, dienThoai);
		}
		request.getRequestDispatcher("/viewsnhanvien/InsertNhaCungCapDB.jsp").forward(request, response);
	}

}
