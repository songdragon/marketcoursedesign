/*
 * ���ߣ�������
 * ���ڣ�2008-5-31
 * ��������������̳���UserInterface�ӿ��࣬��ʵ�ֿͻ����û��ĸ���Ϣ�Ļ�ú͸�ֵ�ĳ����ࡣ
 */

package user;

public abstract class CustomerAbstract implements UserInterface{
	private String _userId;           //�û���
	private String _password;		 //����
	private String _customType;       //��Ա���
	private int _point;               //����
	private float _expenditure;       //���Ѷ�
	private float _discount;          //�ۿ�
	private String _email;            //E_mail
	
	public void setUserId(String userId){       
		_userId=userId;
	}
	public String getUserId(){
		return _userId;
	}
	public void setPassword(String password){
		_password=password;
	}
	public String getPassword(){
		return _password;
	}
	public void setCustomType(String customType){
		_customType=customType;
	}
	public String getCustomType(){
		return _customType;
	}
	public void setPoint(int point){
		_point=point;
	}
	public int getPoint(){
		return _point;
	}
	public void setExpenditure(float expenditure){
		_expenditure=expenditure;
	}
	public float getExpenditure(){
		return _expenditure;
	}
	public void setDiscount(float discount){
		_discount=discount;
	}
	public float getDiscount(){
		return _discount;
	}
	public void setEmail(String email){
		_email=email;
	}
	public String getEmail(){
		return _email;
	}

}
