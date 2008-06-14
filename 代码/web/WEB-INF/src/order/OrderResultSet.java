/*
 * 作者：陈乔乔
 * 日期：2008-6-13
 * 功能描述：返回后台订单信息的结果集，为了实现订单的分页显示。
 */
package order;

import dbconnection.DBConnection;
import java.sql.ResultSet;
import java.util.*;

public class OrderResultSet extends OrderAbstract{
	public static ResultSet Order_by_customername(String state){
		String sqlstr="select * from orders where state='"         //根据订单状态查询的sql语句
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
