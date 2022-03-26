package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import connection.DBConnection;

import java.util.ArrayList;
import java.util.List;

import model.Account;
import model.GioHang;
import model.HoaDonBanHang;
import model.KhachHang;
import model.SanPham;
import model.ThongTinKhachHang_Views;

public class DAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
//Select
	public List<ThongTinKhachHang_Views> getThongTinKhachHang_Views() {
		List<ThongTinKhachHang_Views> list = new ArrayList<>();
		String query = "select * from ThongTinKhachHang_Views";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new ThongTinKhachHang_Views(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getInt(6),rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public List<SanPham> getAllSanPham() {
		List<SanPham> list = new ArrayList<>();
		String query = "select * from ThongTinSP";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new SanPham(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getInt(8)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public SanPham getSanPham(String txt) {
		String query = "select * from dbo.f_ChiTietSanPham(?)";
		List<SanPham> list = new ArrayList<>();
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, txt);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new SanPham(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getInt(8));
			}
		} catch (Exception e) {
		}
		return null;
	}
	public List<GioHang> getAllGioHang() {
		List<GioHang> list = new ArrayList<>();
		String query = "select * from GioHang";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new GioHang(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4),rs.getInt(5)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public List<GioHang> getGioHang(int id_Account ) {
		List<GioHang> list = new ArrayList<>();
		String query = "select * from GioHang where Id_Account=?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1,id_Account);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new GioHang(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4),rs.getInt(5)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public List<Account> getAllAccount() {
		List<Account> list = new ArrayList<>();
		String query = "select * from Account";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
//Insert
	public Account insertAccount(String userName, String password){
		String query = "INSERT INTO Account (UserName, PassWord) VALUES (?,?)";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1,userName);
			ps.setString(2,password);
			ps.executeUpdate();
		} catch (Exception e) {
		}
		return null;
	}
	public KhachHang insertKhachHang(String hoTen, String ngaySinh, String SDT, String gmail, int id_Account){
		String query = "INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)\r\n"
				+ "VALUES (?,?,?,?,?)";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, hoTen);
			ps.setString(2, ngaySinh);
			ps.setString(3, SDT);
			ps.setString(4, gmail);
			ps.setInt(5,id_Account);
			ps.executeUpdate();
		} catch (Exception e) {
		}
		return null;
	}
	public GioHang insertGioHang(int id_Account,int maSP, String tenSP, int giaSP,int soLuong) {

		String query = "INSERT INTO GioHang(Id_Account,MaSP,TenSP,GiaSP,SoLuong) VALUES (?,?,?,?,?)";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id_Account);
			ps.setInt(2, maSP);
			ps.setString(3, tenSP);
			ps.setDouble(4, giaSP);
			ps.setInt(5, soLuong);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;
	}
	public HoaDonBanHang insertHoaDonBanHang(int id_Account, String username, String firstlastname, String diachi, String numberphone,
			String gender, String nationality, String noted, String ngaylaphoadonbanhang) {

		String query = "exec Insert_HoaDonBanHang @Id_Account=?, @username = ?,@firstlastname = ?,@diachi = ?,@numberphone = ?,@gender = ?,\r\n"
				+ "@nationality = ?,@noted = ?, @ngaylaphoadonbanhang=?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id_Account);
			ps.setString(2, username);
			ps.setString(3, firstlastname);
			ps.setString(4, diachi);
			ps.setString(5, numberphone);
			ps.setString(6, gender);
			ps.setString(7, nationality);
			ps.setString(8, noted);
			ps.setString(9, ngaylaphoadonbanhang);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;
	}
// update
	public GioHang updateGioHang(int id_Account,int maSP, int SoLuong) {

		String query = "update  GioHang set SoLuong = ? where Id_Account=? and MaSP=? ";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, SoLuong);
			ps.setInt(2, id_Account);
			ps.setInt(3, maSP);

			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;
	}
//Delete	
	public GioHang deleteGioHang(int id_Account, int maSP) {
		String query = "EXEC Delete_GioHang @Id_Account=?, @MaSP = ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id_Account);
			ps.setInt(2, maSP);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;
	}

//Search
	public List<SanPham> searchSanPham(String txtSearch) {
		List<SanPham> list = new ArrayList<>();
		String query = "select * from dbo.f_TimKiemSanPham(?)";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1,"%" + txtSearch + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new SanPham(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getInt(8)));
			}
		} catch (Exception e) {
			
		}
		return list;
	}
}
