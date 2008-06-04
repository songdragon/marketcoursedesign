/*
 *作者：耿兴欢
 *日期：2008-5-31
 *功能描述：实现管理员的取值和赋值方法
 */
package manager;
import user.*;
public abstract class ManagerAbstract implements UserInterface{
	private String managerId;   //管理员编号
	private String managerName; //管理员名称
	private String mpassword;    //密码
	private String actor;       //角色

	public void setUserId(String userId){
		managerId=userId;
	}
	public String getUserId(){
		return managerId;
	}
	public void setPassword(String password){
		mpassword=password;
	}
	public String getPassword(){
		return mpassword;
	}

	public void setManagername(String managername){
		managerName=managername;
	}
	public String getManagername(){
		return managerName;
	}
	public void setActor(String actor){
		this.actor=actor;
	}
	public String getActor(){
		return actor;
	}
}