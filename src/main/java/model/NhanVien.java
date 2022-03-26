package model;

public class NhanVien {
	private int MaNV;
	private String HoTen;
	private String NgaySinh;
	private String SDT;
	private String QueQuan;
	private String STK;
	private int Id_Account;
	public int getMaNV() {
		return MaNV;
	}
	public void setMaNV(int maNV) {
		MaNV = maNV;
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
	public String getQueQuan() {
		return QueQuan;
	}
	public void setQueQuan(String queQuan) {
		QueQuan = queQuan;
	}
	public String getSTK() {
		return STK;
	}
	public void setSTK(String sTK) {
		STK = sTK;
	}
	public int getId_Account() {
		return Id_Account;
	}
	public void setId_Account(int id_Account) {
		Id_Account = id_Account;
	}
	public NhanVien(int maNV, String hoTen, String ngaySinh, String sDT, String queQuan, String sTK, int id_Account) {
		super();
		MaNV = maNV;
		HoTen = hoTen;
		NgaySinh = ngaySinh;
		SDT = sDT;
		QueQuan = queQuan;
		STK = sTK;
		Id_Account = id_Account;
	}
	@Override
	public String toString() {
		return "NhanVien [MaNV=" + MaNV + ", HoTen=" + HoTen + ", NgaySinh=" + NgaySinh + ", SDT=" + SDT + ", QueQuan="
				+ QueQuan + ", STK=" + STK + ", Id_Account=" + Id_Account + ", getMaNV()=" + getMaNV() + ", getHoTen()="
				+ getHoTen() + ", getNgaySinh()=" + getNgaySinh() + ", getSDT()=" + getSDT() + ", getQueQuan()="
				+ getQueQuan() + ", getSTK()=" + getSTK() + ", getId_Account()=" + getId_Account() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	
	
}
