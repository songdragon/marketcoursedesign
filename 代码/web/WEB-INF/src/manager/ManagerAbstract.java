/*
 *���ߣ����˻�
 *���ڣ�2008-5-31
 *����������ʵ�ֹ���Ա��ȡֵ�͸�ֵ����
 */
package manager;
import user.*;
public abstract class ManagerAbstract implements UserInterface{
	private String managerId;   //����Ա���
	private String managerName; //����Ա����
	private String mpassword;    //����
	private String actor;       //��ɫ

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