/*
 * ���ߣ�������
 * ʱ�䣺2008-06-04
 * ���ܣ�ʵ�ֶ�����ϸ����ӺͶ�ȡ����
 */
package order;
import dbconnection.*;
import java.util.*;
import tools.*;

/* ʵ����Ʒ�Ķ�ȡ*/
public class OrderdetailOperator extends OrderdetailAbstract{
	
	public Iterator getOrderdetail(String orderid){
		ArrayList arraylist=new ArrayList();
		String sql="select * from order_detail where order_id='"+orderid+"'";
		
		try{
			DBConnection conn=new DBConnection();
			conn.excuteQuery(sql);
			while (conn.next()) {
				InterfaceOrderdetail orderdetail=Factory.getInstance().initOrderdetail();
				orderdetail.setOrderid(conn.getString(1));
				orderdetail.setproductsid(conn.getString(2));
				orderdetail.setproductsname(conn.getString(3));
				orderdetail.setprice(conn.getFloat(4));
				orderdetail.setdiscount(conn.getFloat(5));
				orderdetail.setdiscountprice(conn.getFloat(6));
				orderdetail.setquantity(conn.getInt(7));
				//System.out.println(conn.getString(2));
				
				arraylist.add(orderdetail);
				//arraylist.add(conn.getString(2));
				}
				return arraylist.iterator();

		}
		catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
}
