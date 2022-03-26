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
@WebServlet("/InsertHoaDonDatHangDB")
public class InsertHoaDonDatHangDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String MaNCC  = request.getParameter("MaNCC");

		String MaNV = request.getParameter("MaNV");

		String MaSP = request.getParameter("MaSP");

		String NgayLapHoaDonDatHang = java.time.LocalDateTime.now().toString();

		String GiaTri = request.getParameter("GiaTri");

		String SoLuongDat = request.getParameter("SoLuongDat");

		if (MaNCC != null && MaNV != null && MaSP != null &&GiaTri != null &&SoLuongDat != null) {
			int MaNCCint = Integer.parseInt(MaNCC);
			int MaNVint = Integer.parseInt(MaNV);
			int MaSPint = Integer.parseInt(MaNV);
			int GiaTriint = Integer.parseInt(MaNV);
			int SoLuongDatint = Integer.parseInt(SoLuongDat);
			DAONHANVIEN dao = new DAONHANVIEN();
			dao.insertHoaDonDatHang(MaNCCint, MaNVint, MaSPint, NgayLapHoaDonDatHang, GiaTriint, SoLuongDatint);
		}
		request.getRequestDispatcher("/viewsnhanvien/InsertHoaDonDatHangDB.jsp").forward(request, response);
	}

}
