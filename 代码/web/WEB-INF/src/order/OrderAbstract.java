/*
 * 作者：宋肇腾
 * 时间：2008-06-03
 * 功能：实现客户端订单的各信息的获得和赋值的抽象类
 */
package order;
import dbconnection.*;

public abstract class OrderAbstract {
	private String _orderid;
	private String _total; //类型换为金钱类型
	private String _customername;
	private String _receiver;
	private String _address;
	private String _zipcode;
	private String _tel;
	private String _state;
	private String _ordate;
	private String _detime;
	
	//获取和设置订单号
	public String getOrderid(){
		return _orderid;
	}
	public void setOrderid(){ /*用于生成新订单*/
		_orderid=NewId();
	}
	public void setOrderid(String orderid){ /*用于赋值已有订单号*/
		_orderid=orderid;
	}
	
	//获取和设置商品总额
	public String getTotal(){
		return _total;
	}
	public void setTotal(String total){
		_total=total;
	}
	
	//获取和设置用户名
	public String getCustomername(){
		return _customername;
	}
	public void setCustomername(String Customername){
		_customername=Customername;
	}
	
	//获取和设置收件人
	public String getReceiver(){
		return _receiver;
	}
	public void setReceiver(String reciver){
		_receiver=reciver;
	}
	
	//获取和设置收件地址
	public String getAddress(){
		return _address;
	}
	public void setAddress(String address){
		_address=address;
	}
	
	//获取和设置邮编
	public String getZipcode(){
		return _zipcode;
	}
	public void setZipcode(String zipcode){
		_zipcode=zipcode;
	}
	
	//获取和设置联系电话
	public String getTel(){
		return _tel;
	}
	public void setTel(String tel){
		_tel=tel;
	}
	
	//获取和设置订单状态
	public String getState(){
		return _state;
	}
	public void setState(String state){
		_state=state;
	}
	
	//获取和设置订单日期
	public String getOrderdate(){
		return _ordate;
	}
	public void setOrderdate(String orderdate){
		_ordate=orderdate;
	}
	
	//获取和设置发货日期
	public String getDetime(){
		return _detime;
	}
	public void setDetime(String detime){
		_detime=detime;
	}
	
	//自动生成订单号
	private String NewId(){
		DBConnection con=new DBConnection();
		con.excuteQuery("select order_id from orders",1);
		int row=con.rows();
		if(row>0)
			return String.format("%1$,010d", row+1);
		else return "0000000001";
	}

}
