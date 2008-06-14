package shop;
import dbconnection.DBConnection;
import java.util.ArrayList;
import java.util.Iterator;
public class ComputerOperator extends ComputerAbstract{
	public static Iterator getPro_by_brand(String brand){
		ArrayList arraylist=new ArrayList();
		String str="SELECT *" +
		"FROM computer,products_information" +
		"WHERE  computer.products_id=products_information.products_id "+
		"AND brand="+brand;
		ComputerOperator computeroperator =new ComputerOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				computeroperator.setProducts_id(dbc.getString("products_id"));
				computeroperator.setProductsname(dbc.getString("productsname"));
				computeroperator.setPrice(dbc.getFloat("price"));
			    computeroperator.setImage(dbc.getString("image"));
			    arraylist.add(computeroperator);
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
		"AND price>" +price_low+"type_id="+"004";//004是电脑的类别编号
	
		ComputerOperator computeroperator =new ComputerOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				computeroperator.setProducts_id(dbc.getString("products_id"));
				computeroperator.setProductsname(dbc.getString("productsname"));
				computeroperator.setPrice(dbc.getFloat("price"));
				computeroperator.setImage(dbc.getString("image"));
				arraylist.add(computeroperator);
			}
			return arraylist.iterator();		
	}catch(Exception e){
		e.printStackTrace();
		return null;
	}
	}
	
	public static Iterator getPro_by_type(String type){
		ArrayList arraylist=new ArrayList();
		String str="SELECT *" +
		"FROM computer,products_information" +
		"WHERE " +
		"computer.products_id=products_information.products_id "+
		"AND type="+type;
		
		ComputerOperator computeroperator =new ComputerOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				computeroperator.setProducts_id(dbc.getString("products_id"));
				computeroperator.setProductsname(dbc.getString("productsname"));
				computeroperator.setPrice(dbc.getFloat("price"));
				 computeroperator.setImage(dbc.getString("image"));
				arraylist.add(computeroperator);
			}
			return arraylist.iterator();		
	}catch(Exception e){
		e.printStackTrace();
		return null;
	}
	}

	
	
	public static int setPro(ComputerAbstract computer){ 
		String sql_insert_inf="INSERT INTO products_information"+
		"(products_id, productsname,type_id,quantity,price,description," +
		" inprice,discount,clickrate,image)"+
		"values('"+computer.getProducts_id()+"','"+computer.getProductsname()+"','"+
		computer.getType_id()+"','"+computer.getQuantity()+"','"+computer.getPrice()+"','"+
		computer.getDiscription()+"','"+computer.getInprice()+"','"+computer.getDiscount()+"','0','"+
		computer.getImage()+"')";
		
		String sql_insert_computer="INSERT INTO computer" +
				"(products_id,cpu,hard,ramtype,ramsize,screen," +
				"brand,weight,speed,color,type) " +
				"values('"+computer.getProducts_id()+"','"+computer.getCpu()+"','"+computer.getHard()+"','"+
				computer.getRamtype()+"','"+computer.getRamsize()+"','"+computer.getScreen()+"','"+
				computer.getBrand()+"','"+computer.getWeight()+"','"+computer.getSpeed()+"','"+
				computer.getColor()+"','"+computer.getType()+"')" ;
		
		
		int result_insert_inf=0;
		int result_insert_computer=0;
		try{
			DBConnection dbc=new DBConnection();
			result_insert_inf=dbc.excuteUpdate(sql_insert_inf);
			result_insert_computer=dbc.excuteUpdate(sql_insert_computer);
			return result_insert_inf*result_insert_computer ;
			
		}
		catch(Exception e){
			e.printStackTrace();
			return result_insert_inf*result_insert_computer;
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
		String str="SELECT * FROM computer,products_information" +
				" WHERE computer.products_id=products_information.products_id " +
				"AND computer.products_id="+products_id;
		ComputerOperator computeroperator =new ComputerOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				computeroperator.setBrand(dbc.getString("brand"));
				computeroperator.setColor(dbc.getString("color"));
				computeroperator.setCpu(dbc.getString("cpu"));
				computeroperator.setHard(dbc.getString("hard"));
				computeroperator.setRamsize(dbc.getString("ramsize"));
				computeroperator.setRamtype(dbc.getString("ramtype"));
				computeroperator.setScreen(dbc.getString("screen"));
				computeroperator.setSpeed(dbc.getString("speed"));
				computeroperator.setType(dbc.getString("type"));
				computeroperator.setWeight(dbc.getString("weight"));
				
				
				computeroperator.setProducts_id(dbc.getString("products_id"));
				computeroperator.setProductsname(dbc.getString("productsname"));
				computeroperator.setType_id(dbc.getString("type_id"));
				computeroperator.setQuantity(dbc.getInt("quantity"));
				computeroperator.setPrice(dbc.getFloat("price"));
				 computeroperator.setImage(dbc.getString("image"));
				computeroperator.setInprice(dbc.getFloat("inprice"));
				computeroperator.setClickrate(dbc.getLong("clickrate"));
				computeroperator.setDiscount(dbc.getFloat("discount"));
				computeroperator.setDiscription(dbc.getString("description"));
				arraylist.add(computeroperator);
			}
			return arraylist.iterator();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
}
