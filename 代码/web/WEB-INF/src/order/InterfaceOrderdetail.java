package order;

public interface InterfaceOrderdetail {
	//��ȡ�����ö�����
	public abstract String getOrderid();
	public abstract void setOrderid(String orderid);
	
	//��ȡ��������Ʒ��
	public abstract String getproductsid();
	public abstract void setproductsid(String productsid);
	
	//��ȡ��������Ʒ��
	public abstract String getproductsname();
	public abstract void setproductsname(String productsname);
	
	//��ȡ��������Ʒ�۸�
	public abstract float getprice();
	public void setprice(float price);
	
	//��ȡ��������Ʒ�ۿ�
	public abstract float getdiscount();
	public abstract void setdiscount(float discount);
	
	//��ȡ��������Ʒ�ۺ��
	public abstract float getdiscountprice();
	public abstract void setdiscountprice(float discountprice);
	
	//��ȡ��������Ʒ����
	public abstract int getquantity();
	public abstract void setquantity(int quantity);

}
