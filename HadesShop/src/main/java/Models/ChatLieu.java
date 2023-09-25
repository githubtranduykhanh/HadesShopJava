package Models;

public class ChatLieu {
	private int ChatLieuID; 
	private String TenChatLieu;
	public ChatLieu() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ChatLieu(int chatLieuID, String tenChatLieu) {
		super();
		ChatLieuID = chatLieuID;
		TenChatLieu = tenChatLieu;
	}
	public int getChatLieuID() {
		return ChatLieuID;
	}
	
	public void setChatLieuID(int chatLieuID) {
		ChatLieuID = chatLieuID;
	}
	public String getTenChatLieu() {
		return TenChatLieu;
	}
	public void setTenChatLieu(String tenChatLieu) {
		TenChatLieu = tenChatLieu;
	}
	@Override
	public String toString() {
		return "ChatLieu [ChatLieuID=" + ChatLieuID + ", TenChatLieu=" + TenChatLieu + "]";
	}
}
