package model;

public class ThongTinUuDai {
	private int MaKH;
	private int MaHDBH;
	private int DiemTichLuy;
	private String ThoiGianTichLuy;

	public ThongTinUuDai() {
	}

	public ThongTinUuDai(int maKH, int maHDBH, int diemTichLuy, String thoiGianTichLuy) {
		super();
		MaKH = maKH;
		MaHDBH = maHDBH;
		DiemTichLuy = diemTichLuy;
		ThoiGianTichLuy = thoiGianTichLuy;
	}

	public int getMaKH() {
		return MaKH;
	}

	public void setMaKH(int maKH) {
		MaKH = maKH;
	}

	public int getMaHDBH() {
		return MaHDBH;
	}

	public void setMaHDBH(int maHDBH) {
		MaHDBH = maHDBH;
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
		return "ThongTinUuDai [MaKH=" + MaKH + ", MaHDBH=" + MaHDBH + ", DiemTichLuy=" + DiemTichLuy
				+ ", ThoiGianTichLuy=" + ThoiGianTichLuy + "]";
	}

}
