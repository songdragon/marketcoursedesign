/*
 * ���ߣ�������
 * ʱ�䣺2008-06-04
 * ���ܣ��̳�Factory�࣬ʵ�����ý�ںͲ�����ĳ�ʼ��
 * PS���������Ҫ��ӵķ������п�����Ա������ӣ����ڸ÷���ǰ��ע�ͣ�˵�����ߡ�ʱ��͹���
 */
package tools;
import order.*;
import user.*;
import manager.*;

public class SqlFactory extends Factory{
	public InterfaceOrderdetail initOrderdetail() {
		return (InterfaceOrderdetail)new OrderdetailOperator();
	}
	public OrderdetailOperator initOrderdetailOperator (){
		return  new OrderdetailOperator();
	}
	
	public CustomerInterface initUser(){
		return (CustomerInterface)new CustomerOperator();
	}
	public CustomerOperator initCustomerOperator(){
		return new CustomerOperator();
	}

}
