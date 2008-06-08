package shop;
import dbconnection.DBConnection;
import java.util.ArrayList;
import java.util.Iterator;
public class BookOperator extends BookAbstract{
	public static Iterator getPro_by_publisher(String publisher){
		ArrayList arraylist=new ArrayList();
		String str="SELECT *" +
		"FROM bookdetail,products_information" +
		"WHERE bookdetail.products_id=products_information.products_id "+
		"AND publisher="+publisher;
		BookOperator bookoperator =new BookOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				bookoperator.setProducts_id(dbc.getString("products_id"));
				bookoperator.setProductsname(dbc.getString("productsname"));
				bookoperator.setPrice(dbc.getFloat("price"));
				bookoperator.setImage(dbc.getString("image"));
				arraylist.add(bookoperator);
			}
			return arraylist.iterator();		
	}catch(Exception e){
		e.printStackTrace();
		return null;
	}
	}
	
	
	public static Iterator getPro_by_author(String author){
		ArrayList arraylist=new ArrayList();
		String str="SELECT * FROM bookdetail,products_information " +
				" WHERE bookdetail.products_id=products_information.products_id  " +
				"AND author="+author;
		BookOperator bookoperator =new BookOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				bookoperator.setProducts_id(dbc.getString("products_id"));
				bookoperator.setProductsname(dbc.getString("productsname"));
				bookoperator.setPrice(dbc.getFloat("price"));
				bookoperator.setImage(dbc.getString("image"));
				arraylist.add(bookoperator);
			}
			return arraylist.iterator();		
	}catch(Exception e){
		e.printStackTrace();
		return null;
	}
	}
	
	public static Iterator getPro_by_bookname(String bookname){
		ArrayList arraylist=new ArrayList();
		String str="SELECT * FROM bookdetail,products_information " +
				"WHERE bookdetail.products_id=products_information.products_id  " +
				"AND productsname="+bookname;
		BookOperator bookoperator =new BookOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				bookoperator.setProducts_id(dbc.getString("products_id"));
				bookoperator.setProductsname(dbc.getString("productsname"));
				bookoperator.setPrice(dbc.getFloat("price"));
				bookoperator.setImage(dbc.getString("image"));
				arraylist.add(bookoperator);
			}
			return arraylist.iterator();		
	}catch(Exception e){
		e.printStackTrace();
		return null;
	}
	}

	
	
	public static int setPro(BookAbstract book){
		String sql_insert_inf="INSERT INTO products_information"+
		"(products_id, productsname,type_id,quantity,price,description," +
		" inprice,discount,clickrate,image)"+
		"values(book.getProducts_id(),book.getProductsname(),book.getType_id()," +
		"book.getQuantity(),book.getPrice(),book.getDiscription()," +
		"book.getInprice(),book.getDiscount()," +
		"book.getClickrate()," +
		"book.getImage())";
	
		
		String sql_insert_book="INSERT INTO bookdetial" +
				"(products_id,isbn,publisher,author,booksize)" +
				"values(book.getProducts_id(),book.getIsbn()," +
				"book.getPublisher(),book.getAuthor()," +
				"book.getBooksize())";
		
		
		int result_insert_inf=0;
		int result_insert_book=0;
		try{
			DBConnection dbc=new DBConnection();
			result_insert_inf=dbc.excuteUpdate(sql_insert_inf);
			result_insert_book=dbc.excuteUpdate(sql_insert_book);
			return result_insert_inf*result_insert_book ;
			
		}
		catch(Exception e){
			e.printStackTrace();
			return result_insert_inf*result_insert_book;
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
		String str= "SELECT *FROM bookdetail,products_information " +
				"WHERE bookdetail.products_id=products_information.products_id " +
				"AND products_information.products_id="+products_id;
		BookOperator bookoperator =new BookOperator();
		try{
			DBConnection dbc=new DBConnection();
			dbc.excuteQuery(str);
			
			while(dbc.next()){
				bookoperator.setAuthor(dbc.getString("author"));
				bookoperator.setBooksize(dbc.getString("booksize"));
				bookoperator.setIsbn(dbc.getString("ISBN"));
				bookoperator.setPublisher(dbc.getString("publisher"));
				
				bookoperator.setProducts_id(dbc.getString("products_id"));
				bookoperator.setProductsname(dbc.getString("productsname"));
				bookoperator.setType_id(dbc.getString("type_id"));
				bookoperator.setQuantity(dbc.getInt("quantity"));
				bookoperator.setPrice(dbc.getFloat("price"));
				bookoperator.setImage(dbc.getString("image"));
				bookoperator.setInprice(dbc.getFloat("inprice"));
				bookoperator.setClickrate(dbc.getLong("clickrate"));
				bookoperator.setDiscount(dbc.getFloat("discount"));
				bookoperator.setDiscription(dbc.getString("description"));
				
				arraylist.add(bookoperator);
			}
			return arraylist.iterator();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
				
	
	}
	
	

}
