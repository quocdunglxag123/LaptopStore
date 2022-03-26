package model;

public class ThongKe {
	
	private int MaHDBH;
	private int Id_Account;
	private String userName;
	private String firstlastname;
	private String diachi;
	private String numberphone;
	private String gender;
	private String nationality;
	private String noted;
	private String ngaylaphoadonbanhang;
	private int MaSP;
	private String TenSP;
	private int GiaSP;
	private int SoLuong;
	public ThongKe() {

	}
	public ThongKe(int maHDBH, int id_Account, String userName, String firstlastname, String diachi, String numberphone,
			String gender, String nationality, String noted, String ngaylaphoadonbanhang, int maSP, String tenSP,
			int giaSP, int soLuong) {
		super();
		MaHDBH = maHDBH;
		Id_Account = id_Account;
		this.userName = userName;
		this.firstlastname = firstlastname;
		this.diachi = diachi;
		this.numberphone = numberphone;
		this.gender = gender;
		this.nationality = nationality;
		this.noted = noted;
		this.ngaylaphoadonbanhang = ngaylaphoadonbanhang;
		MaSP = maSP;
		TenSP = tenSP;
		GiaSP = giaSP;
		SoLuong = soLuong;
	}
	public int getMaHDBH() {
		return MaHDBH;
	}
	public void setMaHDBH(int maHDBH) {
		MaHDBH = maHDBH;
	}
	public int getId_Account() {
		return Id_Account;
	}
	public void setId_Account(int id_Account) {
		Id_Account = id_Account;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getFirstlastname() {
		return firstlastname;
	}
	public void setFirstlastname(String firstlastname) {
		this.firstlastname = firstlastname;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getNumberphone() {
		return numberphone;
	}
	public void setNumberphone(String numberphone) {
		this.numberphone = numberphone;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getNoted() {
		return noted;
	}
	public void setNoted(String noted) {
		this.noted = noted;
	}
	public String getNgaylaphoadonbanhang() {
		return ngaylaphoadonbanhang;
	}
	public void setNgaylaphoadonbanhang(String ngaylaphoadonbanhang) {
		this.ngaylaphoadonbanhang = ngaylaphoadonbanhang;
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
		return "ThongKe [MaHDBH=" + MaHDBH + ", Id_Account=" + Id_Account + ", userName=" + userName
				+ ", firstlastname=" + firstlastname + ", diachi=" + diachi + ", numberphone=" + numberphone
				+ ", gender=" + gender + ", nationality=" + nationality + ", noted=" + noted + ", ngaylaphoadonbanhang="
				+ ngaylaphoadonbanhang + ", MaSP=" + MaSP + ", TenSP=" + TenSP + ", GiaSP=" + GiaSP + ", SoLuong="
				+ SoLuong + "]";
	}
	

}
