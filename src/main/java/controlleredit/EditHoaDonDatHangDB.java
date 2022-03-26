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
@WebServlet("/EditHoaDonDatHangDB")
public class EditHoaDonDatHangDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int maHDDH= Integer.parseInt(request.getParameter("maHDDH"));
		int maNCC=Integer.parseInt(request.getParameter("maNCC"));
		
		int soLuongDat=Integer.parseInt(request.getParameter("soLuongDat"));
		int giaTri=Integer.parseInt(request.getParameter("giaTri"));
		String ngayLapHoaDonDatHang=request.getParameter("ngayLapHoaDonDatHang");
		DAONHANVIEN dao = new DAONHANVIEN();
		dao.editHoaDonDatHang(maNCC, ngayLapHoaDonDatHang, giaTri, soLuongDat, maHDDH);
		response.sendRedirect("LoadEditHoaDonDatHangDB?maHDDH="+maHDDH);
	}

}
