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
@WebServlet("/EditNhanVienDB")
public class EditNhanVienDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int maNV= Integer.parseInt(request.getParameter("maNV"));
		String hoTen=request.getParameter("hoTen");
		String ngaySinh=request.getParameter("ngaySinh");
		String SDT=request.getParameter("SDT");
		String queQuan=request.getParameter("queQuan");
		String STK=request.getParameter("STK");
		int id_Account=Integer.parseInt(request.getParameter("id_Account"));
		DAONHANVIEN dao = new DAONHANVIEN();
		dao.editNhanVien(maNV, hoTen, ngaySinh,SDT ,queQuan ,STK ,id_Account);
		response.sendRedirect("LoadEditNhanVienDB?maNV="+maNV);
	}

}
