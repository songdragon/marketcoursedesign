/*
 * ���ߣ�����
 *ʱ�䣺2008-06-06
 *˵���������Ľӿ���
 */
package order;

public interface InterfaceOrder {
	//��ȡ�����ö�����
	public abstract String getOrderid();
	public abstract void setOrderid(String orderid);
	
	//��ȡ��������Ʒ�ܶ�
	public abstract String getTotal();
	public abstract void setTotal(String total);
	
	//��ȡ�������û���
	public abstract String getCustomername();
	public abstract void setCustomername(String Customername);
	
	//��ȡ�������ռ���
	public abstract String getReceiver();
	public abstract void setReceiver(String reciver);
	
	//��ȡ�������ռ���ַ
	public abstract String getAddress();
	public abstract void setAddress(String address);
	
	//��ȡ�������ʱ�
	public abstract String getZipcode();
	public abstract void setZipcode(String zipcode);
	
	//��ȡ��������ϵ�绰
	public abstract String getTel();
	public abstract void setTel(String tel);
	
	//��ȡ�����ö���״̬
	public abstract String getState();
	public abstract void setState(String state);
	
	//��ȡ�����ö�������
	public abstract String getOrderdate();
	public abstract void setOrderdate(String orderdate);
	
	//��ȡ�����÷�������
	public abstract String getDetime();
	public abstract void setDetime(String detime);

}
