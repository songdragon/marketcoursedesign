<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="shop.*"%>
<%@ page import="java.sql.*"%>
<%
//作者：陈乔乔
//日期：2008-6-8
//功能描述：实现在所有商品中搜索结果的分页显示功能。
%>

<%
	request.setCharacterEncoding("gb2312");
    String key=request.getParameter("key");

 // public bs=rs.getString("leiID");
  int intPageSize; //一页显示的记录数
  int intRowCount; //记录总数 
  int intPageCount; //总页数 
  int intPage; //待显示页码 
  String  strPage; 
  int i; 
  String typeid;
  //设置一页显示的记录数 
 intPageSize =10; 
//取得待显示页码 
strPage = request.getParameter("page"); 
//lei = request.getParameter("lei"); //图书类别
//if(lei==null){
//lei="1";
//}

if(strPage==null){//表明在QueryString中没有page这一个参数，此时显示第一页数据 
    intPage = 1; 
  } else{//将字符串转换成整型 
        intPage = java.lang.Integer.parseInt(strPage); 
     }

  
  if(key==null)
	  key=(String)session.getAttribute("key");
  AllOperator alloperator=new AllOperator();
  ResultSet set=alloperator.getPro_by_Proname(key);  
 
if(intPage< 1){
intPage = 1; 
} 
//获取记录总数 
try{
	set.last(); 
	}catch(Exception e){
		out.println(e.toString());
		}
intRowCount = set.getRow();
//记算总页数 
intPageCount = (intRowCount+intPageSize-1) / intPageSize; 
//调整待显示的页码 
if(intPage >intPageCount) intPage = intPageCount; 
if(intPageCount >0){ 
//将记录指针定位到待显示页的第一条记录上 
set.absolute((intPage-1) * intPageSize+1); 
//显示数据 
}
i = 0; 
String bgcolor="#ffffff";
int k=1;
try{while(i< intPageSize && !set.isAfterLast()){
	typeid=set.getString("type_id");
%>

        <tr valign="middle" bgcolor=<%=bgcolor%> height="20">
        <%if(typeid.trim().equals("1"))
        {%>
<td width="264"  ><div  style="height:19px; font-size:12px; padding-top:5px"><a href="bookdetail.jsp?productid=<%=set.getString("products_id") %>" target="_blank" >&nbsp;&nbsp;<%=set.getString("productsname")%></a></div></td>
<td><div align="center" style="height:19px; font-size:12px; padding-top:5px">分类：图书</div></td>
<td><div align="center">￥<%=set.getString("price")%>元</div></td>
<td width="137"><div align="center" style="height:19px; font-size:12px; padding-top:5px"><%=set.getString("discount")%>折</div></td>
<%} %>
        <%if(typeid.trim().equals("2"))
        {%>
<td width="264"  ><div align="left" style="height:19px; font-size:12px; padding-top:5px"><a href="makeupdetail.jsp?productid=<%=set.getString("products_id") %>" target="_blank">&nbsp;&nbsp;<%=set.getString("productsname")%></a></div></td>
<td><div align="center" style="height:19px; font-size:12px; padding-top:5px">分类：化妆品</div></td>
<td><div align="center">￥<%=set.getString("price")%>元</div></td>
<td width="137"><div align="center" style="height:19px; font-size:12px; padding-top:5px"><%=set.getString("discount")%>折</div></td>
<%} %>
        <%if(typeid.trim().equals("3"))
        {%>
<td width="264"  ><div align="left" style="height:19px; font-size:12px; padding-top:5px"><a href="dressdetail.jsp?productid=<%=set.getString("products_id") %>" target="_blank">&nbsp;&nbsp;<%=set.getString("productsname")%></a></div></td>
<td><div align="center" style="height:19px; font-size:12px; padding-top:5px">分类：服饰</div></td>
<td><div align="center">￥<%=set.getString("price")%>元</div></td>
<td width="137"><div align="center" style="height:19px; font-size:12px; padding-top:5px"><%=set.getString("discount")%>折</div></td>
<%} %>
        <%if(typeid.trim().equals("4"))
        {%>
<td width="264"  ><div align="left" style="height:19px; font-size:12px; padding-top:5px"><a href="computerdetail.jsp?productid=<%=set.getString("products_id") %>" target="_blank">&nbsp;&nbsp;<%=set.getString("productsname")%></a></div></td>
<td><div align="center" style="height:19px; font-size:12px; padding-top:5px">分类：电脑</div></td>
<td><div align="center">￥<%=set.getString("price")%>元</div></td>
<td width="137"><div align="center" style="height:19px; font-size:12px; padding-top:5px"><%=set.getString("discount")%>折</div></td>
<%} %>
        <%if(typeid.trim().equals("5"))
        {%>
<td width="264"  ><div align="left" style="height:19px; font-size:12px; padding-top:5px"><a href="mobilephonedetail.jsp?productid=<%=set.getString("products_id") %>" target="_blank">&nbsp;&nbsp;<%=set.getString("productsname")%></a></div></td>
<td><div align="center" style="height:19px; font-size:12px; padding-top:5px">分类：手机</div></td>
<td><div align="center">￥<%=set.getString("price")%>元</div></td>
<td width="137"><div align="center" style="height:19px; font-size:12px; padding-top:5px"><%=set.getString("discount")%>折</div></td>
<%} %>

  <td colspan="2" nowrap><div align="center" style="height:19px; font-size:12px; padding-top:5px"><a href="shopcart/addProduction.jsp?id=<%=set.getString("products_id")%>" >购买</a></div>    </td>
  </tr>
        <tr>
          <td height=1 colspan="5" background="../image/dian.gif"><img src="../images/blank.gif" width=378 height=1></td>
          <td width="64" background="../image/dian.gif"></td>
        </tr>
         <%
		 k++;
		 if(k%2==0)
		{bgcolor="#FBEEE1";}
		else
		{bgcolor="#ffffff";}
		 set.next(); 
   i++; 
}	
}catch(Exception e){}
session.setAttribute("key",key);
set.close();
			%>	
</table>
<p align="center">
共<%=intRowCount%>个记录,分<%=intPageCount%>页显示,您所在本页是:第<%=intPage%>页
<%for(int j=1;j<=intPageCount;j++)
{	
	out.print("&nbsp;&nbsp;<a href='searchresult.jsp?page="+j+"'>"+j+"</a>");
}%>
