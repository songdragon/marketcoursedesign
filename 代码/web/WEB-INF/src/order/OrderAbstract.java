/*
 * ���ߣ�������
 * ʱ�䣺2008-06-03
 * ���ܣ�ʵ�ֿͻ��˶����ĸ���Ϣ�Ļ�ú͸�ֵ�ĳ�����
 */
package order;
import dbconnection.*;

public abstract class OrderAbstract {
	private String _orderid;
	private String _total; //���ͻ�Ϊ��Ǯ����
	private String _customername;
	private String _receiver;
	private String _address;
	private String _zipcode;
	private String _tel;
	private String _state;
	private String _ordate;
	private String _detime;
	
	//��ȡ�����ö�����
	public String getOrderid(){
		return _orderid;
	}
	public void setOrderid(){ /*���������¶���*/
		_orderid=NewId();
	}
	public void setOrderid(String orderid){ /*���ڸ�ֵ���ж�����*/
		_orderid=orderid;
	}
	
	//��ȡ��������Ʒ�ܶ�
	public String getTotal(){
		return _total;
	}
	public void setTotal(String total){
		_total=total;
	}
	
	//��ȡ�������û���
	public String getCustomername(){
		return _customername;
	}
	public void setCustomername(String Customername){
		_customername=Customername;
	}
	
	//��ȡ�������ռ���
	public String getReceiver(){
		return _receiver;
	}
	public void setReceiver(String reciver){
		_receiver=reciver;
	}
	
	//��ȡ�������ռ���ַ
	public String getAddress(){
		return _address;
	}
	public void setAddress(String address){
		_address=address;
	}
	
	//��ȡ�������ʱ�
	public String getZipcode(){
		return _zipcode;
	}
	public void setZipcode(String zipcode){
		_zipcode=zipcode;
	}
	
	//��ȡ��������ϵ�绰
	public String getTel(){
		return _tel;
	}
	public void setTel(String tel){
		_tel=tel;
	}
	
	//��ȡ�����ö���״̬
	public String getState(){
		return _state;
	}
	public void setState(String state){
		_state=state;
	}
	
	//��ȡ�����ö�������
	public String getOrderdate(){
		return _ordate;
	}
	public void setOrderdate(String orderdate){
		_ordate=orderdate;
	}
	
	//��ȡ�����÷�������
	public String getDetime(){
		return _detime;
	}
	public void setDetime(String detime){
		_detime=detime;
	}
	
	//�Զ����ɶ�����
	private String NewId(){
		DBConnection con=new DBConnection();
		con.excuteQuery("select order_id from orders",1);
		int row=con.rows();
		if(row>0)
			return String.format("%1$,010d", row+1);
		else return "0000000001";
	}

}
