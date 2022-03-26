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
@WebServlet("/EditAccountDB")
public class EditAccountDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id_Account= Integer.parseInt(request.getParameter("id_Account"));
		String userName=request.getParameter("userName");
		String passWord=request.getParameter("passWord");
		DAONHANVIEN dao = new DAONHANVIEN();
		dao.editAccount(id_Account, userName, passWord);
		response.sendRedirect("LoadEditAccountDB?id_Account="+id_Account);
	}

}
