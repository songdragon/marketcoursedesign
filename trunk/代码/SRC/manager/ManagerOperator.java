/*
 *作者：耿兴欢
 *日期：2008-5-31
 *功能描述：实现管理员的登陆、修改密码操作
 */
package manager;
import dbconnection.*;                  
public class ManagerOperator extends ManagerAbstract{

	/*验证用户名,若用户名正确将用户信息提取到此类中*/
	public boolean getManagerInfo(String managerid){
		String sqlSelect="select * from manager where manager_id='"+managerid+"'";
		
		DBConnection conn=new DBConnection();                 
		conn.excuteQuery(sqlSelect);
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
		if(getPassword().equals(password)){
			return true;
		}
		else{
			return false;
		}
	}



	/*修改密码*/
	public boolean updateManagerpassword(String managerId,String oldpassword,String newpassword){
		String sqlUpdate="update manager set mpassword="+newpassword+
			"where manager_id='"+managerId+"' and mpassword='"+oldpassword+"'";

		DBConnection conn=new DBConnection();                 
		if(conn.excuteUpdate(sqlUpdate)==0){
			conn.Close();
			return false;
		}
		else{
			conn.Close();
			return true;
		}
	}
}