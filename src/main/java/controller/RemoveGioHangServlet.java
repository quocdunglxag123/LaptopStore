package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cookie.CookieUtils;
import dao.DAO;
import model.GioHang;
import model.SanPham;

/**
 * Servlet implementation class RemoveGioHangServlet
 */
@WebServlet("/RemoveGioHangServlet")
public class RemoveGioHangServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id_Account= Integer.parseInt(CookieUtils.get("id_Account",request)) ;
		int maSP = Integer.parseInt(request.getParameter("maSP")) ;
		DAO dao = new DAO();
		dao.deleteGioHang(id_Account,maSP);
		response.sendRedirect("ShowGioHangServlet");
	}

}
