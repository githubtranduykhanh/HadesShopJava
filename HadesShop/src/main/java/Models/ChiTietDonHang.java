package Models;

public class ChiTietDonHang {
	private int MaHD,MaSP,SoLuong;
	private double DonGia;
	public ChiTietDonHang() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ChiTietDonHang(int maHD, int maSP, int soLuong, double donGia) {
		super();
		MaHD = maHD;
		MaSP = maSP;
		SoLuong = soLuong;
		DonGia = donGia;
	}
	public int getMaHD() {
		return MaHD;
	}
	public void setMaHD(int maHD) {
		MaHD = maHD;
	}
	public int getMaSP() {
		return MaSP;
	}
	
	
	public void setMaSP(int maSP) {
		MaSP = maSP;
	}
	
	public int getSoLuong() {
		return SoLuong;
	}
	public void setSoLuong(int soLuong) {
		SoLuong = soLuong;
	}
	public double getDonGia() {
		return DonGia;
	}
	public void setDonGia(double donGia) {
		DonGia = donGia;
	}
	@Override
	public String toString() {
		return "ChiTietDonHang [MaHD=" + MaHD + ", MaSP=" + MaSP + ", SoLuong=" + SoLuong + ", DonGia=" + DonGia + "]";
	}
} 
