package tools;
import java.text.*;

public class float2 {
	public static String f2f2(float num){
		 String   str="";   
         DecimalFormat   df=new   DecimalFormat("######0.0##");//���������ֵ�ĸ�ʽΪXX.XX   
         str=df.format(num);   
         return   str;
	}

}
