package shop;
import dbconnection.DBConnection;
import java.util.ArrayList;
import java.util.Iterator;
public class DressOperator extends DressAbstract{
	public static Iterator getPro_by_brand(String brand){
		ArrayList arraylist=new ArrayList();
		String str="SELECT *" +
		"FROM dress,products_information" +
		"WHERE  dress.products_id=products_information.products_id "+
		"AND brand="+brand;
		DressOperator dressoperator =new DressOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				dressoperator.setProducts_id(dbc.getString("products_id"));
				dressoperator.setProductsname(dbc.getString("productsname"));
				dressoperator.setPrice(dbc.getFloat("price"));
			    dressoperator.setImage(dbc.getString("image"));
			    arraylist.add(dressoperator);
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
		"AND price>" +price_low+"type_id="+"003";//003是服饰的类别编号
	
		DressOperator dressoperator =new DressOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				dressoperator.setProducts_id(dbc.getString("products_id"));
				dressoperator.setProductsname(dbc.getString("productsname"));
				dressoperator.setPrice(dbc.getFloat("price"));
			    dressoperator.setImage(dbc.getString("image"));
			    arraylist.add(dressoperator);
			}
			return arraylist.iterator();		
	}catch(Exception e){
		e.printStackTrace();
		return null;
	}
	}
	
	public static Iterator getPro_by_style(String style){
		ArrayList arraylist=new ArrayList();
		String str="SELECT *" +
		"FROM dress,products_information" +
		"WHERE " +
		"dress.products_id=products_information.products_id "+
		"AND style="+style;
		
		DressOperator dressoperator =new DressOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				dressoperator.setProducts_id(dbc.getString("products_id"));
				dressoperator.setProductsname(dbc.getString("productsname"));
				dressoperator.setPrice(dbc.getFloat("price"));
				 dressoperator.setImage(dbc.getString("image"));
				arraylist.add(dressoperator);
			}
			return arraylist.iterator();		
	}catch(Exception e){
		e.printStackTrace();
		return null;
	}
	}

	
	
	public static int setPro(DressAbstract dress){ 
		String sql_insert_inf="INSERT INTO products_information"+
		"(products_id, productsname,type_id,quantity,price,description," +
		" inprice,discount,clickrate,image)"+
		"values('"+dress.getProducts_id()+"','"+dress.getProductsname()+"','"+dress.getType_id()+"','"+
		dress.getQuantity()+"','"+dress.getPrice()+"','"+dress.getDiscription()+"','"+
		dress.getInprice()+"','"+dress.getDiscount()+"','"+
		dress.getClickrate()+"','"+
		dress.getImage()+"')";
		
		String sql_insert_dress="INSERT INTO dress" +
				"(products_id,brand,isbn,dsize,style,color," +
				"sex,material,season)" +
				"values('"+dress.getProducts_id()+"','"+dress.getBrand()+"','"+
				dress.getIsbn()+"','"+dress.getDsize()+"','"+dress.getStyle()+"','"+
				dress.getColor()+"','"+dress.getSex()+"','"+dress.getMaterial()+"','"+
				dress.getSeason()+"')";
		
		
		int result_insert_inf=0;
		int result_insert_dress=0;
		try{
			DBConnection dbc=new DBConnection();
			result_insert_inf=dbc.excuteUpdate(sql_insert_inf);
			result_insert_dress=dbc.excuteUpdate(sql_insert_dress);
			return result_insert_inf*result_insert_dress ;
			
		}
		catch(Exception e){
			e.printStackTrace();
			return result_insert_inf*result_insert_dress;
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
		String str="SELECT *FROM dress,products_information " +
				"WHERE dress.products_id=products_information.products_id " +
				"AND products_information.products_id="+products_id;
		DressOperator dressoperator =new DressOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				dressoperator.setBrand(dbc.getString("brand"));
				dressoperator.setColor(dbc.getString("color"));
				dressoperator.setDisze(dbc.getString("dsize"));
				dressoperator.setIsbn(dbc.getString("isbn"));
				dressoperator.setMaterial(dbc.getString("material"));
				dressoperator.setSeason(dbc.getString("season"));
				dressoperator.setSex(dbc.getString("sex"));
				dressoperator.setStyle(dbc.getString("style"));
				
				dressoperator.setProducts_id(dbc.getString("products_id"));
				dressoperator.setProductsname(dbc.getString("productsname"));
				dressoperator.setType_id(dbc.getString("type_id"));
				dressoperator.setQuantity(dbc.getInt("quantity"));
				dressoperator.setPrice(dbc.getFloat("price"));
				 dressoperator.setImage(dbc.getString("image"));
			
				dressoperator.setInprice(dbc.getFloat("inprice"));
				dressoperator.setClickrate(dbc.getLong("clickrate"));
				dressoperator.setDiscount(dbc.getFloat("discount"));
				dressoperator.setDiscription(dbc.getString("description"));
				
				arraylist.add(dressoperator);
			}
			return arraylist.iterator();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
}
