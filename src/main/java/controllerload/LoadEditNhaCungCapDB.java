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
import model.NhaCungCap;

/**
 * Servlet implementation class LoadEditAccountDB
 */
@WebServlet("/LoadEditNhaCungCapDB")
public class LoadEditNhaCungCapDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int maNCC= Integer.parseInt(request.getParameter("maNCC"));
		DAONHANVIEN dao = new DAONHANVIEN();
		NhaCungCap nhaCungCap  = dao.getNhaCungCap(maNCC);
		request.setAttribute("ncc", nhaCungCap);
		request.getRequestDispatcher("/viewsedit/editnhacungcapdb.jsp").forward(request, response);
	}

}
