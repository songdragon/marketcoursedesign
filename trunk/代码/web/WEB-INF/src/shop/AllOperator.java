/*
 * ���ߣ�������
 * ���ڣ�2008-6-8
 * ������������������Ʒ�Ĺ������Ե�������
 */
package shop;

import dbconnection.DBConnection;
import java.util.*;

public class AllOperator extends Products{
	public static Iterator getPro_by_Proname(String proname){
		ArrayList arraylist=new ArrayList();
		String sqlstr="select * from products_information where productsname='"
			+proname+"'";
		AllOperator alloperator=new AllOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(sqlstr);
			while(dbc.next()){
				alloperator.setProducts_id(dbc.getString("products_id"));
				alloperator.setProductsname(dbc.getString("productsname"));
			    alloperator.setPrice(dbc.getFloat("price"));
				alloperator.setImage(dbc.getString("image"));
				arraylist.add(alloperator);
			}
			return arraylist.iterator();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
}
