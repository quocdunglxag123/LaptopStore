package controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Response;
import org.apache.commons.beanutils.BeanUtils;

import cookie.CookieUtils;
import dao.DAO;
import model.Account;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			String quyen1 = request.getParameter("nhanvien");
			String quyen2 = request.getParameter("khachhang");
			DAO dao = new DAO();
			List<Account> list = dao.getAllAccount();
			for (Account account : list) {
				String userName = account.getUserName();
				String passWord = account.getPassWord();
				String id_Account= String.valueOf(account.getId_Account()) ;
				if (username.equals(userName) && password.equals(passWord)) {
					if (quyen1 != null && username.contains("NV")) {
						request.getRequestDispatcher("/HomePageDB").forward(request, response);
					} else if (quyen2 != null ) {
						CookieUtils.add("id_Account", id_Account, 2, response);
						request.getRequestDispatcher("/TrangChuServlet").forward(request, response);
					}
				}else {
					request.setAttribute("message", "invalid username or password");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/views/Login.jsp").forward(request, response);
	}

}
