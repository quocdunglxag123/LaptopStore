package controllerload;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.DAONHANVIEN;
import model.Account;
import model.HoaDonBanHang;

/**
 * Servlet implementation class LoadEditAccountDB
 */
@WebServlet("/LoadEditHoaDonBanHangDB")
public class LoadEditHoaDonBanHangDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int maHDBH= Integer.parseInt(request.getParameter("maHDBH"));
		DAONHANVIEN dao = new DAONHANVIEN();
		HoaDonBanHang hoadonbanhang  = dao.getHoaDonBanHang(maHDBH);
		request.setAttribute("hdbh", hoadonbanhang);
		request.getRequestDispatcher("/viewsedit/edithoadonbanhangdb.jsp").forward(request, response);
	}

}
