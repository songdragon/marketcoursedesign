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
		//String state=order.getState();
		String state="δ��";
		String orderdate=order.getOrderdate();
		//String detime=order.getDetime();
		String detime="20090909";
		order.setOrderid();
		String orderid=order.getOrderid();
		String sqlStr="insert into orders values('"+orderid+"',"+total+",'"+customername+"','"
				+receiver+"','"+address+"','"+zipcode+"','"+tel+"','"+state+"','"
				+orderdate+"','"+detime+"')";
		DBConnection dbconnection=null;
		try{
			dbconnection=new DBConnection();
			dbconnection.excuteUpdate(sqlStr);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}finally{
			if(dbconnection!=null)
				dbconnection.Close();
		}

	}

}

