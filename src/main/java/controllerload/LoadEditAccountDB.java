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

/**
 * Servlet implementation class LoadEditAccountDB
 */
@WebServlet("/LoadEditAccountDB")
public class LoadEditAccountDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id_Account= Integer.parseInt(request.getParameter("id_Account"));
		DAONHANVIEN dao = new DAONHANVIEN();
		Account account  = dao.getAccount(id_Account);
		request.setAttribute("account", account);
		request.getRequestDispatcher("/viewsedit/editaccountdb.jsp").forward(request, response);
	}

}
