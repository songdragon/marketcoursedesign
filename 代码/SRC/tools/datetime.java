/*
 * ���ߣ�����
 * ʱ�䣺2008-06-07
 * ˵�����õ�ϵͳ�ĵ�ǰʱ�������ʽ��2008-5-7   13:41:11��
 */
import java.util.*;
public class  datetime{	
	public   String   getToday()   {   
	    String   ls_date   =   "";   
	    GregorianCalendar   obj_date   =   new   GregorianCalendar();     
	    ls_date   =   ls_date   +   obj_date.get(Calendar.YEAR);   
	    ls_date   =   ls_date   +   "-"+obj_date.get(Calendar.MONTH);   
	    ls_date   =   ls_date   +   "-"+obj_date.get(Calendar.DATE);   
	    ls_date   =   ls_date   +   "   "+obj_date.get(Calendar.HOUR_OF_DAY);   
	    ls_date   =   ls_date   +   ":"+obj_date.get(Calendar.MINUTE);   
	    ls_date   =   ls_date   +   ":"+obj_date.get(Calendar.SECOND);    
	    return   ls_date;   
	}
}