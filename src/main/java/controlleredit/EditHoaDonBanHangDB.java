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
@WebServlet("/EditHoaDonBanHangDB")
public class EditHoaDonBanHangDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int maHDBH= Integer.parseInt(request.getParameter("maHDBH"));
		String userName=request.getParameter("userName");
		String firstlastname=request.getParameter("firstlastname");
		String diachi=request.getParameter("diachi");
		String numberphone=request.getParameter("numberphone");
		String gender=request.getParameter("gender");
		String nationality=request.getParameter("nationality");
		String noted=request.getParameter("noted");
		DAONHANVIEN dao = new DAONHANVIEN();
		dao.editHoaDonBanHang(maHDBH, userName, firstlastname, diachi, numberphone, gender, nationality, noted);
		response.sendRedirect("LoadEditHoaDonBanHangDB?maHDBH="+maHDBH);
	}

}
