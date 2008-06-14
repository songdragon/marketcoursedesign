/*
 * ���ߣ�������
 * ���ڣ�2008-5-31
 * ��������������̳���UserAbstract�����࣬��ʵ�ֿͻ����û��Ը����û���Ϣ���и��������ࡣ
 */

package user;
import java.util.ArrayList;
import java.util.Iterator;
import tools.*;

import dbconnection.DBConnection;

public class CustomerOperator extends CustomerAbstract{
	
	/*
	 * ��ȡ�û���Ϣ
	 */
	public static Iterator getCustomerInfor(String customerId){ //�����صĳ������Ϊ����ΪIterator�� 2008-6-7
		ArrayList arraylist=new ArrayList();
	
		String sqlStr="select * from customer where customername='"+customerId+"'";
		DBConnection dbconnection=null;
		try{
			dbconnection=new DBConnection();
			dbconnection.excuteQuery(sqlStr);
			while(dbconnection.next()){
				CustomerInterface customer=Factory.getInstance().initCustomerOperator();
				customer.setUserId(dbconnection.getString(1));
				customer.setCustomType(dbconnection.getString(2));
				customer.setPassword(dbconnection.getString(3));
				customer.setPoint(dbconnection.getInt(4));
				customer.setExpenditure(dbconnection.getFloat(5));
				customer.setDiscount(dbconnection.getFloat(6));
				customer.setEmail(dbconnection.getString(7));
				arraylist.add(customer);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(dbconnection!=null)
			dbconnection.Close();
		}
		return arraylist.iterator();
	}
	
	/*
	 * ��¼
	 */
	public static int login(String customerId,String password){
		try{
			CustomerOperator customer=Factory.getInstance().initCustomerOperator();
			Iterator it=customer.getCustomerInfor(customerId);              //�޸ģ�ͨ��Iterator��ȡ�û���Ϣ  2008-6-7
			CustomerInterface customer1=null;
			while(it.hasNext()){
			customer1=(CustomerInterface)it.next();
			}
			if(customer1.getPassword().equals(MD5.toMD5(password))){          //�����MD5���� 2008-6-4
				return 1;                    //��¼�ɹ�
			}
			return 0;                        //������� 
		}catch(Exception e){
			e.printStackTrace();
			return 2;                        //�û�������
		}
		
	}
	
	/*
	 * �û�ע����Ϣ�����
	 */
	public static boolean saveUser(CustomerAbstract user){
		String userId=user.getUserId();
		String userPassword=MD5.toMD5(user.getPassword());     //����û�����MD5���� 2008-6-4
		String customerType="��ͨ";
		String email=user.getEmail();
		float expenditure=user.getExpenditure();
		float discount=user.getDiscount();
		int point=user.getPoint();
		String sqlStr="insert into customer values('"+userId+"','"+customerType+"','"
		               +userPassword+"',"+point+","+expenditure+","+discount+",'"+email+"')";//������ȱ�������ţ�song,2008-06-05
		DBConnection dbconnection=null;
		try{
			dbconnection=new DBConnection();
			dbconnection.excuteUpdate(sqlStr);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}finally{
			if(dbconnection!=null)
				dbconnection.Close();
		}
		
	}
	
	/*
	 * �����޸�
	 */
	public static boolean updateCustomer(String customerId,String oldPassword,String newPassword){
		try{
			CustomerOperator customer=Factory.getInstance().initCustomerOperator();
			Iterator it=customer.getCustomerInfor(customerId);        //�޸ģ�ͨ��Iterator��ȡ�û���Ϣ 2008-6-7
			CustomerInterface customer1=null;
			while(it.hasNext()){
			customer1=(CustomerInterface)it.next();
			}
		
				if(customer1.getPassword().equals(MD5.toMD5(oldPassword))){
                    String MD5NewPassword=MD5.toMD5(newPassword);       //�����MD5���� 2008-6-4
					String sqlStr="update customer set cpassword='"+MD5NewPassword+"'"
					+"where customername='"+customerId+"'";
					DBConnection dbconnection=null;
					try{
						dbconnection=new DBConnection();
						dbconnection.excuteUpdate(sqlStr);
					}catch(Exception e){
						e.printStackTrace();
						return false;
					}finally{
						if(dbconnection!=null)
							dbconnection.Close();
					}
					customer.setPassword(newPassword);
				}
			
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
