/*
 * 作者：宋肇腾
 * 时间：2008-06-04
 * 功能：继承Factory类，实现所用借口和操作类的初始化
 * PS：如果有需要添加的方法，有开发人员自行添加，并在该方法前加注释，说明作者、时间和功能
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
