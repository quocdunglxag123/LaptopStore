package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;

/**
 * Servlet implementation class RegisterKH
 */
@WebServlet("/RegisterKH")
public class RegisterKH extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id_Account = Integer.parseInt(request.getParameter("id_Account"));
		String hoTen = request.getParameter("hoTen");
		String ngaySinh = request.getParameter("ngaySinh");
		String gmail = request.getParameter("gmail");
		String SDT = request.getParameter("SDT");
	
		if (hoTen!=null || hoTen!="") {
		DAO dao = new DAO();
		dao.insertKhachHang(hoTen, ngaySinh, gmail,SDT,id_Account);
		}
		request.getRequestDispatcher("/views/Register.jsp").forward(request, response);
	}

}
