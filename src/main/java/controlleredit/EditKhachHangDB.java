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
@WebServlet("/EditKhachHangDB")
public class EditKhachHangDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int maKH= Integer.parseInt(request.getParameter("maKH"));
		String hoTen=request.getParameter("hoTen");
		String ngaySinh=request.getParameter("ngaySinh");
		String SDT=request.getParameter("SDT");
		String gmail=request.getParameter("gmail");
		int id_Account=Integer.parseInt(request.getParameter("id_Account"));
		DAONHANVIEN dao = new DAONHANVIEN();
		dao.editKhachHang(maKH, hoTen, ngaySinh,SDT ,gmail,id_Account);
		response.sendRedirect("LoadEditKhachHangDB?maKH="+maKH);
	}

}
