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
@WebServlet("/EditNhaCungCapDB")
public class EditNhaCungCapDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int maNCC= Integer.parseInt(request.getParameter("maNCC"));
		String tenNCC=request.getParameter("tenNCC");
		String diaChi=request.getParameter("diaChi");
		String dienThoai=request.getParameter("dienThoai");
		DAONHANVIEN dao = new DAONHANVIEN();
		dao.editNhaCungCap(maNCC,tenNCC, diaChi, dienThoai);
		response.sendRedirect("LoadEditNhaCungCapDB?maNCC="+maNCC);
	}

}
