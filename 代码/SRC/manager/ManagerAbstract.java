/*
 *作者：耿兴欢
 *日期：2008-5-31
 *功能描述：实现管理员的取值和赋值方法
 */
package manager;
import user.*;
public abstract class ManagerAbstract implements UserInterface{
	private String _managerid;   //管理员编号
	private String _managername; //管理员名称
	private String _mpassword;    //密码
	private String _actor;       //角色

	public void setUserId(String userid){
		_managerid=userid;
	}
	public String getUserId(){
		return _managerid;
	}
	public void setPassword(String password){
		_mpassword=password;
	}
	public String getPassword(){
		return _mpassword;
	}

	public void setManagername(String managername){
		_managername=managername;
	}
	public String getManagername(){
		return _managername;
	}
	public void setActor(String actor){
		_actor=actor;
	}
	public String getActor(){
		return _actor;
	}
}