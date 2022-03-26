package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.If;

import cookie.CookieUtils;
import dao.DAO;
import model.GioHang;

/**
 * Servlet implementation class ShowGioHangServlet
 */
@WebServlet("/ShowGioHangServlet")
public class ShowGioHangServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id_Account = Integer.parseInt(CookieUtils.get("id_Account", request));
		int sttspupdate = 0;

		for (int i = 1;; i++) {
			String SoLuong = request.getParameter("SoLuong" + i);

			if (SoLuong != null) {
				DAO select = new DAO();
				List<GioHang> listselect = select.getGioHang(id_Account);
				int skip = 0;
				for (GioHang o : listselect) {
					if (skip != sttspupdate) {
						skip++;
						continue;
					} else if (i != sttspupdate) {
						DAO update = new DAO();
						update.updateGioHang(id_Account, o.getMaSP(), Integer.parseInt(SoLuong));
						sttspupdate++;
						break;
					} else {
						break;
					}
				}
			} else
				break;
		}
		DAO dao = new DAO();
		List<GioHang> list = dao.getGioHang(id_Account);
		request.setAttribute("listGioHang", list);
		int tongtien = 0;
		for (GioHang o : list) {
			tongtien = tongtien + (o.getGiaSP() * o.getSoLuong());
		}
		request.setAttribute("tongtien", tongtien);
		request.getRequestDispatcher("/views/GioHang.jsp").forward(request, response);
	}

}
