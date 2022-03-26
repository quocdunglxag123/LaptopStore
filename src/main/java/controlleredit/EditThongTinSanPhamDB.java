package controlleredit;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controllernhanvien.AccountDB;
import dao.DAONHANVIEN;

/**
 * Servlet implementation class AccountDBEdit
 */
@WebServlet("/EditThongTinSanPhamDB")
public class EditThongTinSanPhamDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int maSP= Integer.parseInt(request.getParameter("maSP"));
		String tenSP=request.getParameter("tenSP");
		String imageDataName=request.getParameter("imageDataName");
		int giaSP= Integer.parseInt(request.getParameter("giaSP"));
		String thoiGianBaoHanh=request.getParameter("thoiGianBaoHanh");
		String xuatXu=request.getParameter("xuatXu");
		String thongSo=request.getParameter("thongSo");
		int soLuongTon= Integer.parseInt(request.getParameter("soLuongTon"));
		DAONHANVIEN dao = new DAONHANVIEN();
		dao.editSanPham(maSP, tenSP, imageDataName,giaSP ,thoiGianBaoHanh , xuatXu, thongSo, soLuongTon );
		response.sendRedirect("LoadEditThongTinSanPhamDB?maSP="+maSP);
	}

}
