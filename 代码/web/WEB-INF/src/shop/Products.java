package shop;

public abstract class Products implements InterfaceProducts{
	public String products_id ;
	public String productsname;
	public String type_id;
	public int quantity;
	public float price;
	
	 public String image;
	
	public float discount;
	public String discription;
	public float inprice;
	public long clickrate;
	
	public  void setProducts_id(String products_id){
		this.products_id=products_id;
	}
	public  String getProducts_id(){
		return products_id;
	}
	public  void setProductsname(String productsname){
		this.productsname=productsname;
	}
	public  String getProductsname(){
		return productsname;
	}
	public  void setType_id(String type_id){
		this.type_id=type_id;
	}
	public String getType_id(){
		return type_id;
	}
	public void setQuantity(int quantity){
		this.quantity=quantity;
	}
	public  int getQuantity(){
		return quantity;
	}
	public  void setPrice(float price){
		this.price=price;
	}
	public  float getPrice(){
		return price;
	}
	
	public  void setImage(String image){
		this.image=image;
	}
	
	public  String getImage(){
		return image;
	}
	
	public  void setDiscount(float discount){
		this.discount=discount;
	}
	public  float getDiscount(){
		return discount;
	}
	public void setDiscription(String discription){
		this.discription=discription;
	}
	public  String getDiscription(){
		return discription;
	}
	public  void setInprice(float  inprice){
		this.inprice=inprice;
	}
	public  float getInprice(){
		return inprice;
	}
	public  void setClickrate(long clickrate){
		this.clickrate=clickrate;
	}
	public  long getClickrate(){
		return clickrate;
	}

}
