/*
 * 作者：宋肇腾
 * 日期：2008-05-31 10：00
 * 功能描述：建立sqlserver2000连接
 */
package dbconnection;

import java.sql.*;
import javax.naming.*;
import javax.sql.DataSource;
public class DBConnection {
	/*
	 * 成员属性 _ConnectionUrl定义连接URL
	 */
	private String _ConnectionUrl="jdbc:sqlserver://SONG-P7OCQJYLUO\\DATEBASE:1379;"+
	"databaseName=shopping;user=sa;password=19880313";
	private Connection _con=null;
	private Statement _stmt = null;
	private ResultSet _rst;
	private PreparedStatement _pstmt;

	private boolean init(){
		try{
			Context initCtx = new InitialContext();  
		    Context envCtx = (Context) initCtx.lookup("java:comp/env");
		    DataSource ds = (DataSource) envCtx.lookup("jdbc/mydb");
			_con=ds.getConnection();
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}

	/*
	 * 构造方法1，建立与SQL Server2000 连接
	 */
	public DBConnection(){
		try{
			if(init())
				_stmt = _con.createStatement();	;
			/*else
			{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				_con = DriverManager.getConnection(_ConnectionUrl);
				_stmt = _con.createStatement();
			}*/
		}
		catch(Exception e){
			e.printStackTrace();
		}
		if(_con!=null){
			System.out.println("ok");
		}
	}

	/*
	 * 构造方法2，建立与SQL Server2000 连接,传入参数为连接字符串
	 */
	public DBConnection(String ConnectionUrl){
		try{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			_con = DriverManager.getConnection(ConnectionUrl);
			_stmt = _con.createStatement();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		if(_con!=null){
			System.out.println("ok");
		}
	}

	/*
	 * 连接关闭方法
	 */
	public boolean Close(){
		if (_stmt != null) 
			try { 
				_stmt.close(); 
			} 
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		if (_con != null) 
			try { 
				_con.close(); 
			} 
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}

	/*
	 * 查询方法
	 */
	public void excuteQuery(String select){
		try{
			if(_stmt!=null){
				_rst=_stmt.executeQuery(select);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		//return _rst;
	}

	/*
	 * 更新方法
	 */
	public int excuteUpdate(String update){
		int status=0;

		try{
			if(_stmt!=null){
				status=_stmt.executeUpdate(update);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return status;
	}


	/*
	 * 以下为赋值方法
	 */
	public void setString(int i,String s) {							//字符串赋值
		try { _pstmt.setString(i,s); }
		catch(Exception e) { e.printStackTrace(); }
	}	
	public void setBoolean(int i, boolean flag) {						//布尔型赋值
		try{ _pstmt.setBoolean(i, flag);}
		catch(Exception e) { e.printStackTrace();}
	}
	public void setDate(int i, Date date) {							//日期类型赋值
		try{_pstmt.setDate(i, date);}
		catch(Exception e) { e.printStackTrace();}
	}
	public void setTime(int i, Time time) {							//时间类型赋值
		try{_pstmt.setTime(i,time);}
		catch(Exception e) { e.printStackTrace();}
	}
	public void setShort(int i, short word0) {						//Short类型赋值
		try{_pstmt.setShort(i,word0);}
		catch(Exception e) {e.printStackTrace();}
	}
	public void setInt(int i, int j) {								//整数类型赋值
		try{_pstmt.setInt(i,j);}
		catch(Exception e) { e.printStackTrace();}
	}
	public void setLong(int i, long l) {							//长整型赋值
		try{_pstmt.setLong(i, l);}
		catch(Exception e) { e.printStackTrace();}
	}
	public void setFloat(int i, float f) {							//浮点型赋值
		try{_pstmt.setFloat(i, f);}
		catch(Exception e) { e.printStackTrace();}
	}
	public void setDouble(int i, double d) {						//Double类型赋值
		try{_pstmt.setDouble(i, d);}
		catch(Exception e) {e.printStackTrace();}
	}

	//以下为取值方法
	public boolean getBoolean(int i)  throws Exception{				//取得布尔类型的字段，通过列号
		return _rst.getBoolean(i);
	}
	public boolean getBoolean(String s) throws Exception{			//取得布尔类型的字段，通过字段名
		return _rst.getBoolean(s);
	}
	public Date getDate(int i) throws Exception{					//取得Date类型的字段，通过列号
		return _rst.getDate(i);
	}
	public Date getDate(String s) throws Exception{					//取得Date类型的字段，通过字段名
		return _rst.getDate(s);
	}
	public Time getTime(int i) throws Exception{					//取得Time类型的字段，通过列号
		return _rst.getTime(i);
	}
	public Time getTime(String s) throws Exception{					//取得Time类型的字段，通过字段名
		return _rst.getTime(s);
	}
	public double getDouble(int i) throws Exception{				//取得Double类型的字段，通过列号
		return _rst.getDouble(i);
	}
	public double getDouble(String s) throws Exception{			//取得Double类型的字段，通过字段名
		return _rst.getDouble(s);
	}
	public float getFloat(int i) throws Exception{				//取得Float类型的字段，通过列号
		return _rst.getFloat(i);
	}
	public float getFloat(String s) throws Exception{				//取得Float类型的字段，通过字段名
		return _rst.getFloat(s);
	}
	public int getInt(int i) throws Exception{					//取得整数类型的字段，通过列号
		return _rst.getInt(i);
	}
	public int getInt(String s) throws Exception{				//取得整数类型的字段，通过字段名
		return _rst.getInt(s);
	}
	public long getLong(int i) throws Exception{				//取得长整型的字段，通过列号
		return _rst.getLong(i);
	}
	public long getLong(String s) throws Exception{				//取得长整型的字段，通过字段名
		return _rst.getLong(s);
	}
	public short getShort(int i) throws Exception{				//取得Short类型的字段，通过列号
		return _rst.getShort(i);
	}
	public short getShort(String s) throws Exception{			//取得Short类型的字段，通过字段名
		return _rst.getShort(s);
	}
	public String getString(int i)  throws Exception{				//取得字符串类型的字段，通过列号
		return _rst.getString(i);
	}
	public String getString(String s)  throws Exception {			//取得字符串类型的字段，通过字段名
		return _rst.getString(s); 
	}
	
	//指针下移一位
	public boolean next(){
		try {return _rst.next();}
		catch(Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	//返回结果集行数 2008-06-03添加，用于生成新的订单号、管理员编号
	public int rows(){
		try{
		return _rst.getFetchSize();//修正返回行数方法
		}
		catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}


}

