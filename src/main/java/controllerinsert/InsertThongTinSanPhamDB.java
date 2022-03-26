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
@WebServlet("/InsertThongTinSanPhamDB")
public class InsertThongTinSanPhamDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String TenSP = request.getParameter("TenSP");

		String GiaSP = request.getParameter("GiaSP");

		String ThoiGianBaoHanh = request.getParameter("ThoiGianBaoHanh");

		String XuatXu = request.getParameter("XuatXu");

		String ThongSo = request.getParameter("ThongSo");

		String SoLuongTon = request.getParameter("SoLuongTon");

		if (GiaSP != null && SoLuongTon != null) {
			int GiaSPint = Integer.parseInt(GiaSP);
			int SoLuongTonint = Integer.parseInt(GiaSP);
			DAONHANVIEN dao = new DAONHANVIEN();
			dao.insertSanPham(TenSP, TenSP, GiaSPint, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTonint);
		}
		request.getRequestDispatcher("/viewsnhanvien/InsertThongTinSanPhamDB.jsp").forward(request, response);
	}

}
