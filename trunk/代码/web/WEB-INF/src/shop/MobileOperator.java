package shop;
import dbconnection.DBConnection;
import java.util.ArrayList;
import java.util.Iterator;
public class MobileOperator extends MobileAbstract{
	public static Iterator getPro_by_brand(String brand){
		ArrayList arraylist=new ArrayList();
		String str="SELECT *" +
		"FROM mobilephone,products_information" +
		"WHERE  mobilephone.products_id=products_information.products_id "+
		"AND brand="+brand;
		MobileOperator mobileoperator=new MobileOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				mobileoperator.setProducts_id(dbc.getString("products_id"));
				mobileoperator.setProductsname(dbc.getString("productsname"));
				mobileoperator.setPrice(dbc.getFloat("price"));
			    mobileoperator.setImage(dbc.getString("image"));
			    arraylist.add(mobileoperator);
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
		"AND price>" +price_low+"type_id="+"005";//005是手机的类别编号
	
		MobileOperator mobileoperator=new MobileOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				mobileoperator.setProducts_id(dbc.getString("products_id"));
				mobileoperator.setProductsname(dbc.getString("productsname"));
				mobileoperator.setPrice(dbc.getFloat("price"));
			    mobileoperator.setImage(dbc.getString("image"));
			    arraylist.add(mobileoperator);
			}
			return arraylist.iterator();		
	}catch(Exception e){
		e.printStackTrace();
		return null;
	}
	}
	
	public static Iterator getPro_by_productname (String productname){
		ArrayList arraylist=new ArrayList();
		String str="SELECT *" +
		"FROM mobilephone,products_information" +
		"WHERE " +
		"mobilephone.products_id=products_information.products_id "+
		"AND productsname="+productname;
		
		MobileOperator mobileoperator=new MobileOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				mobileoperator.setProducts_id(dbc.getString("products_id"));
				mobileoperator.setProductsname(dbc.getString("productsname"));
				mobileoperator.setPrice(dbc.getFloat("price"));
				mobileoperator.setImage(dbc.getString("image"));
				arraylist.add(mobileoperator);
			}
			return arraylist.iterator();		
	}catch(Exception e){
		e.printStackTrace();
		return null;
	}
	}

	
	
	public static int setPro(MobileAbstract mobile){ 
		String sql_insert_inf="INSERT INTO products_information"+
		"(products_id, productsname,type_id,quantity,price,description," +
		" inprice,discount,clickrate,image)"+
		"values(mobile.getProducts_id(),mobile.getProductsname(),mobile.getType_id()," +
		"mobile.getQuantity(),mobile.getPrice(),mobile.getDiscription()," +
		"mobile.getInprice(),mobile.getDiscount()," +
		"mobile.getClickrate()," +
		"mobile.getImage())";
		
		String sql_insert_mobile="INSERT INTO mobilephone" +
				"(products_id,brand,screen,nettype,appearance,screencolor," +
				"datatransport,camera,ontime,mptype,screentype,storage,color" +
				"values(mobile.getProducts_id(),mobile.getBrand(),mobile.getScreen()," +
				"mobile.getNettype(),mobile.getAppearance(),mobile.getScreencolor()," +
				"mobile.getDatatransport(),mobile.getCamera(),mobile.getOntime()," +
				"mobile.getMptype(),mobile.getScreentype(),mobile.getStorage(),mobile.getColor())" ;
		
		
		int result_insert_inf=0;
		int result_insert_mobile=0;
		try{
			DBConnection dbc=new DBConnection();
			result_insert_inf=dbc.excuteUpdate(sql_insert_inf);
			result_insert_mobile=dbc.excuteUpdate(sql_insert_mobile);
			return result_insert_inf*result_insert_mobile ;
			
		}
		catch(Exception e){
			e.printStackTrace();
			return result_insert_inf*result_insert_mobile;
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
		String str="SELECT *FROM mobilephone,products_information " +
				"WHERE mobilephone.products_id=products_information.products_id " +
				"AND products_information.products_id="+products_id;
		MobileOperator mobileoperator=new MobileOperator();
	
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				mobileoperator.setAppearance(dbc.getString("appearance"));
				mobileoperator.setBrand(dbc.getString("brand"));
				mobileoperator.setCamera(dbc.getString("camera"));
		        mobileoperator.setColor(dbc.getString("color"));
				mobileoperator.setDatatransport(dbc.getString("datatransport"));
				mobileoperator.setMptype(dbc.getString("mptype"));
				mobileoperator.setNettype(dbc.getString("nettype"));
				mobileoperator.setOntime(dbc.getString("ontime"));
				mobileoperator.setScreen(dbc.getString("screen"));
				mobileoperator.setScreencolor(dbc.getString("screencolor"));
				mobileoperator.setScreentype(dbc.getString("screentype"));
				mobileoperator.setStorage(dbc.getString("storage"));
			
				mobileoperator.setProducts_id(dbc.getString("products_id"));
				mobileoperator.setProductsname(dbc.getString("productsname"));
				mobileoperator.setType_id(dbc.getString("type_id"));
				mobileoperator.setQuantity(dbc.getInt("quantity"));
				mobileoperator.setPrice(dbc.getFloat("price"));
				 mobileoperator.setImage(dbc.getString("image"));
				mobileoperator.setInprice(dbc.getFloat("inprice"));
				mobileoperator.setClickrate(dbc.getLong("clickrate"));
				mobileoperator.setDiscount(dbc.getFloat("discount"));
				mobileoperator.setDiscription(dbc.getString("description"));
				
				arraylist.add(mobileoperator);
			}
			return arraylist.iterator();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
}
