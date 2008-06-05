/*
 * ���ߣ�������
 * ���ڣ�2008-05-31 10��00
 * ��������������sqlserver2000����
 */
package dbconnection;

import java.sql.*;
import javax.naming.*;
import javax.sql.DataSource;
public class DBConnection {
	/*
	 * ��Ա���� _ConnectionUrl��������URL
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
	 * ���췽��1��������SQL Server2000 ����
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
	 * ���췽��2��������SQL Server2000 ����,�������Ϊ�����ַ���
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
	 * ���ӹرշ���
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
	 * ��ѯ����
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
	 * ���·���
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
	 * ����Ϊ��ֵ����
	 */
	public void setString(int i,String s) {							//�ַ�����ֵ
		try { _pstmt.setString(i,s); }
		catch(Exception e) { e.printStackTrace(); }
	}	
	public void setBoolean(int i, boolean flag) {						//�����͸�ֵ
		try{ _pstmt.setBoolean(i, flag);}
		catch(Exception e) { e.printStackTrace();}
	}
	public void setDate(int i, Date date) {							//�������͸�ֵ
		try{_pstmt.setDate(i, date);}
		catch(Exception e) { e.printStackTrace();}
	}
	public void setTime(int i, Time time) {							//ʱ�����͸�ֵ
		try{_pstmt.setTime(i,time);}
		catch(Exception e) { e.printStackTrace();}
	}
	public void setShort(int i, short word0) {						//Short���͸�ֵ
		try{_pstmt.setShort(i,word0);}
		catch(Exception e) {e.printStackTrace();}
	}
	public void setInt(int i, int j) {								//�������͸�ֵ
		try{_pstmt.setInt(i,j);}
		catch(Exception e) { e.printStackTrace();}
	}
	public void setLong(int i, long l) {							//�����͸�ֵ
		try{_pstmt.setLong(i, l);}
		catch(Exception e) { e.printStackTrace();}
	}
	public void setFloat(int i, float f) {							//�����͸�ֵ
		try{_pstmt.setFloat(i, f);}
		catch(Exception e) { e.printStackTrace();}
	}
	public void setDouble(int i, double d) {						//Double���͸�ֵ
		try{_pstmt.setDouble(i, d);}
		catch(Exception e) {e.printStackTrace();}
	}

	//����Ϊȡֵ����
	public boolean getBoolean(int i)  throws Exception{				//ȡ�ò������͵��ֶΣ�ͨ���к�
		return _rst.getBoolean(i);
	}
	public boolean getBoolean(String s) throws Exception{			//ȡ�ò������͵��ֶΣ�ͨ���ֶ���
		return _rst.getBoolean(s);
	}
	public Date getDate(int i) throws Exception{					//ȡ��Date���͵��ֶΣ�ͨ���к�
		return _rst.getDate(i);
	}
	public Date getDate(String s) throws Exception{					//ȡ��Date���͵��ֶΣ�ͨ���ֶ���
		return _rst.getDate(s);
	}
	public Time getTime(int i) throws Exception{					//ȡ��Time���͵��ֶΣ�ͨ���к�
		return _rst.getTime(i);
	}
	public Time getTime(String s) throws Exception{					//ȡ��Time���͵��ֶΣ�ͨ���ֶ���
		return _rst.getTime(s);
	}
	public double getDouble(int i) throws Exception{				//ȡ��Double���͵��ֶΣ�ͨ���к�
		return _rst.getDouble(i);
	}
	public double getDouble(String s) throws Exception{			//ȡ��Double���͵��ֶΣ�ͨ���ֶ���
		return _rst.getDouble(s);
	}
	public float getFloat(int i) throws Exception{				//ȡ��Float���͵��ֶΣ�ͨ���к�
		return _rst.getFloat(i);
	}
	public float getFloat(String s) throws Exception{				//ȡ��Float���͵��ֶΣ�ͨ���ֶ���
		return _rst.getFloat(s);
	}
	public int getInt(int i) throws Exception{					//ȡ���������͵��ֶΣ�ͨ���к�
		return _rst.getInt(i);
	}
	public int getInt(String s) throws Exception{				//ȡ���������͵��ֶΣ�ͨ���ֶ���
		return _rst.getInt(s);
	}
	public long getLong(int i) throws Exception{				//ȡ�ó����͵��ֶΣ�ͨ���к�
		return _rst.getLong(i);
	}
	public long getLong(String s) throws Exception{				//ȡ�ó����͵��ֶΣ�ͨ���ֶ���
		return _rst.getLong(s);
	}
	public short getShort(int i) throws Exception{				//ȡ��Short���͵��ֶΣ�ͨ���к�
		return _rst.getShort(i);
	}
	public short getShort(String s) throws Exception{			//ȡ��Short���͵��ֶΣ�ͨ���ֶ���
		return _rst.getShort(s);
	}
	public String getString(int i)  throws Exception{				//ȡ���ַ������͵��ֶΣ�ͨ���к�
		return _rst.getString(i);
	}
	public String getString(String s)  throws Exception {			//ȡ���ַ������͵��ֶΣ�ͨ���ֶ���
		return _rst.getString(s); 
	}
	
	//ָ������һλ
	public boolean next(){
		try {return _rst.next();}
		catch(Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	//���ؽ�������� 2008-06-03��ӣ����������µĶ����š�����Ա���
	public int rows(){
		try{
		return _rst.getFetchSize();//����������������
		}
		catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}


}

