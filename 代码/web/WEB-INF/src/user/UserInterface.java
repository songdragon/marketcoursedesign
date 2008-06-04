/*
 * 作者：陈乔乔
 * 日期：2008-5-31
 * 功能描述：实现用户和管理员的公共接口类。
 */

package user;

public interface UserInterface {
	public abstract void setUserId(String userId);  
	public abstract String getUserId();
	public abstract void setPassword(String password);
	public abstract String getPassword();
}
