/*
 *���ߣ����˻�
 *���ڣ�2008-5-31
 *����������ʵ�ֹ���Ա�ĵ�½���޸��������
 */
package manager;
import dbconnection.*;                  
public class ManagerOperator extends ManagerAbstract{

	/*��֤�û���,���û�����ȷ���û���Ϣ��ȡ��������*/
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
			return false;                                      /*����falseΪ�û���������*/
		}finally{
			conn.Close();
		}
	}
	/*��֤����*/
	public boolean checkPassword(String password){                   
		if(getPassword().equals(password)){
			return true;
		}
		else{
			return false;
		}
	}



	/*�޸�����*/
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