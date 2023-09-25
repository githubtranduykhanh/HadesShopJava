package Models;

public class Mau {
	private int MauID; 
	private String TenMau;
	
	public Mau() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Mau(int mauID, String tenMau) {
		super();
		MauID = mauID;
		TenMau = tenMau;
	}
	public int getMauID() {
		return MauID;
	}
	public void setMauID(int mauID) {
		MauID = mauID;
	}
	public String getTenMau() {
		return TenMau;
	}
	public void setTenMau(String tenMau) {
		TenMau = tenMau;
	}
	@Override
	public String toString() {
		return "Mau [MauID=" + MauID + ", TenMau=" + TenMau + "]";
	}
}
