package shop;
import dbconnection.DBConnection;
import java.util.ArrayList;
import java.util.Iterator;
public class InsertBookTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) throws Exception{
BookOperator book=new BookOperator();
		
		book.setAuthor("����");
		book.setBooksize("90*120");
		
		book.setInprice(12.5f);
		book.setIsbn("23-3455-3252-2");
		book.setPrice(18.5f);
		book.setProducts_id("17");
		book.setProductsname("̫������ɣ�ɺ���");
		book.setPublisher("���������");
		book.setQuantity(50);
		book.setType_id("1");
	int flag=BookOperator.setPro(book);
	if(flag==1){
		System.out.println("Success!!!");
	}
		// TODO Auto-generated method stub

	}

}
