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


/**
 * Servlet implementation class ThongTinKhachHang_Views
 */
@WebServlet("/ThongTinKhachHang_Views")
public class ThongTinKhachHang_Views extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAO dao = new DAO();
		List<model.ThongTinKhachHang_Views> list = dao.getThongTinKhachHang_Views();
		request.setAttribute("listThongTinKhachHang_Views", list);
		
		request.getRequestDispatcher("/views/ThongTinKhachHang_Views.jsp").forward(request, response);
	}

}
