/*
 * 作者：陈乔乔
 * 日期：2008-6-8
 * 功能描述：对所有商品的公共属性的搜索。
 */
package shop;

import dbconnection.DBConnection;
import java.sql.ResultSet;
import java.util.*;


public class AllOperator extends Products{
	public static ResultSet getPro_by_Proname(String proname){
	//	ArrayList arraylist=new ArrayList();
		String sqlstr="select * from products_information where productsname='"
			+proname+"'";
		DBConnection dbc=null;
		ResultSet rst=null;
		//AllOperator alloperator=new AllOperator();
		try{
			dbc=new DBConnection();
			rst=dbc.excuteQuery(sqlstr,0);
			/*
			while(dbc.next()){
				alloperator.setProducts_id(dbc.getString("products_id"));
				alloperator.setProductsname(dbc.getString("productsname"));
			    alloperator.setPrice(dbc.getFloat("price"));
				alloperator.setImage(dbc.getString("image"));
				arraylist.add(alloperator);
			}
			return arraylist.iterator();*/
			
			
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		finally{
			if(dbc!=null)
			{
				//dbc.Close();
				
			}
		}
		return rst;
	}



	public static ResultSet getPro_by_ID(String id){
		//	ArrayList arraylist=new ArrayList();
			String sqlstr="select * from products_information where products_id = '"
				+id+"'";
			DBConnection dbc=null;
			ResultSet rst=null;
			//AllOperator alloperator=new AllOperator();
			try{
				dbc=new DBConnection();
				rst=dbc.excuteQuery(sqlstr,0);
				/*
				while(dbc.next()){
					alloperator.setProducts_id(dbc.getString("products_id"));
					alloperator.setProductsname(dbc.getString("productsname"));
				    alloperator.setPrice(dbc.getFloat("price"));
					alloperator.setImage(dbc.getString("image"));
					arraylist.add(alloperator);
				}
				return arraylist.iterator();*/
				
				
			}catch(Exception e){
				e.printStackTrace();
				return null;
			}
			finally{
				if(dbc!=null)
				{
					//dbc.Close();
					
				}
			}
			return rst;
		}
}
