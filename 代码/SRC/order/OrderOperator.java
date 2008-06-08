/*
 *作者：江军
 *日期：2008-6-03
 *功能描述：实现订单的相关操作
 */
package order;
import dbconnection.*; 
import java.util.List;                 
public class OrderOperator extends OrderAbstract{

	/*订单入库的操作*/
	public boolean saveOrder(OrderAbstract order){
		String total=order.getTotal();
		String customername=order.getCustomername();
		String receiver=order.getReceiver();
		String address=order.getAddress();
		String zipcode=order.getZipcode();
		String tel=order.getTel();
		String state=order.getState();
		String orderdate=order.getOrderdate();
		String detime=order.getDetime();
		order.setOrderid();
		String orderid=order.getOrderid();
		String sqlStr="insert into order values('"+orderid+"',"+total+",'"+customername+"','"
				+receiver+"','"+address+"','"+zipcode+"','"+tel+"','"+state+"',"
				+orderdate+","+detime+")";
		DBConnection dbconnection=null;

			if(dbconnection.excuteUpdate(sqlStr)!=0)
			return true;
	                else
			return false;
		

	}

}

