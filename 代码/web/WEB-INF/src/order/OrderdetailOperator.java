/*
 * ���ߣ�������
 * ʱ�䣺2008-06-04
 * ���ܣ�ʵ�ֶ�����ϸ����ӺͶ�ȡ����
 */
package order;
import dbconnection.*;
import java.util.*;
import tools.*;
import shopcart.*;

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
	
	public static boolean  savaOrderDetail(BuyList shop,String orderid){
		DBConnection conn=null;
		String sql="insert into order_detail(order_id,products_id,productsname,price,discount,quantity)"+
					"values (%orderid%,%productid%,%productname%,%price%,%discount%,%quantity%)";
		String productid=shop.id;
		String productname=shop.warename;
		String price=String.valueOf(shop.price);
		String discount=String.valueOf(shop.rate); 
		String quantity=String.valueOf(shop.number);
		
		try{
			conn=new DBConnection();
	     	sql.replace("%orderid%",orderid).replace("%productid%", productid)
	     		.replace("%productname%", productname)
	     		.replace("%price%",price)
	     		.replace("%discount%",discount)
	     		.replace("%quatity%",quantity);
	     	conn.excuteQuery(sql);
	     	return true;
		}
		catch(Exception e){
			return false;
		}
	}
	

}
