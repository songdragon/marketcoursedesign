/*
 *作者：耿兴欢
 *日期：2008-5-31
 *功能描述：实现管理员的登陆、修改密码操作
 */
package manager;
import tools.*;                     /*包名待定*/
import dbconnection.*;                   /*包名待定*/
public class ManagerOperator extends ManagerAbstract{
	
	
	/*验证用户名,若用户名正确将用户信息提取到此类中*/
	public boolean getManagerInfo(String managerid){
		String sqlselect="select * from manager where manager_id='"+managerid+"'";
		String _ConnectionUrl="jdbc:sqlserver://localhost:1433;"+
		"databaseName=shopping;user=sa;password=''";
		DBConnection conn=new DBConnection();                 
		conn.excuteQuery(sqlselect);
		try{
			conn.next();
			setUserId(conn.getString(1));
			setManagername(conn.getString(2));
			setPassword(conn.getString(3));
			setActor(conn.getString(4));
			return true;
		}catch(Exception e){
			return false;                                      /*返回false为用户名不存在*/
		}finally{
			conn.Close();
		}
	}
	/*验证密码*/
	public boolean checkPassword(String password){
		MD5 md5=new MD5();
		String pwd=password;//md5.getMD5ofStr(password);                   
		if(getPassword().equals(password)){
			return true;
		}
		else{
			return false;
		}
	}



	/*修改密码*/
	public boolean updateManagerpassword(String managerid,String oldpassword,String newpassword){
		MD5 md5=new MD5();
		String opwd=md5.getMD5ofStr(oldpassword); 
		String npwd=md5.getMD5ofStr(newpassword); 

		String sqlupdate="update manager set mpassword='"+npwd+"' "+
			"where manager_id='"+managerid+"' and mpassword='"+opwd+"'";

		DBConnection conn=new DBConnection();                  /*连接字符串*/
		if(conn.excuteUpdate(sqlupdate)==0){
			conn.Close();
			return false;
		}
		else{
			conn.Close();
			return true;
		}
	}

	/*删除管理员*/
	public boolean deleteManager(String managerid){
		String sqldelete="delete from manager where manager_id='"+managerid+"'";
		
		DBConnection conn=new DBConnection();
		if(conn.excuteUpdate(sqldelete)==0){
			conn.Close();
			return false;
		}
		else{
			conn.Close();
			return true;
		}
	}
        /*添加管理员*/
	public boolean insertManager(String managerid,String managername,String password,String actor){
		MD5 md5=new MD5();
		String pwd=md5.getMD5ofStr(password);  

		String sqlinsert="insert into manager values('"+managerid+"','"+managername+"','"+pwd+"','"+actor+"')";
		DBConnection conn=new DBConnection();
		if(conn.excuteUpdate(sqlinsert)==0){
			conn.Close();
			return false;
		}
		else{
			conn.Close();
			return true;
		}
	}


}