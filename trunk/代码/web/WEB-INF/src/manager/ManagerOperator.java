/*
 *���ߣ����˻�
 *���ڣ�2008-5-31
 *����������ʵ�ֹ���Ա�ĵ�½���޸��������
 */
package manager;
import tools.*;                     /*��������*/
import dbconnection.*;                   /*��������*/
public class ManagerOperator extends ManagerAbstract{
	
	
	/*��֤�û���,���û�����ȷ���û���Ϣ��ȡ��������*/
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
			return false;                                      /*����falseΪ�û���������*/
		}finally{
			conn.Close();
		}
	}
	/*��֤����*/
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



	/*�޸�����*/
	public boolean updateManagerpassword(String managerid,String oldpassword,String newpassword){
		MD5 md5=new MD5();
		String opwd=md5.getMD5ofStr(oldpassword); 
		String npwd=md5.getMD5ofStr(newpassword); 

		String sqlupdate="update manager set mpassword='"+npwd+"' "+
			"where manager_id='"+managerid+"' and mpassword='"+opwd+"'";

		DBConnection conn=new DBConnection();                  /*�����ַ���*/
		if(conn.excuteUpdate(sqlupdate)==0){
			conn.Close();
			return false;
		}
		else{
			conn.Close();
			return true;
		}
	}

	/*ɾ������Ա*/
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
        /*��ӹ���Ա*/
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