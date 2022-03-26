package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
import dao.DAONHANVIEN;
import model.Account;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String username = request.getParameter("username");
		String hoTen = request.getParameter("fullname");
		String ngaySinh = request.getParameter("birthday");
		String gmail = request.getParameter("email");
		String password = request.getParameter("password");
		String SDT = request.getParameter("phone");
 
		if (username!=null || username!="") {
			
			DAO dao = new DAO();
			dao.insertAccount(username, password);
			List<Account> list = dao.getAllAccount();
			Account lastaccount=list.get(list.size()-1);
			int id_Account= lastaccount.getId_Account();
			response.sendRedirect("RegisterKH?id_Account="+ id_Account+"&hoTen="+hoTen+"&ngaySinh="+ngaySinh+"&gmail="+gmail+"&SDT="+SDT);
			
		}

		

	}

}
