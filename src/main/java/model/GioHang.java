package model;

public class GioHang {
	private int Id_Account;
	private int MaSP;
	private String TenSP;
	private int GiaSP;
	private int SoLuong;
	public GioHang() {

	}
	public GioHang(int id_Account, int maSP, String tenSP, int giaSP, int soLuong) {
		super();
		Id_Account = id_Account;
		MaSP = maSP;
		TenSP = tenSP;
		GiaSP = giaSP;
		SoLuong = soLuong;
	}
	public int getId_Account() {
		return Id_Account;
	}
	public void setId_Account(int id_Account) {
		Id_Account = id_Account;
	}
	public int getMaSP() {
		return MaSP;
	}
	public void setMaSP(int maSP) {
		MaSP = maSP;
	}
	public String getTenSP() {
		return TenSP;
	}
	public void setTenSP(String tenSP) {
		TenSP = tenSP;
	}
	public int getGiaSP() {
		return GiaSP;
	}
	public void setGiaSP(int giaSP) {
		GiaSP = giaSP;
	}
	public int getSoLuong() {
		return SoLuong;
	}
	public void setSoLuong(int soLuong) {
		SoLuong = soLuong;
	}
	@Override
	public String toString() {
		return "GioHang [Id_Account=" + Id_Account + ", MaSP=" + MaSP + ", TenSP=" + TenSP + ", GiaSP=" + GiaSP
				+ ", SoLuong=" + SoLuong + "]";
	}



}
