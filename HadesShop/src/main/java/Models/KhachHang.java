package Models;

public class KhachHang {
	private int MaKH;
	private String TenKh,DiaChiKH,sdtKH,EmailKH,MatKhau,AnhDaiDien; 
	public KhachHang() {
		super();
		// TODO Auto-generated constructor stub
	}
	public KhachHang(int maKH, String tenKh, String diaChiKH, String sdtKH, String emailKH, String matKhau,
			String anhDaiDien) {
		super();
		MaKH = maKH;
		TenKh = tenKh;
		DiaChiKH = diaChiKH;
		this.sdtKH = sdtKH;
		EmailKH = emailKH;
		MatKhau = matKhau;
		AnhDaiDien = anhDaiDien;
	}
	public int getMaKH() {
		return MaKH;
	}
	public void setMaKH(int maKH) {
		MaKH = maKH;
	}
	public String getTenKh() {
		return TenKh;
	}
	public void setTenKh(String tenKh) {
		TenKh = tenKh;
	}
	public String getDiaChiKH() {
		return DiaChiKH;
	}
	public void setDiaChiKH(String diaChiKH) {
		DiaChiKH = diaChiKH;
	}
	public String getSdtKH() {
		return sdtKH;
	}
	public void setSdtKH(String sdtKH) {
		this.sdtKH = sdtKH;
	}
	public String getEmailKH() {
		return EmailKH;
	}
	public void setEmailKH(String emailKH) {
		EmailKH = emailKH;
	}
	public String getMatKhau() {
		return MatKhau;
	}
	public void setMatKhau(String matKhau) {
		MatKhau = matKhau;
	}
	public String getAnhDaiDien() {
		return AnhDaiDien;
	}
	public void setAnhDaiDien(String anhDaiDien) {
		AnhDaiDien = anhDaiDien;
	}
	
	@Override
	public String toString() {
		return "KhachHang [MaKH=" + MaKH + ", TenKh=" + TenKh + ", DiaChiKH=" + DiaChiKH + ", sdtKH=" + sdtKH
				+ ", EmailKH=" + EmailKH + ", MatKhau=" + MatKhau + ", AnhDaiDien=" + AnhDaiDien + "]";
	}
}
