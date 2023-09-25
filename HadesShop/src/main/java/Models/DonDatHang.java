package Models;

import java.sql.Timestamp;

public class DonDatHang {
	private int MaDonDatHang,MaKH;
	private String TinhTrangDonHang,TenKH,sdtKH,EmailKH,DiaChiKH; 
	private Timestamp NgayTao;
	private double ThanhTienDH;
	public DonDatHang() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DonDatHang(int maDonDatHang, int maKH, String tinhTrangDonHang, String tenKH, String sdtKH, String emailKH,
			String diaChiKH, Timestamp ngayTao, double thanhTienDH) {
		super();
		MaDonDatHang = maDonDatHang;
		MaKH = maKH;
		TinhTrangDonHang = tinhTrangDonHang;
		TenKH = tenKH;
		this.sdtKH = sdtKH;
		EmailKH = emailKH;
		DiaChiKH = diaChiKH;
		NgayTao = ngayTao;
		ThanhTienDH = thanhTienDH;
	}
	public int getMaDonDatHang() {
		return MaDonDatHang;
	}
	public void setMaDonDatHang(int maDonDatHang) {
		MaDonDatHang = maDonDatHang;
	}
	
	
	
	public int getMaKH() {
		return MaKH;
	}
	public void setMaKH(int maKH) {
		MaKH = maKH;
	}
	public String getTinhTrangDonHang() {
		return TinhTrangDonHang;
	}
	public void setTinhTrangDonHang(String tinhTrangDonHang) {
		TinhTrangDonHang = tinhTrangDonHang;
	}
	public String getTenKH() {
		return TenKH;
	}
	public void setTenKH(String tenKH) {
		TenKH = tenKH;
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
	public String getDiaChiKH() {
		return DiaChiKH;
	}
	public void setDiaChiKH(String diaChiKH) {
		DiaChiKH = diaChiKH;
	}
	public Timestamp getNgayTao() {
		return NgayTao;
	}
	public void setNgayTao(Timestamp ngayTao) {
		NgayTao = ngayTao;
	}
	public double getThanhTienDH() {
		return ThanhTienDH;
	}
	public void setThanhTienDH(double thanhTienDH) {
		ThanhTienDH = thanhTienDH;
	}
	@Override
	public String toString() {
		return "DonDatHang [MaDonDatHang=" + MaDonDatHang + ", MaKH=" + MaKH + ", TinhTrangDonHang=" + TinhTrangDonHang
				+ ", TenKH=" + TenKH + ", sdtKH=" + sdtKH + ", EmailKH=" + EmailKH + ", DiaChiKH=" + DiaChiKH
				+ ", NgayTao=" + NgayTao + ", ThanhTienDH=" + ThanhTienDH + "]";
	}
}
