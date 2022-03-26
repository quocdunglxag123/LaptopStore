package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;

import connection.DBConnection;
import model.Account;
import model.HoaDonBanHang;
import model.HoaDonDatHang;
import model.KhachHang;
import model.NhaCungCap;
import model.NhanVien;
import model.SanPham;
import model.ThongKe;
import model.ThongTinUuDai;

public class DAONHANVIEN {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

// select
	// HoaDonBanHang
	public List<HoaDonBanHang> getAllHoaDonBanHang() {
		List<HoaDonBanHang> list = new ArrayList<>();
		String query = "select * from HoaDonBanHang_Views";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(
						new HoaDonBanHang(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5),
								rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public HoaDonBanHang getHoaDonBanHang(int maHDBH) {
		String query = "select * from HoaDonBanHang where MaHDBH= ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, maHDBH);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new HoaDonBanHang(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	// NhanVien
	public List<NhanVien> getAllNhanVien() {
		List<NhanVien> list = new ArrayList<>();
		String query = "select * from NhanVien_Views";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new NhanVien(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getInt(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public NhanVien getNhanVien(int maNV) {
		String query = "select * from NhanVien_Views where MaNV= ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, maNV);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new NhanVien(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getInt(7));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	// Account
	public List<Account> getAllAccount() {
		List<Account> list = new ArrayList<>();
		String query = "select * from Account_Views";
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

	public Account getAccount(int id_Account) {
		String query = "select * from Account_Views where Id_Account= ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id_Account);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Account(rs.getInt(1), rs.getString(2), rs.getString(3));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	// HoaDonDatHang
	public List<HoaDonDatHang> getAllHoaDonDatHang() {
		List<HoaDonDatHang> list = new ArrayList<>();
		String query = "select * from HoaDonDatHang_Views";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new HoaDonDatHang(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getInt(5),
						rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10)));
			}
		} catch (Exception e) {
			System.out.print(e);
		}
		return list;
	}

	public HoaDonDatHang getHoaDonDatHang(int maHDDH) {
		String query = "select * from HoaDonDatHang_Views where MaHDDH= ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, maHDDH);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new HoaDonDatHang(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getInt(5),
						rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	// KhachHang
	public List<KhachHang> getAllKhachHang() {
		List<KhachHang> list = new ArrayList<>();
		String query = "select * from KhachHang";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new KhachHang(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getInt(6)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public KhachHang getKhachHang(int maKH) {
		String query = "select * from KhachHang where MaKH= ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, maKH);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new KhachHang(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getInt(6));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	// NhaCungCap
	public List<NhaCungCap> getAllNhaCungCap() {
		List<NhaCungCap> list = new ArrayList<>();
		String query = "select * from NhaCungCap_Views";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new NhaCungCap(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public NhaCungCap getNhaCungCap(int maNCC) {
		String query = "select * from NhaCungCap_Views where MaNCC= ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, maNCC);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new NhaCungCap(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	// ThongTinSanPham
	public List<SanPham> getAllThongTinSanPham() {
		List<SanPham> list = new ArrayList<>();
		String query = "select * from ThongTinSP_Views";
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

	public SanPham getSanPham(int maSP) {
		String query = "select * from ThongTinSP_Views where MaSP= ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, maSP);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new SanPham(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getInt(8));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	// ThongTinUuDai
	public List<ThongTinUuDai> getAllThongTinUuDai() {
		List<ThongTinUuDai> list = new ArrayList<>();
		String query = "select * from ThongTinUuDai";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new ThongTinUuDai(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

// Update

	// HoaDonBanHang
	public HoaDonBanHang editHoaDonBanHang(int MaHDBH, String userName, String firstlastname, String diachi,
			String numberphone, String gender, String nationality, String noted) {
		String query = "update HoaDonBanHang_Views set userName = ?,firstlastname= ?, diachi= ?, numberphone= ?, gender= ?, nationality= ?, noted= ?  where MaHDBH=?;";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, userName);
			ps.setString(2, firstlastname);
			ps.setString(3, diachi);
			ps.setString(4, numberphone);
			ps.setString(5, gender);
			ps.setString(6, nationality);
			ps.setString(7, noted);
			ps.setInt(8, MaHDBH);
			ps.executeUpdate();
		} catch (Exception e) {
		}
		return null;
	}

// HoaDonDatHang
	public HoaDonDatHang editHoaDonDatHang(int MaNCC, String NgayLapHoaDonDatHang, int GiaTri, int SoLuongDat,
			int MaHDDH) {
		String query = "update HoaDonDatHang set MaNCC = ?, NgayLapHoaDonDatHang= ?, GiaTri= ?, SoLuongDat= ? where MaHDDH=?;";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, MaNCC);
			ps.setString(2, NgayLapHoaDonDatHang);
			ps.setInt(3, GiaTri);
			ps.setInt(4, SoLuongDat);
			ps.setInt(5, MaHDDH);
			ps.executeUpdate();
		} catch (Exception e) {
		}
		return null;
	}

	// NhanVien
	public NhanVien editNhanVien(int maNV, String hoTen, String ngaySinh, String SDT, String queQuan, String STK,
			int id_Account) {
		String query = "update NhanVien_Views set HoTen = ?,NgaySinh= ? ,SDT= ? ,QueQuan= ? ,STK= ?  where MaNV=?;";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, hoTen);
			ps.setString(2, ngaySinh);
			ps.setString(3, SDT);
			ps.setString(4, queQuan);
			ps.setString(5, STK);
			ps.setInt(6, maNV);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;

	}

	// Account
	public Account editAccount(int id_Account, String userName, String passWord) {
		String query = "update Account_Views set UserName = ?,PassWord= ? where Id_Account=?;";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, userName);
			ps.setString(2, passWord);
			ps.setInt(3, id_Account);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;

	}

	// KhachHang
	public KhachHang editKhachHang(int maKH, String hoTen, String ngaySinh, String SDT, String gmail, int id_Account) {
		String query = "update KhachHang set HoTen = ?,NgaySinh= ? ,SDT= ? ,Gmail= ? where MaKH=?;";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, hoTen);
			ps.setString(2, ngaySinh);
			ps.setString(3, SDT);
			ps.setString(4, gmail);
			ps.setInt(5, maKH);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;

	}

	// NhaCungCap
	public NhaCungCap editNhaCungCap(int maNCC, String tenNCC, String diaChi, String dienThoai) {
		String query = "update NhaCungCap_Views set TenNCC = ?,DiaChi= ?,DienThoai=? where MaNCC=?;";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, tenNCC);
			ps.setString(2, diaChi);
			ps.setString(3, dienThoai);
			ps.setInt(4, maNCC);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;

	}

	// ThongTinSanPham
	public SanPham editSanPham(int maSP, String tenSP, String imageDataName, int giaSP, String thoiGianBaoHanh,
			String xuatXu, String thongSo, int SoLuongTon) {
		String query = "exec Update_ThongTinSP  @MaSP=?, @TenSP = ?,@ImageDataName= ?,@GiaSP=?,@ThoiGianBaoHanh=?, @XuatXu= ?,@ThongSo = ?, @SoLuongTon= ?;";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, maSP);
			ps.setString(2, tenSP);
			ps.setString(3, imageDataName);
			ps.setInt(4, giaSP);
			ps.setString(5, thoiGianBaoHanh);
			ps.setString(6, xuatXu);
			ps.setString(7, thongSo);
			ps.setInt(8, SoLuongTon);

			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;

	}

	// ThongTinUuDai
//Insert
	// Nha Cung Cap
	public NhaCungCap insertNhaCungCap(String tenNCC, String diaChi, String dienThoai) {

		String query = "INSERT INTO NhaCungCap(TenNCC, DiaChi, DienThoai) VALUES (?, ?, ?);";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, tenNCC);
			ps.setString(2, diaChi);
			ps.setString(3, dienThoai);

			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;
	}

	// ThongTinSP
	public SanPham insertSanPham(String TenSP, String ImageDataName, int GiaSP, String ThoiGianBaoHanh, String XuatXu,
			String ThongSo, int SoLuongTon) {

		String query = "exec Insert_ThongTinSP @TenSP = ?,@ImageDataName = ?,@GiaSP = ?,@ThoiGianBaoHanh = ?,@XuatXu = ?,@ThongSo = ?,@SoLuongTon = ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, TenSP);
			ps.setString(2, ImageDataName);
			ps.setInt(3, GiaSP);
			ps.setString(4, ThoiGianBaoHanh);
			ps.setString(5, XuatXu);
			ps.setString(6, ThongSo);
			ps.setInt(7, SoLuongTon);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;
	}

	// HoaDonDatHang
	public HoaDonDatHang insertHoaDonDatHang(int MaNCC, int MaNV, int MaSP, String NgayLapHoaDonDatHang, int GiaTri,
			int SoLuongDat) {

		String query = "INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat) VALUES (?, ?, ?,?,?,?);";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, MaNCC);
			ps.setInt(2, MaNV);
			ps.setInt(3, MaSP);
			ps.setString(4, NgayLapHoaDonDatHang);
			ps.setInt(5, GiaTri);
			ps.setInt(6, SoLuongDat);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;
	}

	// NhanVien
	public NhanVien insertNhanVien(String HoTen, String NgaySinh, String SDT, String QueQuan, String STK,
			int Id_Account) {

		String query = "INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account) VALUES (?, ?, ?,?,?,?);";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, HoTen);
			ps.setString(2, NgaySinh);
			ps.setString(3, SDT);
			ps.setString(4, QueQuan);
			ps.setString(5, STK);
			ps.setInt(6, Id_Account);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;
	}

// Delete
	// HoaDonBanHang
	public List<HoaDonBanHang> deleteHoaDonBanHang(int maHDBH) {

		String query = "delete from HoaDonBanHang_Views where MaHDBH = ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, maHDBH);
			rs = ps.executeQuery();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	// NhanVien
	public List<NhanVien> deleteNhanVien(int maNV) {

		String query = "delete from NhanVien_Views where MaNV = ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, maNV);
			rs = ps.executeQuery();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	// Account
	public List<Account> deleteAccount(int id) {

		String query = "delete from Account where Id_Account = ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	// HoaDonDatHang
	public List<HoaDonDatHang> deleteHoaDonDatHang(int maHDDH) {

		String query = "delete from HoaDonDatHang where MaHDDH = ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, maHDDH);
			rs = ps.executeQuery();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	// KhachHang
	public List<KhachHang> deleteKhachHang(int maKH) {

		String query = "delete from KhachHang where MaKH = ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, maKH);
			rs = ps.executeQuery();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	// NhaCungCap

	public List<NhaCungCap> deleteNhaCungCap(int maNCC) {

		String query = "delete from NhaCungCap_Views where MaNCC = ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, maNCC);
			rs = ps.executeQuery();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	// ThongTinSanPham
	public List<SanPham> deleteThongTinSanPham(int maSP) {

		String query = "delete from ThongTinSP_Views where MaSP = ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, maSP);
			rs = ps.executeQuery();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	// ThongTinUuDai

	public List<ThongTinUuDai> deleteThongTinUuDai(int maKH) {

		String query = "delete from ThongTinUuDai where MaKH = ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, maKH);
			rs = ps.executeQuery();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

// Filter
	// ngay
	public List<ThongKe> filterngay(String date) {
		List<ThongKe> list = new ArrayList<>();
		String query = "select  MaHDBH,HoaDonBanHang.Id_Account,userName,firstlastname,diachi, numberphone,gender,nationality,noted,ngaylaphoadonbanhang,MaSP,TenSP,GiaSP,SoLuong from HoaDonBanHang,GioHang where HoaDonBanHang.Id_Account=GioHang.Id_Account and Day(HoaDonBanHang.ngaylaphoadonbanhang) like ? ";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + date + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new ThongKe(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10),
						rs.getInt(11), rs.getString(12), rs.getInt(13), rs.getInt(14)));
			}
		} catch (Exception e) {
			System.out.print(e);
		}
		return list;
	}

	// thang
	public List<ThongKe> filterthang(String month) {
		List<ThongKe> list = new ArrayList<>();
		String query = "select  MaHDBH,HoaDonBanHang.Id_Account,userName,firstlastname,diachi, numberphone,gender,nationality,noted,ngaylaphoadonbanhang,MaSP,TenSP,GiaSP,SoLuong from HoaDonBanHang,GioHang where HoaDonBanHang.Id_Account=GioHang.Id_Account and month(HoaDonBanHang.ngaylaphoadonbanhang) like ? ";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + month + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new ThongKe(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10),
						rs.getInt(11), rs.getString(12), rs.getInt(13), rs.getInt(14)));
			}
		} catch (Exception e) {
			System.out.print(e);
		}
		return list;
	}

	// nam
	public List<ThongKe> filternam(String year) {
		List<ThongKe> list = new ArrayList<>();
		String query = "select  MaHDBH,HoaDonBanHang.Id_Account,userName,firstlastname,diachi, numberphone,gender,nationality,noted,ngaylaphoadonbanhang,MaSP,TenSP,GiaSP,SoLuong from HoaDonBanHang,GioHang where HoaDonBanHang.Id_Account=GioHang.Id_Account and Year(HoaDonBanHang.ngaylaphoadonbanhang) like ? ";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + year + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new ThongKe(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10),
						rs.getInt(11), rs.getString(12), rs.getInt(13), rs.getInt(14)));
			}
		} catch (Exception e) {
			System.out.print(e);
		}
		return list;
	}
	//filter daymonthyear
	public List<ThongKe> filter(String date, String month, String year) {
		List<ThongKe> list = new ArrayList<>();
		String query = "select MaHDBH,HoaDonBanHang.Id_Account,userName,firstlastname,diachi, numberphone,gender,nationality,noted,ngaylaphoadonbanhang,MaSP,TenSP,GiaSP,SoLuong from HoaDonBanHang,GioHang where HoaDonBanHang.Id_Account=GioHang.Id_Account and day(HoaDonBanHang.ngaylaphoadonbanhang) like ?  and month(HoaDonBanHang.ngaylaphoadonbanhang) like ? and Year(HoaDonBanHang.ngaylaphoadonbanhang) like ?   ";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + date + "%");
			ps.setString(2, "%" + month + "%");
			ps.setString(3, "%" + year + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new ThongKe(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10),
						rs.getInt(11), rs.getString(12), rs.getInt(13), rs.getInt(14)));
			}
		} catch (Exception e) {
			System.out.print(e);
		}
		return list;
	}
	// all
	public List<ThongKe> filterall() {
		List<ThongKe> list = new ArrayList<>();
		String query = "select MaHDBH,HoaDonBanHang.Id_Account,userName,firstlastname,diachi, numberphone,gender,nationality,noted,ngaylaphoadonbanhang,MaSP,TenSP,GiaSP,SoLuong from HoaDonBanHang,GioHang where HoaDonBanHang.Id_Account=GioHang.Id_Account ";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new ThongKe(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10),
						rs.getInt(11), rs.getString(12), rs.getInt(13), rs.getInt(14)));
			}
		} catch (Exception e) {
			System.out.print(e);
		}
		return list;
	}

	public static void main(String[] args) {
		DAONHANVIEN dao = new DAONHANVIEN();
		List<ThongKe> list = dao.filterall();
		for (ThongKe o : list) {
			System.out.print(o);
		}
	}

}
