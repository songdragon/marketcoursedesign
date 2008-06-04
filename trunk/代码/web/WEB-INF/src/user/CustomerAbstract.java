/*
 * 作者：陈乔乔
 * 日期：2008-5-31
 * 功能描述：本类继承了UserInterface接口类，是实现客户端用户的各信息的获得和赋值的抽象类。
 */

package user;

public abstract class CustomerAbstract implements UserInterface{
	private String _userId;           //用户名
	private String _password;		 //密码
	private String _customType;       //会员类别
	private int _point;               //积分
	private float _expenditure;       //消费额
	private float _discount;          //折扣
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
