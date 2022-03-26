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
import model.KhachHang;
import model.NhanVien;

/**
 * Servlet implementation class LoadEditAccountDB
 */
@WebServlet("/LoadEditKhachHangDB")
public class LoadEditKhachHangDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int maKH= Integer.parseInt(request.getParameter("maKH"));
		DAONHANVIEN dao = new DAONHANVIEN();
		KhachHang khachHang  = dao.getKhachHang(maKH);
		request.setAttribute("kh", khachHang);
		request.getRequestDispatcher("/viewsedit/editkhachhangdb.jsp").forward(request, response);
	}

}
