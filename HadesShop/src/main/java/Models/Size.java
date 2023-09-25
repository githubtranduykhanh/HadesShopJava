package Models;

public class Size {
	private int SizeID; 
	private String TenSize;
	public Size() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Size(int sizeID, String tenSize) {
		super();
		SizeID = sizeID;
		TenSize = tenSize;
	}	
	public int getSizeID() {
		return SizeID;
	}
	public void setSizeID(int sizeID) {
		SizeID = sizeID;
	}
	public String getTenSize() {
		return TenSize;
	}
	public void setTenSize(String tenSize) {
		TenSize = tenSize;
	}
	
	@Override
	public String toString() {
		return "Size [SizeID=" + SizeID + ", TenSize=" + TenSize + "]";
	}
}
