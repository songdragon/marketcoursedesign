/*
 *���ߣ�����
 *���ڣ�2008-6-03
 *����������ʵ�ֶ�������ز���
 */
package order;
import dbconnection.*; 
import java.util.List;                 
public class OrderOperator extends OrderAbstract{

	/*�������Ĳ���*/
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

