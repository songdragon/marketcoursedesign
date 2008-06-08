/*
 * 作者：江军
 * 时间：2008-06-05
 * 功能：实现订单的添加和读取操作
 */
package order;
import dbconnection.*;
import java.util.*;
import tools.*;

/* 实现订单的读取*/
public class OrderReadOperator extends OrderAbstract{ 
	
	public Iterator getOrder(String orderid){
		ArrayList arraylist=new ArrayList();
		String sql="select * from order where order_id='"+orderid+"'";
		
		try{
			DBConnection conn=new DBConnection();
			conn.excuteQuery(sql);
			while (conn.next()) {
				InterfaceOrder order=Factory.getInstance().initOrder();
				order.setOrderid(conn.getString(1));
				order.setTotal(conn.getString(2));
				order.setCustomername(conn.getString(3));
				order.setReceiver(conn.getString(4));
				order.setAddress(conn.getString(5));
				order.setZipcode(conn.getString(6));
				order.setTel(conn.getString(7));
                order.setState(conn.getString(8)); 
				order.setOrderdate(conn.getString(9));
                order.setDetime(conn.getString(10));
                                
				arraylist.add(order);
				}
				return arraylist.iterator();

		}
		catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
}
