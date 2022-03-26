package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.DBConnection;
import dao.DAO;
import model.SanPham;

/**
 * Servlet implementation class ChiTietSanPhamServlet
 */
@WebServlet("/ChiTietSanPhamNoLoginServlet")
public class ChiTietSanPhamNoLoginServlet extends HttpServlet {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

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
	
		String maSP = request.getParameter("maSP");
		SanPham listChiTietSanPham = new SanPham();
		DAO dao = new DAO();

		listChiTietSanPham= dao.getSanPham(maSP);
		request.setAttribute("ctsp", listChiTietSanPham);

		request.getRequestDispatcher("/views/ChiTietSanPhamNoLogin.jsp").forward(request, response);
	}

}
