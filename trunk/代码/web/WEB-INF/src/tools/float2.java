package tools;
import java.text.*;

public class float2 {
	public static String f2f2(float num){
		 String   str="";   
         DecimalFormat   df=new   DecimalFormat("######0.0##");//设置输出数值的格式为XX.XX   
         str=df.format(num);   
         return   str;
	}

}
