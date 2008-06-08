package shop;
import dbconnection.DBConnection;
import java.util.ArrayList;
import java.util.Iterator;
public class MakeupOperator extends MakeupAbstract{
	public static Iterator getPro_by_brand(String brand){
		ArrayList arraylist=new ArrayList();
		String str="SELECT *" +
		"FROM makeup ,products_information" +
		"WHERE makeup.products_id=products_information.products_id "+
		"AND brand="+brand;
		MakeupOperator makeupoperator=new MakeupOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				makeupoperator.setProducts_id(dbc.getString("products_id"));
				makeupoperator.setProductsname(dbc.getString("productsname"));
				makeupoperator.setPrice(dbc.getFloat("price"));
			    makeupoperator.setImage(dbc.getString("image"));
			    arraylist.add(makeupoperator);
			}
			return arraylist.iterator();		
	}catch(Exception e){
		e.printStackTrace();
		return null;
	}
	}
	
	
	public static Iterator getPro_by_price(float price_low, float price_high){
		ArrayList arraylist=new ArrayList();
		String str="SELECT *" +
		"FROM products_information" +
		"WHERE price<"+price_high+
		"AND price>" +price_low+"type_id="+"002";//002是化妆品的类别编号
	
		MakeupOperator makeupoperator=new MakeupOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				makeupoperator.setProducts_id(dbc.getString("products_id"));
				makeupoperator.setProductsname(dbc.getString("productsname"));
				makeupoperator.setPrice(dbc.getFloat("price"));
				 makeupoperator.setImage(dbc.getString("image"));
				arraylist.add(makeupoperator);
			}
			return arraylist.iterator();		
	}catch(Exception e){
		e.printStackTrace();
		return null;
	}
	}
	
	public static Iterator getPro_by_mfunction(String mfunction){
		ArrayList arraylist=new ArrayList();
		String str="SELECT *" +
		"FROM makeup,products_information" +
		"WHERE " +
		"makeup.products_id=products_information.products_id "+
		"AND mfunction="+mfunction;
		MakeupOperator makeupoperator=new MakeupOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				makeupoperator.setProducts_id(dbc.getString("products_id"));
				makeupoperator.setProductsname(dbc.getString("productsname"));
				makeupoperator.setPrice(dbc.getFloat("price"));
				 makeupoperator.setImage(dbc.getString("image"));
				arraylist.add(makeupoperator);
			}
			return arraylist.iterator();		
	}catch(Exception e){
		e.printStackTrace();
		return null;
	}
	}

	
	
	public static int setPro(MakeupAbstract makeup){ 
		String sql_insert_inf="INSERT INTO products_information"+
		"(products_id, productsname,type_id,quantity,price,description," +
		" inprice,discount,clickrate,image)"+
		"values(makeup.getProducts_id(),makeup.getProductsname(),makeup.getType_id()," +
		"makeup.getQuantity(),makeup.getPrice(),makeup.getDiscription()," +
		"makeup.getInprice(),makeup.getDiscount()," +
		"makeup.getClickrate()," +
		"makeup.getImage())";
		
		
		String sql_insert_makeup="INSERT INTO makeup" +
				"(products_id,brand,isbn,mtype,mfunction,capacity," +
				"maker,outdate,shelflife)" +
				"values(makeup.getProducts_id(),makeup.getBrand()," +
				"makeup.getIsbn(),makeup.getMtype()," +
				"makeup.getMfunction(),makeup.getCapacity(),makeup.getMaker()," +
				"makeup.getOutdate(),makeup.getShelflife())";
		
		
		int result_insert_inf=0;
		int result_insert_makeup=0;
		try{
			DBConnection dbc=new DBConnection();
			result_insert_inf=dbc.excuteUpdate(sql_insert_inf);
			result_insert_makeup=dbc.excuteUpdate(sql_insert_makeup);
			return result_insert_inf*result_insert_makeup ;
			
		}
		catch(Exception e){
			e.printStackTrace();
			return result_insert_inf*result_insert_makeup;
		}	
	}
	
	
	public static int updatePro(String sql_insert){
		int result_insert=0;
		try{
			DBConnection dbc=new DBConnection();
			result_insert=dbc.excuteUpdate(sql_insert);
			
			return result_insert;
			}catch(Exception e){
				e.printStackTrace();
				return result_insert;
			}		
	}
	
	
	public static int deletePro(String products_id){
		String sql_delete="DELETE FROM products_information" +
				"WHERE products_id="+products_id;
		int result_delete=0;
		
		try{
			DBConnection dbc=new DBConnection();
			result_delete=dbc.excuteUpdate(sql_delete);
			
			return result_delete;
			}catch(Exception e){
				e.printStackTrace();
				return result_delete;
			}	
	}
		
	
	
	
	public static Iterator getInformation(String products_id){
		
		ArrayList arraylist=new ArrayList();
		String str="SELECT * FROM makeup,products_information " +
				"WHERE makeup.products_id=products_information.products_id " +
				"AND products_information.products_id="+products_id;
		MakeupOperator makeupoperator=new MakeupOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				makeupoperator.setBrand(dbc.getString("brand"));
				makeupoperator.setCapacity(dbc.getString("capacity"));
				makeupoperator.setIsbn(dbc.getString("ISBN"));
				makeupoperator.setMaker(dbc.getString("maker"));
				makeupoperator.setMfunction(dbc.getString("mfunction"));
				makeupoperator.setMtype(dbc.getString("mtype"));
				makeupoperator.setOutdate(dbc.getString("outdate"));
				makeupoperator.setShelflife(dbc.getString("shelflife"));
				
				
				makeupoperator.setProducts_id(dbc.getString("products_id"));
				makeupoperator.setProductsname(dbc.getString("productsname"));
				makeupoperator.setType_id(dbc.getString("type_id"));
				makeupoperator.setQuantity(dbc.getInt("quantity"));
				makeupoperator.setPrice(dbc.getFloat("price"));
				makeupoperator.setImage(dbc.getString("image"));
			    makeupoperator.setInprice(dbc.getFloat("inprice"));
				makeupoperator.setClickrate(dbc.getLong("clickrate"));
				makeupoperator.setDiscount(dbc.getFloat("discount"));
				makeupoperator.setDiscription(dbc.getString("description"));
				
				arraylist.add(makeupoperator);
			}
			return arraylist.iterator();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
				
	
	}
	
	

}
