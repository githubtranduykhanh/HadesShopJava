package Models;

import 	java.sql.Timestamp;
public class SanPham {
	private int MaSP,MauID,SizeID,ChatLieuID,SoLuongSP,MaDM,NhomID; 
	private String TenSP,AnhSP,MotaSP;
	private double GiaSP;
	private Timestamp NgayTao,NgayHuy;
	
	public SanPham() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SanPham(int maSP, int mauID, int sizeID, int chatLieuID, int soLuongSP, int maDM, int nhomID, String tenSP,
			String anhSP, String motaSP, double giaSP, Timestamp ngayTao, Timestamp ngayHuy) {
		super();
		MaSP = maSP;
		MauID = mauID;
		SizeID = sizeID;
		ChatLieuID = chatLieuID;
		SoLuongSP = soLuongSP;
		MaDM = maDM;
		NhomID = nhomID;
		TenSP = tenSP;
		AnhSP = anhSP;
		MotaSP = motaSP;
		GiaSP = giaSP;
		NgayTao = ngayTao;
		NgayHuy = ngayHuy;
	}
	public int getMaSP() {
		return MaSP;
	}
	public void setMaSP(int maSP) {
		MaSP = maSP;
	}
	
	public int getMauID() {
		return MauID;
	}
	public void setMauID(int mauID) {
		MauID = mauID;
	}
	public int getSizeID() {
		return SizeID;
	}
	public void setSizeID(int sizeID) {
		SizeID = sizeID;
	}
	public int getChatLieuID() {
		return ChatLieuID;
	}
	public void setChatLieuID(int chatLieuID) {
		ChatLieuID = chatLieuID;
	}
	public int getSoLuongSP() {
		return SoLuongSP;
	}
	public void setSoLuongSP(int soLuongSP) {
		SoLuongSP = soLuongSP;
	}
	public int getMaDM() {
		return MaDM;
	}
	public void setMaDM(int maDM) {
		MaDM = maDM;
	}
	public int getNhomID() {
		return NhomID;
	}
	public void setNhomID(int nhomID) {
		NhomID = nhomID;
	}
	public String getTenSP() {
		return TenSP;
	}
	public void setTenSP(String tenSP) {
		TenSP = tenSP;
	}
	public String getAnhSP() {
		return AnhSP;
	}
	public void setAnhSP(String anhSP) {
		AnhSP = anhSP;
	}
	public String getMotaSP() {
		return MotaSP;
	}
	public void setMotaSP(String motaSP) {
		MotaSP = motaSP;
	}
	public double getGiaSP() {
		return GiaSP;
	}
	public void setGiaSP(double giaSP) {
		GiaSP = giaSP;
	}
	public Timestamp getNgayTao() {
		return NgayTao;
	}
	public void setNgayTao(Timestamp ngayTao) {
		NgayTao = ngayTao;
	}
	public Timestamp getNgayHuy() {
		return NgayHuy;
	}
	public void setNgayHuy(Timestamp ngayHuy) {
		NgayHuy = ngayHuy;
	}
	@Override
	public String toString() {
		return "SanPham [MaSP=" + MaSP + ", MauID=" + MauID + ", SizeID=" + SizeID + ", ChatLieuID=" + ChatLieuID
				+ ", SoLuongSP=" + SoLuongSP + ", MaDM=" + MaDM + ", NhomID=" + NhomID + ", TenSP=" + TenSP + ", AnhSP="
				+ AnhSP + ", MotaSP=" + MotaSP + ", GiaSP=" + GiaSP + ", NgayTao=" + NgayTao + ", NgayHuy=" + NgayHuy
				+ "]";
	}
}
