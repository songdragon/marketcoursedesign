/*
 * ���ߣ�������
 * ���ڣ�2008-6-7
 * ����������ʵ���û��Ĺ����ӿ��ࡣ
 */

package user;

public interface CustomerInterface {
	public abstract void setUserId(String userId);
	public abstract String getUserId();
	public abstract void setPassword(String password);
	public abstract String getPassword();
	public abstract void setCustomType(String customType);
	public abstract String getCustomType();
	public abstract void setPoint(int point);
	public abstract int getPoint();
	public abstract void setExpenditure(float expenditure);
	public abstract float getExpenditure();
	public abstract void setDiscount(float discount);
	public abstract float getDiscount();
	public abstract void setEmail(String email);
	public abstract String getEmail();

}
