package Models;

public class NhomSanPham {
	private int NhomID,ThuTu,SoSPHienThi;
	private String TenNhom,AnhDaiDien; 
	public NhomSanPham() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NhomSanPham(int nhomID, int thuTu, int soSPHienThi, String tenNhom, String anhDaiDien) {
		super();
		NhomID = nhomID;
		ThuTu = thuTu;
		SoSPHienThi = soSPHienThi;
		TenNhom = tenNhom;
		AnhDaiDien = anhDaiDien;
	}
	public int getNhomID() {
		return NhomID;
	}
	public void setNhomID(int nhomID) {
		NhomID = nhomID;
	}
	public int getThuTu() {
		return ThuTu;
	}
	public void setThuTu(int thuTu) {
		ThuTu = thuTu;
	}
	public int getSoSPHienThi() {
		return SoSPHienThi;
	}
	public void setSoSPHienThi(int soSPHienThi) {
		SoSPHienThi = soSPHienThi;
	}
	public String getTenNhom() {
		return TenNhom;
	}
	public void setTenNhom(String tenNhom) {
		TenNhom = tenNhom;
	}
	public String getAnhDaiDien() {
		return AnhDaiDien;
	}
	public void setAnhDaiDien(String anhDaiDien) {
		AnhDaiDien = anhDaiDien;
	}

	@Override
	public String toString() {
		return "NhomSanPham [NhomID=" + NhomID + ", ThuTu=" + ThuTu + ", SoSPHienThi=" + SoSPHienThi + ", TenNhom="
				+ TenNhom + ", AnhDaiDien=" + AnhDaiDien + "]";
	}
}
