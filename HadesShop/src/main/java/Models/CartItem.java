package Models;

public class CartItem {
	private int productId,quantity; 
	private double price; 
	private String productName,productImage;
	public CartItem() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CartItem(int productId, int quantity, double price, String productName, String productImage) {
		super();
		this.productId = productId;
		this.quantity = quantity;
		this.price = price;
		this.productName = productName;
		this.productImage = productImage;
	}
	@Override
	public String toString() {
		return "CartItem [productId=" + productId + ", quantity=" + quantity + ", price=" + price + ", productName="
				+ productName + ", productImage=" + productImage + "]";
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	
	
}
