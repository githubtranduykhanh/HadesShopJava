package Models;

public class ChiTietDonDatHang {
	private int MaDonDatHang,MaSP,SoLuongDat;
	private double DonGiaDat;
	public ChiTietDonDatHang() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ChiTietDonDatHang(int maDonDatHang, int maSP, int soLuongDat, double donGiaDat) {
		super();
		MaDonDatHang = maDonDatHang;
		MaSP = maSP;
		SoLuongDat = soLuongDat;
		DonGiaDat = donGiaDat;
	}
	public int getMaDonDatHang() {
		return MaDonDatHang;
	}
	public void setMaDonDatHang(int maDonDatHang) {
		MaDonDatHang = maDonDatHang;
	}
	public int getMaSP() {
		return MaSP;
	}
	
	
	public void setMaSP(int maSP) {
		MaSP = maSP;
	}
	public int getSoLuongDat() {
		return SoLuongDat;
	}
	public void setSoLuongDat(int soLuongDat) {
		SoLuongDat = soLuongDat;
	}
	public double getDonGiaDat() {
		return DonGiaDat;
	}
	public void setDonGiaDat(double donGiaDat) {
		DonGiaDat = donGiaDat;
	}
	@Override
	public String toString() {
		return "ChiTietDonDatHang [MaDonDatHang=" + MaDonDatHang + ", MaSP=" + MaSP + ", SoLuongDat=" + SoLuongDat
				+ ", DonGiaDat=" + DonGiaDat + "]";
	}
}
