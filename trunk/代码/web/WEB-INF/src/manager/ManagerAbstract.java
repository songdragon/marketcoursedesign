/*
 *���ߣ����˻�
 *���ڣ�2008-5-31
 *����������ʵ�ֹ���Ա��ȡֵ�͸�ֵ����
 */
package manager;
import user.*;
public abstract class ManagerAbstract implements UserInterface{
	private String _managerid;   //����Ա���
	private String _managername; //����Ա����
	private String _mpassword;    //����
	private String _actor;       //��ɫ

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