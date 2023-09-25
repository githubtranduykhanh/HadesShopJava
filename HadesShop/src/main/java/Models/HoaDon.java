package Models;

import java.sql.Timestamp;

public class HoaDon {
	private int MaHD,MaNV,MaKH;
    private String TenNV, TenKH;
    private double ThanhTien;
    private Timestamp NgayLap;
    public HoaDon() {
		super();
		// TODO Auto-generated constructor stub
	}
    public HoaDon(int maHD, int maNV, int maKH, String tenNV, String tenKH, double thanhTien, Timestamp ngayLap) {
		super();
		MaHD = maHD;
		MaNV = maNV;
		MaKH = maKH;
		TenNV = tenNV;
		TenKH = tenKH;
		ThanhTien = thanhTien;
		NgayLap = ngayLap;
	}
	
	public int getMaHD() {
		return MaHD;
	}
	public void setMaHD(int maHD) {
		MaHD = maHD;
	}
	public int getMaNV() {
		return MaNV;
	}
	public void setMaNV(int maNV) {
		MaNV = maNV;
	}
	public int getMaKH() {
		return MaKH;
	}
	public void setMaKH(int maKH) {
		MaKH = maKH;
	}
	public String getTenNV() {
		return TenNV;
	}
	public void setTenNV(String tenNV) {
		TenNV = tenNV;
	}
	public String getTenKH() {
		return TenKH;
	}
	public void setTenKH(String tenKH) {
		TenKH = tenKH;
	}
	public double getThanhTien() {
		return ThanhTien;
	}
	public void setThanhTien(double thanhTien) {
		ThanhTien = thanhTien;
	}
	public Timestamp getNgayLap() {
		return NgayLap;
	}
	
	public void setNgayLap(Timestamp ngayLap) {
		NgayLap = ngayLap;
	}
	@Override
	public String toString() {
		return "HoaDon [MaHD=" + MaHD + ", MaNV=" + MaNV + ", MaKH=" + MaKH + ", TenNV=" + TenNV + ", TenKH=" + TenKH
				+ ", ThanhTien=" + ThanhTien + ", NgayLap=" + NgayLap + "]";
	}
    
}