package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
import model.SanPham;

/**
 * Servlet implementation class SanPhamServlet
 */
@WebServlet("/SanPhamNoLoginServlet")
public class SanPhamNoLoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String txtSearch = request.getParameter("keysearch");
		DAO dao = new DAO();
		List<SanPham> list = dao.getAllSanPham();
		List<SanPham> listSearch = dao.searchSanPham(txtSearch);
		
		int a = list.size();
		int b = listSearch.size();
		
		if(b != 0) {
			request.setAttribute("listSP", listSearch);
			request.setAttribute("search", txtSearch);
			request.getRequestDispatcher("/views/SanPhamNoLogin.jsp").forward(request, response);
		}
		else {
			request.setAttribute("listSP", list);
			request.getRequestDispatcher("/views/SanPhamNoLogin.jsp").forward(request, response);
		}
	}

}
