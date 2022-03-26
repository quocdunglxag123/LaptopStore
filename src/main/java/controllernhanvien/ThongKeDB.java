package controllernhanvien;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

import dao.DAONHANVIEN;
import model.GioHang;
import model.ThongKe;

/**
 * Servlet implementation class ThongKeDB
 */
@WebServlet("/ThongKeDB")
public class ThongKeDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String ngaycheck = request.getParameter("ngaycheck");
		String thangcheck = request.getParameter("thangcheck");
		String namcheck = request.getParameter("namcheck");
		String ngaythangnam = request.getParameter("ngaythangnam");
		
		DAONHANVIEN dao = new DAONHANVIEN();
		if (ngaythangnam != null) {
			String[] words = ngaythangnam.split("-"); 
			String date = words[2];
			String month = words[1];
			String year = words[0];
			
			if (ngaycheck != null) { 
				int dateint= Integer.parseInt(date);
				List<ThongKe> list = dao.filterngay(String.valueOf(dateint));
				request.setAttribute("listfilter", list);
				int tongtien = 0;
				int tongsoluong = 0;
				for (ThongKe o : list) {
					tongtien = tongtien + (o.getGiaSP() * o.getSoLuong());
					tongsoluong = tongsoluong + o.getSoLuong();
				}
				request.setAttribute("tongtien", tongtien);
				request.setAttribute("tongsoluong", tongsoluong);
			} else if (thangcheck != null) {
				int monthint= Integer.parseInt(month);
				List<ThongKe> list = dao.filterthang(String.valueOf(monthint));
				
		
				request.setAttribute("listfilter", list);
				int tongtien = 0;
				int tongsoluong = 0;
				for (ThongKe o : list) {
					int tong= o.getGiaSP() * o.getSoLuong() ;
					
					tongtien = tongtien +tong ;
					
					tongsoluong = tongsoluong + o.getSoLuong();
					

				}
				request.setAttribute("tongtien", tongtien);
				request.setAttribute("tongsoluong", tongsoluong);
			} else if (namcheck != null) {
				List<ThongKe> list = dao.filternam(year);
				
				request.setAttribute("listfilter", list);
				int tongtien = 0;
				int tongsoluong = 0;
				for (ThongKe o : list) {
					tongtien = tongtien + (o.getGiaSP() * o.getSoLuong());
					tongsoluong = tongsoluong + o.getSoLuong();
				}
				request.setAttribute("tongtien", tongtien);
				request.setAttribute("tongsoluong", tongsoluong);
			}else {
				int dateint= Integer.parseInt(date);
				int monthint= Integer.parseInt(month);
				List<ThongKe> list = dao.filter(String.valueOf(dateint),String.valueOf(monthint),year);
				request.setAttribute("listfilter", list);
				int tongtien = 0;
				int tongsoluong = 0;
				
				for (ThongKe o : list) {
					tongtien = tongtien + (o.getGiaSP() * o.getSoLuong());
					tongsoluong = tongsoluong + o.getSoLuong();
				}
				request.setAttribute("tongtien", tongtien);
				request.setAttribute("tongsoluong", tongsoluong);
			}
			
		} else {
			
			List<ThongKe> list = dao.filterall();
			request.setAttribute("listfilter", list);
			int tongtien = 0;
			int tongsoluong = 0;
			
			for (ThongKe o : list) {
				tongtien = tongtien + (o.getGiaSP() * o.getSoLuong());
				tongsoluong = tongsoluong + o.getSoLuong();
			}
			request.setAttribute("tongtien", tongtien);
			request.setAttribute("tongsoluong", tongsoluong);
		}
		
		request.setAttribute("ngaycheck", ngaycheck);
		request.setAttribute("thangcheck", thangcheck);
		request.setAttribute("namcheck", namcheck);
		request.getRequestDispatcher("/viewsnhanvien/ThongKeDB.jsp").forward(request, response);
	}

}
