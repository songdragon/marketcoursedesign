/*
 * ���ߣ�������
 * ʱ�䣺2008-06-04
 * ˵����
 */
package tools;
import order.*;
import user.*;
import manager.*;

public abstract class Factory {
	private static Factory factory=null;
	public Factory(){};
	public static Factory getInstance(){
		if(factory == null){
			try{
				Class factoryClass = Class.forName("tools.SqlFactory");
				factory = (Factory)factoryClass.newInstance();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return factory;
	}
	public abstract InterfaceOrderdetail initOrderdetail();
	public abstract OrderdetailOperator initOrderdetailOperator();
	
	//����user������Ҫ�ĳ�ʼ������,���ӣ�2008-6-8 13��34
	public abstract CustomerInterface initUser();
	public abstract CustomerOperator initCustomerOperator();
	

}
