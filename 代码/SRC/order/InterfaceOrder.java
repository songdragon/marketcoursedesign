/*
 * 作者：江军
 *时间：2008-06-06
 *说明：订单的接口类
 */
package order;

public interface InterfaceOrder {
	//获取和设置订单号
	public abstract String getOrderid();
	public abstract void setOrderid(String orderid);
	
	//获取和设置商品总额
	public abstract String getTotal();
	public abstract void setTotal(String total);
	
	//获取和设置用户名
	public abstract String getCustomername();
	public abstract void setCustomername(String Customername);
	
	//获取和设置收件人
	public abstract String getReceiver();
	public abstract void setReceiver(String reciver);
	
	//获取和设置收件地址
	public abstract String getAddress();
	public abstract void setAddress(String address);
	
	//获取和设置邮编
	public abstract String getZipcode();
	public abstract void setZipcode(String zipcode);
	
	//获取和设置联系电话
	public abstract String getTel();
	public abstract void setTel(String tel);
	
	//获取和设置订单状态
	public abstract String getState();
	public abstract void setState(String state);
	
	//获取和设置订单日期
	public abstract String getOrderdate();
	public abstract void setOrderdate(String orderdate);
	
	//获取和设置发货日期
	public abstract String getDetime();
	public abstract void setDetime(String detime);

}
