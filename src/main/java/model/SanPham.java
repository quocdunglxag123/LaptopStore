package model;

/**
 * @author quocd
 *
 */
public class SanPham {
	private int MaSP;
	private String TenSP;
	private String ImageDataName;
	private int GiaSP;
	private String ThoiGianBaoHanh;
	private String xuatXu;
	private String ThongSo;
	private int SoLuongTon;

	public SanPham() {

	}

	public SanPham(int maSP, String tenSP, String imageDataName, int giaSP, String thoiGianBaoHanh, String xuatXu,
			String thongSo, int soLuongTon) {
		super();
		this.MaSP = maSP;
		this.TenSP = tenSP;
		this.ImageDataName = imageDataName;
		this.GiaSP = giaSP;
		this.ThoiGianBaoHanh = thoiGianBaoHanh;
		this.xuatXu = xuatXu;
		this.ThongSo = thongSo;
		this.SoLuongTon = soLuongTon;
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

	public String getImageDataName() {
		return ImageDataName;
	}

	public void setImageDataName(String imageDataName) {
		this.ImageDataName = imageDataName;
	}

	public int getGiaSP() {
		return GiaSP;
	}

	public void setGiaSP(int giaSP) {
		GiaSP = giaSP;
	}

	public String getThoiGianBaoHanh() {
		return ThoiGianBaoHanh;
	}

	public void setThoiGianBaoHanh(String thoiGianBaoHanh) {
		ThoiGianBaoHanh = thoiGianBaoHanh;
	}

	public String getXuatXu() {
		return xuatXu;
	}

	public void setXuatXu(String xuatXu) {
		this.xuatXu = xuatXu;
	}

	public String getThongSo() {
		return ThongSo;
	}

	public void setThongSo(String thongSo) {
		ThongSo = thongSo;
	}

	public int getSoLuongTon() {
		return SoLuongTon;
	}

	public void setSoLuongTon(int soLuongTon) {
		SoLuongTon = soLuongTon;
	}

	@Override
	public String toString() {
		return "SanPham [MaSP=" + MaSP + ", TenSP=" + TenSP + ", imageDataName=" + ImageDataName + ", GiaSP=" + GiaSP
				+ ", ThoiGianBaoHanh=" + ThoiGianBaoHanh + ", xuatXu=" + xuatXu + ", ThongSo=" + ThongSo
				+ ", SoLuongTon=" + SoLuongTon + "]";
	}

	

}
