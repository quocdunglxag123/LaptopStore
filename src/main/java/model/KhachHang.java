package model;

public class KhachHang {
	private int MaKH;
	private String HoTen;
	private String NgaySinh;
	private String SDT;
	private String Gmail;
	private int Id_Account;

	public KhachHang() {
	}

	public KhachHang(int maKH, String hoTen, String ngaySinh, String sDT, String gmail, int id_Account) {
		super();
		MaKH = maKH;
		HoTen = hoTen;
		NgaySinh = ngaySinh;
		SDT = sDT;
		Gmail = gmail;
		Id_Account = id_Account;
	}

	public int getMaKH() {
		return MaKH;
	}

	public void setMaKH(int maKH) {
		MaKH = maKH;
	}

	public String getHoTen() {
		return HoTen;
	}

	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}

	public String getNgaySinh() {
		return NgaySinh;
	}

	public void setNgaySinh(String ngaySinh) {
		NgaySinh = ngaySinh;
	}

	public String getSDT() {
		return SDT;
	}

	public void setSDT(String sDT) {
		SDT = sDT;
	}

	public String getGmail() {
		return Gmail;
	}

	public void setGmail(String gmail) {
		Gmail = gmail;
	}

	public int getId_Account() {
		return Id_Account;
	}

	public void setId_Account(int id_Account) {
		Id_Account = id_Account;
	}

	@Override
	public String toString() {
		return "KhachHang [MaKH=" + MaKH + ", HoTen=" + HoTen + ", NgaySinh=" + NgaySinh + ", SDT=" + SDT + ", Gmail="
				+ Gmail + ", Id_Account=" + Id_Account + "]";
	}

}
