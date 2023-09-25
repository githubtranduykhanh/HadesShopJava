package Models;

import java.sql.Timestamp;

public class TinTuc {
	private int TinTucID,LuotXem,ThuTu,MaDM; 
	private String TieuDe,AnhDaiDien,MoTa,ChiTiet;
	private Timestamp NgayDang;
	
	public TinTuc() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TinTuc(int tinTucID, int luotXem, int thuTu, int maDM, String tieuDe, String anhDaiDien, String moTa,
			String chiTiet, Timestamp ngayDang) {
		super();
		TinTucID = tinTucID;
		LuotXem = luotXem;
		ThuTu = thuTu;
		MaDM = maDM;
		TieuDe = tieuDe;
		AnhDaiDien = anhDaiDien;
		MoTa = moTa;
		ChiTiet = chiTiet;
		NgayDang = ngayDang;
	}
	public int getTinTucID() {
		return TinTucID;
	}
	
	public void setTinTucID(int tinTucID) {
		TinTucID = tinTucID;
	}
	public int getLuotXem() {
		return LuotXem;
	}
	public void setLuotXem(int luotXem) {
		LuotXem = luotXem;
	}
	public int getThuTu() {
		return ThuTu;
	}
	public void setThuTu(int thuTu) {
		ThuTu = thuTu;
	}
	public int getMaDM() {
		return MaDM;
	}
	public void setMaDM(int maDM) {
		MaDM = maDM;
	}
	public String getTieuDe() {
		return TieuDe;
	}
	public void setTieuDe(String tieuDe) {
		TieuDe = tieuDe;
	}
	public String getAnhDaiDien() {
		return AnhDaiDien;
	}
	public void setAnhDaiDien(String anhDaiDien) {
		AnhDaiDien = anhDaiDien;
	}
	public String getMoTa() {
		return MoTa;
	}
	public void setMoTa(String moTa) {
		MoTa = moTa;
	}
	public String getChiTiet() {
		return ChiTiet;
	}
	public void setChiTiet(String chiTiet) {
		ChiTiet = chiTiet;
	}
	public Timestamp getNgayDang() {
		return NgayDang;
	}
	public void setNgayDang(Timestamp ngayDang) {
		NgayDang = ngayDang;
	}
	@Override
	public String toString() {
		return "TinTuc [TinTucID=" + TinTucID + ", LuotXem=" + LuotXem + ", ThuTu=" + ThuTu + ", MaDM=" + MaDM
				+ ", TieuDe=" + TieuDe + ", AnhDaiDien=" + AnhDaiDien + ", MoTa=" + MoTa + ", ChiTiet=" + ChiTiet
				+ ", NgayDang=" + NgayDang + "]";
	}
}
