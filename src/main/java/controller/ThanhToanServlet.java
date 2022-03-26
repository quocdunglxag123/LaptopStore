package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cookie.CookieUtils;
import dao.DAO;
import model.GioHang;

@WebServlet("/ThanhToanServlet")
public class ThanhToanServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id_Account= Integer.parseInt(CookieUtils.get("id_Account",request)) ;
		int sttspupdate=0;
		String firstlastname = request.getParameter("firstlastname");
		String username = request.getParameter("username");
		String diachi = request.getParameter("diachi");
		String numberphone = request.getParameter("numberphone");
		String genderM = request.getParameter("genderM");
		String genderF = request.getParameter("genderF");
		String nationality = request.getParameter("nationality");
		String noted = request.getParameter("noted");
		String ngaylaphoadonbanhang = java.time.LocalDateTime.now().toString();
		String genderCheck = null;
		if (genderM == null && genderF == null)
			genderCheck = "LGBT";
		else if (genderM == null)
			genderCheck = "Female";
		else
			genderCheck = "Male";
		DAO dao = new DAO();
		dao.insertHoaDonBanHang(id_Account,username, firstlastname, diachi, numberphone, genderCheck, nationality, noted,ngaylaphoadonbanhang);
		
		request.setAttribute("firstlastname", firstlastname);
		request.setAttribute("diachi", diachi);
		request.setAttribute("numberphone", numberphone);
		request.setAttribute("gender", genderCheck);
		request.setAttribute("nationality", nationality);
		request.setAttribute("noted", noted);
		
		for(int i=1 ;;i++) {
			String SoLuong= request.getParameter("SoLuong"+i);
			System.out.print(SoLuong);
			if(SoLuong!= null)
			{
				DAO select = new DAO();
				List<GioHang> listselect = select.getGioHang(id_Account);
				int skip=0;
				for (GioHang o : listselect) {
					if(skip != sttspupdate) {
						skip++;
						continue;
					}
					else if(i!=sttspupdate)
					{
					DAO update= new DAO();
					update.updateGioHang(id_Account, o.getMaSP() , Integer.parseInt(SoLuong));
					sttspupdate++;
					break;
					} else {
						break;
					}
				}
			}
			else 
				break;
		}
		
		List<GioHang> list = dao.getGioHang(id_Account);
		request.setAttribute("listGioHang", list);
		int tongtien = 0,soluong=0;
		for (GioHang o : list) {
			tongtien = tongtien + (o.getGiaSP()* o.getSoLuong());
			soluong = soluong +  o.getSoLuong();
		}
		request.setAttribute("tongtien", tongtien);
		request.setAttribute("soluong", soluong);
		request.getRequestDispatcher("/views/ThanhToan.jsp").forward(request, response);

	}

}
