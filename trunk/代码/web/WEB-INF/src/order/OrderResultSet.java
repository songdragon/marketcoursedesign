/*
 * ���ߣ�������
 * ���ڣ�2008-6-13
 * �������������غ�̨������Ϣ�Ľ������Ϊ��ʵ�ֶ����ķ�ҳ��ʾ��
 */
package order;

import dbconnection.DBConnection;
import java.sql.ResultSet;
import java.util.*;

public class OrderResultSet extends OrderAbstract{
	public static ResultSet Order_by_customername(String state){
		String sqlstr="select * from orders where state='"         //���ݶ���״̬��ѯ��sql���
			+state+"'order by or_date";
		DBConnection dbc=null;
		ResultSet rst=null;
		try{
			dbc=new DBConnection();
			rst=dbc.excuteQuery(sqlstr,0);
		}catch(Exception e){
			//e.printStackTrace();
			return null;
		}
		return rst;
	}
}
