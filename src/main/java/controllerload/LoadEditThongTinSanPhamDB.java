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
import model.SanPham;

/**
 * Servlet implementation class LoadEditAccountDB
 */
@WebServlet("/LoadEditThongTinSanPhamDB")
public class LoadEditThongTinSanPhamDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int maSP= Integer.parseInt(request.getParameter("maSP"));
		DAONHANVIEN dao = new DAONHANVIEN();
		SanPham sanpham  = dao.getSanPham(maSP);
		request.setAttribute("sp", sanpham);
		request.getRequestDispatcher("/viewsedit/editthongtinsanphamdb.jsp").forward(request, response);
	}

}
