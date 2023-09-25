package Models;

public class QuyenDangNhap {
	private int MaQuyen; 
	private String TenQuyen;
	public QuyenDangNhap() {
		super();
		// TODO Auto-generated constructor stub
	}
	public QuyenDangNhap(int maQuyen, String tenQuyen) {
		super();
		MaQuyen = maQuyen;
		TenQuyen = tenQuyen;
	}
	public int getMaQuyen() {
		return MaQuyen;
	}
	
	public void setMaQuyen(int maQuyen) {
		MaQuyen = maQuyen;
	}
	
	
	public String getTenQuyen() {
		return TenQuyen;
	}
	public void setTenQuyen(String tenQuyen) {
		TenQuyen = tenQuyen;
	}
	@Override
	public String toString() {
		return "QuyenDangNhap [MaQuyen=" + MaQuyen + ", TenQuyen=" + TenQuyen + "]";
	}
}
