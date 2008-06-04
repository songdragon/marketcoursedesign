package order;

public interface InterfaceOrderdetail {
	//获取和设置订单号
	public abstract String getOrderid();
	public abstract void setOrderid(String orderid);
	
	//获取和设置商品号
	public abstract String getproductsid();
	public abstract void setproductsid(String productsid);
	
	//获取和设置商品名
	public abstract String getproductsname();
	public abstract void setproductsname(String productsname);
	
	//获取和设置商品价格
	public abstract float getprice();
	public void setprice(float price);
	
	//获取和设置商品折扣
	public abstract float getdiscount();
	public abstract void setdiscount(float discount);
	
	//获取和设置商品折后价
	public abstract float getdiscountprice();
	public abstract void setdiscountprice(float discountprice);
	
	//获取和设置商品数量
	public abstract int getquantity();
	public abstract void setquantity(int quantity);

}
