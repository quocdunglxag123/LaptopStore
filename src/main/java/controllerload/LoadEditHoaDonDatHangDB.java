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
import model.HoaDonDatHang;

/**
 * Servlet implementation class LoadEditAccountDB
 */
@WebServlet("/LoadEditHoaDonDatHangDB")
public class LoadEditHoaDonDatHangDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int maHDDH= Integer.parseInt(request.getParameter("maHDDH"));
		DAONHANVIEN dao = new DAONHANVIEN();
		HoaDonDatHang hoadondathang  = dao.getHoaDonDatHang(maHDDH);
		request.setAttribute("hddh", hoadondathang);
		request.getRequestDispatcher("/viewsedit/edithoadondathangdb.jsp").forward(request, response);
	}

}
