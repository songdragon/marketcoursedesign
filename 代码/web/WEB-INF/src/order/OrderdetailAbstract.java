/*
 * ���ߣ�����
 * ʱ�䣺2008-06-04
 * ���ܣ�ʵ�ֿͻ��˶�����ϸ��Ϣ�Ļ�ú͸�ֵ�ĳ�����
 */
package order;

public abstract class OrderdetailAbstract implements InterfaceOrderdetail{//�޸ģ�ʵ����Ʒ��ϸ��Ϣ�ӿ� 2008-06-04 ��
	private String _orderid;        //������
	private String _productsid;     //��Ʒ��
	private String _productsname;   //��Ʒ��
	private float _price;          //��Ʒ�۸�
	private float _discount;       //�ۿ�
	private float _discountprice;  //�ۺ��
	private int _quantity;       //����
	
	//��ȡ�����ö�����
	public String getOrderid(){
		return _orderid;
	}
	

	public void setOrderid(String orderid){ 
		_orderid=orderid;
	}
	
	//��ȡ��������Ʒ��
	public String getproductsid(){
		return _productsid;
	}
	public void setproductsid(String productsid){
		_productsid=productsid;
	}
	
	//��ȡ��������Ʒ��
	public String getproductsname(){
		return _productsname;
	}
	public void setproductsname(String productsname){
		_productsname=productsname;
	}
	
	//��ȡ��������Ʒ�۸�
	public float getprice(){
		return _price;
	}
	public void setprice(float price){
		_price=price;
	}
	
	//��ȡ��������Ʒ�ۿ�
	public float getdiscount(){
		return _discount;
	}
	public void setdiscount(float discount){
		_discount=discount;
	}
	
	//��ȡ��������Ʒ�ۺ��
	public float getdiscountprice(){
		return _discountprice;
	}
	public void setdiscountprice(float discountprice){
		_discountprice=discountprice;
	}
	
	//��ȡ��������Ʒ����
	public int getquantity(){
		return _quantity;
	}
	public void setquantity(int quantity){
		_quantity=quantity;
	}
}
