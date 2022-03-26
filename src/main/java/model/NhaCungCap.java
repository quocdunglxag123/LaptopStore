package model;

public class NhaCungCap {
	private int MaNCC;
	private String TenNCC;
	private String DiaChi;
	private String DienThoai;

	public NhaCungCap() {
	}

	public NhaCungCap(int maNCC, String tenNCC, String diaChi, String dienThoai) {
		super();
		MaNCC = maNCC;
		TenNCC = tenNCC;
		DiaChi = diaChi;
		DienThoai = dienThoai;
	}

	public int getMaNCC() {
		return MaNCC;
	}

	public void setMaNCC(int maNCC) {
		MaNCC = maNCC;
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

	@Override
	public String toString() {
		return "NhaCungCap [MaNCC=" + MaNCC + ", TenNCC=" + TenNCC + ", DiaChi=" + DiaChi + ", DienThoai=" + DienThoai
				+ "]";
	}

}
