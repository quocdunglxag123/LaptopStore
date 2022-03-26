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
import model.NhanVien;

/**
 * Servlet implementation class LoadEditAccountDB
 */
@WebServlet("/LoadEditNhanVienDB")
public class LoadEditNhanVienDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int maNV= Integer.parseInt(request.getParameter("maNV"));
		DAONHANVIEN dao = new DAONHANVIEN();
		NhanVien nhanVien  = dao.getNhanVien(maNV);
		request.setAttribute("nv", nhanVien);
		request.getRequestDispatcher("/viewsedit/editnhanviendb.jsp").forward(request, response);
	}

}
