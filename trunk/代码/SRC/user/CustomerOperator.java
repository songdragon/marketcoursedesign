/*
 * 作者：陈乔乔
 * 日期：2008-5-31
 * 功能描述：本类继承了UserAbstract抽象类，是实现客户端用户对个人用户信息进行各操作的类。
 */

package user;
import dbconnection.DBConnection;
import tools.MD5;

public class CustomerOperator extends CustomerAbstract{
	
	/*
	 * 获取用户信息
	 */
	private static CustomerAbstract getCustomerInfor(String customerId){
		CustomerAbstract customer=null;
		String sqlStr="select * from customer where customername='"+customerId+"'";
		DBConnection dbconnection=null;
		try{
			dbconnection=new DBConnection();
			dbconnection.excuteQuery(sqlStr);
			if(dbconnection.next()){
				customer.setUserId(dbconnection.getString(1));
				customer.setCustomType(dbconnection.getString(2));
				customer.setPassword(dbconnection.getString(3));
				customer.setPoint(dbconnection.getInt(4));
				customer.setExpenditure(dbconnection.getFloat(5));
				customer.setDiscount(dbconnection.getFloat(6));
				customer.setEmail(dbconnection.getString(7));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(dbconnection!=null)
			dbconnection.Close();
		}
		return customer;
	}
	
	/*
	 * 登录
	 */
	public static int login(String customerId,String password){
		try{
			CustomerAbstract customer=getCustomerInfor(customerId);
			if(customer.getPassword().equals(MD5.toMD5(password))){          //添加了MD5加密 2008-6-4
				return 1;                    //登录成功
			}
			return 0;                        //密码错误 
		}catch(Exception e){
			e.printStackTrace();
			return 2;                        //用户不存在
		}
		
	}
	
	/*
	 * 用户注册信息的入库
	 */
	public static boolean saveUser(CustomerAbstract user){
		String userId=user.getUserId();
		String userPassword=MD5.toMD5(user.getPassword());     //添加用户密码MD5加密 2008-6-4
		String customerType=user.getCustomType();
		String email=user.getEmail();
		float expenditure=user.getExpenditure();
		float discount=user.getDiscount();
		int point=user.getPoint();
		String sqlStr="insert into customer values('"+userId+"','"+customerType+"','"
		               +userPassword+"',"+point+","+expenditure+","+discount+",'"+email+"'";
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
	 * 密码修改
	 */
	public static boolean updateCustomer(String customerId,String oldPassword,String newPassword){
		try{
			CustomerAbstract customer=getCustomerInfor(customerId);
			if(customer!=null){
				if(customer.getPassword().equals(MD5.toMD5(oldPassword))){
                                        String MD5NewPassword=MD5.toMD5(newPassword);       //添加了MD5加密 2008-6-4
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
			}
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
