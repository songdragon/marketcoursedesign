/*
 * 作者：江军
 * 时间：2008-06-04
 * 功能：实现客户端订单详细信息的获得和赋值的抽象类
 */
package order;

public abstract class OrderdetailAbstract implements InterfaceOrderdetail{//修改：实现商品详细信息接口 2008-06-04 宋
	private String _orderid;        //订单号
	private String _productsid;     //商品号
	private String _productsname;   //商品名
	private float _price;          //商品价格
	private float _discount;       //折扣
	private float _discountprice;  //折后价
	private int _quantity;       //数量
	
	//获取和设置订单号
	public String getOrderid(){
		return _orderid;
	}
	

	public void setOrderid(String orderid){ 
		_orderid=orderid;
	}
	
	//获取和设置商品号
	public String getproductsid(){
		return _productsid;
	}
	public void setproductsid(String productsid){
		_productsid=productsid;
	}
	
	//获取和设置商品名
	public String getproductsname(){
		return _productsname;
	}
	public void setproductsname(String productsname){
		_productsname=productsname;
	}
	
	//获取和设置商品价格
	public float getprice(){
		return _price;
	}
	public void setprice(float price){
		_price=price;
	}
	
	//获取和设置商品折扣
	public float getdiscount(){
		return _discount;
	}
	public void setdiscount(float discount){
		_discount=discount;
	}
	
	//获取和设置商品折后价
	public float getdiscountprice(){
		return _discountprice;
	}
	public void setdiscountprice(float discountprice){
		_discountprice=discountprice;
	}
	
	//获取和设置商品数量
	public int getquantity(){
		return _quantity;
	}
	public void setquantity(int quantity){
		_quantity=quantity;
	}
}
