package Models;

import java.sql.Timestamp;

public class DangKy {
	private int MaQuyen;
	private String TenDangNhap,MatKhau,EmailDK,DiaChiDK,TenDayDu,CauHoiBaoMat,GioiTinhDK,AnhDaiDien; 
	private Timestamp NgaySinh;
	public DangKy() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DangKy(int maQuyen, String tenDangNhap, String matKhau, String emailDK, String diaChiDK, String tenDayDu,
			String cauHoiBaoMat, String gioiTinhDK, String anhDaiDien, Timestamp ngaySinh) {
		super();
		MaQuyen = maQuyen;
		TenDangNhap = tenDangNhap;
		MatKhau = matKhau;
		EmailDK = emailDK;
		DiaChiDK = diaChiDK;
		TenDayDu = tenDayDu;
		CauHoiBaoMat = cauHoiBaoMat;
		GioiTinhDK = gioiTinhDK;
		AnhDaiDien = anhDaiDien;
		NgaySinh = ngaySinh;
	}
	
	
	public int getMaQuyen() {
		return MaQuyen;
	}
	public void setMaQuyen(int maQuyen) {
		MaQuyen = maQuyen;
	}
	public String getTenDangNhap() {
		return TenDangNhap;
	}
	public void setTenDangNhap(String tenDangNhap) {
		TenDangNhap = tenDangNhap;
	}
	public String getMatKhau() {
		return MatKhau;
	}
	public void setMatKhau(String matKhau) {
		MatKhau = matKhau;
	}
	public String getEmailDK() {
		return EmailDK;
	}
	public void setEmailDK(String emailDK) {
		EmailDK = emailDK;
	}
	public String getDiaChiDK() {
		return DiaChiDK;
	}
	public void setDiaChiDK(String diaChiDK) {
		DiaChiDK = diaChiDK;
	}
	public String getTenDayDu() {
		return TenDayDu;
	}
	public void setTenDayDu(String tenDayDu) {
		TenDayDu = tenDayDu;
	}
	public String getCauHoiBaoMat() {
		return CauHoiBaoMat;
	}
	public void setCauHoiBaoMat(String cauHoiBaoMat) {
		CauHoiBaoMat = cauHoiBaoMat;
	}
	public String getGioiTinhDK() {
		return GioiTinhDK;
	}
	public void setGioiTinhDK(String gioiTinhDK) {
		GioiTinhDK = gioiTinhDK;
	}
	public String getAnhDaiDien() {
		return AnhDaiDien;
	}
	public void setAnhDaiDien(String anhDaiDien) {
		AnhDaiDien = anhDaiDien;
	}
	public Timestamp getNgaySinh() {
		return NgaySinh;
	}
	public void setNgaySinh(Timestamp ngaySinh) {
		NgaySinh = ngaySinh;
	}
	
	@Override
	public String toString() {
		return "DangKy [MaQuyen=" + MaQuyen + ", TenDangNhap=" + TenDangNhap + ", MatKhau=" + MatKhau + ", EmailDK="
				+ EmailDK + ", DiaChiDK=" + DiaChiDK + ", TenDayDu=" + TenDayDu + ", CauHoiBaoMat=" + CauHoiBaoMat
				+ ", GioiTinhDK=" + GioiTinhDK + ", AnhDaiDien=" + AnhDaiDien + ", NgaySinh=" + NgaySinh + "]";
	}
}
