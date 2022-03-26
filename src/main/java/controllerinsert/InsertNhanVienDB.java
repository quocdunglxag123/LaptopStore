package controllerinsert;

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

/**
 * Servlet implementation class InsertThongTinSanPhamDB
 */
@WebServlet("/InsertNhanVienDB")
public class InsertNhanVienDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String UserName  = request.getParameter("UserName");

		String PassWord = request.getParameter("PassWord");

		String HoTen = request.getParameter("HoTen");

		String NgaySinh = request.getParameter("NgaySinh");

		String SDT = request.getParameter("SDT");

		String QueQuan = request.getParameter("QueQuan");
		String STK = request.getParameter("STK");
		if (UserName != null && PassWord != null &&HoTen != null && NgaySinh != null && SDT != null &&QueQuan != null &&STK != null&& UserName.contains("NV")) {
			DAO dao = new DAO();
			dao.insertAccount(UserName, PassWord);
			
			DAO daoget = new DAO();
			List<Account> list = daoget.getAllAccount();
			Account lastaccount=list.get(list.size()-1);
			int id_Account= lastaccount.getId_Account();
			
			DAONHANVIEN daonv = new DAONHANVIEN();
			daonv.insertNhanVien(HoTen, NgaySinh, SDT, QueQuan, STK, id_Account);
		}

		request.getRequestDispatcher("/viewsnhanvien/InsertNhanVienDB.jsp").forward(request, response);
	}

}
