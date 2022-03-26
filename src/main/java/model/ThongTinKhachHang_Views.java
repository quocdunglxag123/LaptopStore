package model;

public class ThongTinKhachHang_Views {
	private int MaKH;
	private String HoTen;
	private String NgaySinh;
	private String SDT;
	private String Gmail;
	private int DiemTichLuy;
	private String ThoiGianTichLuy;

	public ThongTinKhachHang_Views() {
	}

	public ThongTinKhachHang_Views(int maKH, String hoTen, String ngaySinh, String sDT, String gmail, int diemTichLuy,
			String thoiGianTichLuy) {
		super();
		MaKH = maKH;
		HoTen = hoTen;
		NgaySinh = ngaySinh;
		SDT = sDT;
		Gmail = gmail;
		DiemTichLuy = diemTichLuy;
		ThoiGianTichLuy = thoiGianTichLuy;
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

	public int getDiemTichLuy() {
		return DiemTichLuy;
	}

	public void setDiemTichLuy(int diemTichLuy) {
		DiemTichLuy = diemTichLuy;
	}

	public String getThoiGianTichLuy() {
		return ThoiGianTichLuy;
	}

	public void setThoiGianTichLuy(String thoiGianTichLuy) {
		ThoiGianTichLuy = thoiGianTichLuy;
	}

	@Override
	public String toString() {
		return "ThongTinKhachHang_Views [MaKH=" + MaKH + ", HoTen=" + HoTen + ", NgaySinh=" + NgaySinh + ", SDT=" + SDT
				+ ", Gmail=" + Gmail + ", DiemTichLuy=" + DiemTichLuy + ", ThoiGianTichLuy=" + ThoiGianTichLuy + "]";
	}

}
