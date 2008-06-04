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

}
