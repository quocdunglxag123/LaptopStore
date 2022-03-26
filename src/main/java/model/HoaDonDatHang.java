package model;

public class HoaDonDatHang {
	private int MaHDDH;
	private int MaNCC;	
	private int MaSP;
	private String TenSP;
	private int SoLuongDat;
	private int GiaTri;

	private String TenNCC;
	private String DiaChi;
	private String DienThoai;
	private String NgayLapHoaDonDatHang;
	public HoaDonDatHang() {}
	public HoaDonDatHang(int maHDDH, int maNCC, int maSP, String tenSP, int soLuongDat, int giaTri, String tenNCC,
			String diaChi, String dienThoai, String ngayLapHoaDonDatHang) {
		super();
		MaHDDH = maHDDH;
		MaNCC = maNCC;
		MaSP = maSP;
		TenSP = tenSP;
		SoLuongDat = soLuongDat;
		GiaTri = giaTri;
		TenNCC = tenNCC;
		DiaChi = diaChi;
		DienThoai = dienThoai;
		NgayLapHoaDonDatHang = ngayLapHoaDonDatHang;
	}
	public int getMaHDDH() {
		return MaHDDH;
	}
	public void setMaHDDH(int maHDDH) {
		MaHDDH = maHDDH;
	}
	public int getMaNCC() {
		return MaNCC;
	}
	public void setMaNCC(int maNCC) {
		MaNCC = maNCC;
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
	public int getSoLuongDat() {
		return SoLuongDat;
	}
	public void setSoLuongDat(int soLuongDat) {
		SoLuongDat = soLuongDat;
	}
	public int getGiaTri() {
		return GiaTri;
	}
	public void setGiaTri(int giaTri) {
		GiaTri = giaTri;
	}
	public String getTenNCC() {
		return TenNCC;
	}
	public void setTenNCC(String tenNCC) {
		TenNCC = tenNCC;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	public String getDienThoai() {
		return DienThoai;
	}
	public void setDienThoai(String dienThoai) {
		DienThoai = dienThoai;
	}
	public String getNgayLapHoaDonDatHang() {
		return NgayLapHoaDonDatHang;
	}
	public void setNgayLapHoaDonDatHang(String ngayLapHoaDonDatHang) {
		NgayLapHoaDonDatHang = ngayLapHoaDonDatHang;
	}
	@Override
	public String toString() {
		return "HoaDonDatHang [MaHDDH=" + MaHDDH + ", MaNCC=" + MaNCC + ", MaSP=" + MaSP + ", TenSP=" + TenSP
				+ ", SoLuongDat=" + SoLuongDat + ", GiaTri=" + GiaTri + ", TenNCC=" + TenNCC + ", DiaChi=" + DiaChi
				+ ", DienThoai=" + DienThoai + ", NgayLapHoaDonDatHang=" + NgayLapHoaDonDatHang + "]";
	}
	
	
	
	
	
	
	
}
