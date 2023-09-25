package Models;

public class DanhMuc {
	private int MaDM,ThuTu,MaDMCha; 
	private String TenDM,AnhDaiDien;
	public DanhMuc() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DanhMuc(int maDM, String tenDM, String anhDaiDien, int thuTu, int maDMCha) {
		super();
		MaDM = maDM;
		ThuTu = thuTu;
		MaDMCha = maDMCha;
		TenDM = tenDM;
		AnhDaiDien = anhDaiDien;
	}
	public int getMaDM() {
		return MaDM;
	}
	public void setMaDM(int maDM) {
		MaDM = maDM;
	}
	public int getThuTu() {
		return ThuTu;
	}
	public void setThuTu(int thuTu) {
		ThuTu = thuTu;
	}
	public int getMaDMCha() {
		return MaDMCha;
	}
	public void setMaDMCha(int maDMCha) {
		MaDMCha = maDMCha;
	}
	public String getTenDM() {
		return TenDM;
	}
	public void setTenDM(String tenDM) {
		TenDM = tenDM;
	}
	public String getAnhDaiDien() {
		return AnhDaiDien;
	}
	public void setAnhDaiDien(String anhDaiDien) {
		AnhDaiDien = anhDaiDien;
	}
	@Override
	public String toString() {
		return "DanhMuc [MaDM=" + MaDM + ", ThuTu=" + ThuTu + ", MaDMCha=" + MaDMCha + ", TenDM=" + TenDM
				+ ", AnhDaiDien=" + AnhDaiDien + "]";
	}	
}
