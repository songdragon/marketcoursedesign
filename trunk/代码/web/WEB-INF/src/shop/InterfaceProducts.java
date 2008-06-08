package shop;

public interface InterfaceProducts {
	public  void setProducts_id(String products_id);
	public  String getProducts_id();
	public  void setProductsname(String productsname);
	public  String getProductsname();
	public  void setType_id(String type_id);
	public String getType_id();
	public void setQuantity(int quantity);
	public  int getQuantity();
	public  void setPrice(float price);
	public  float getPrice();

	public abstract void setImage(String image);  
	public abstract String  getImage();  
	
	public  void setDiscount(float discount);
	public  float getDiscount();
	public void setDiscription(String discription);
	public  String getDiscription();
	public  void setInprice(float  inprice);
	public  float getInprice();
	public  void setClickrate(long clickrate);
	public  long getClickrate();


}
