<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%
request.setCharacterEncoding("gb2312");
response.setCharacterEncoding("gb2312");
%> 

<%@ page import="order.*"%>
<%@ page import="java.sql.*"%>
<%
//作者：陈乔乔
//日期：2008-6-14
//功能描述：实现在所有商品中搜索结果的分页显示功能。
%>
<table width="100%">
<tr>
<td><a href="do_searchOrder.jsp?key=no">未发订单</a></td>
<td colspan="2"><a href="do_searchOrder.jsp?key=yes">已发订单</a></td>
<td colspan="5"></td>
</tr>
<tr>
<td colspan="8">
<hr width="95%" color="#CCCCCC" size="px">
</td>
</tr>
<tr width="100%">
<td width="15%">订单号</td>
<td width="10%">收件人</td>
<td width="32%">地址</td>
<td width="8%">邮编</td>
<td width="12%">联系电话</td>
<td width="8%">总金额</td>
<td width="15%" colspan="2">订单时间</td>

<%
	//request.setCharacterEncoding("gb2312");
    String key=request.getParameter("key");

 // public bs=rs.getString("leiID");
  int intPageSize; //一页显示的记录数
  int intRowCount=0; //记录总数 
  int intPageCount; //总页数 
  int intPage; //待显示页码 
  String  strPage; 
  int i; 
  //设置一页显示的记录数 
 intPageSize =5; 
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
	  if(key==null){
		  key="no";
		  
	  }       //默认的是未发
  OrderResultSet alloperator=new OrderResultSet();
  ResultSet set=alloperator.Order_by_customername(key);  
 
if(intPage< 1){
intPage = 1; 
} 
//获取记录总数 
try{
	set.last(); 
	intRowCount = set.getRow();
	}catch(Exception e){
		//out.println(e.toString());
		}
	
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
%>
<tr valign="middle" bgcolor=<%=bgcolor%> height="20" >
       <td ><div  style="height:19px; font-size:12px; padding-top:5px"><a href="orderdetail.jsp?order_id=<%=set.getString("order_id") %>" target="_blank" ><%=set.getString("order_id")%></a></div></td>
       <td><div  style="height:19px; font-size:12px; padding-top:5px"><%=set.getString("receiver") %></div></td>
       <td><div  style="height:19px; font-size:12px; padding-top:5px"><%=set.getString("address") %></div></td>
       <td><div  style="height:19px; font-size:12px; padding-top:5px"><%=set.getString("zipcode") %></div></td>
       <td><div  style="height:19px; font-size:12px; padding-top:5px"><%=set.getString("tel") %></div></td>
<td><div align="center" style="height:19px; font-size:12px; padding-top:5px"><%=set.getString("total")%></div></td>
<td ><div align="center" style="height:19px; font-size:12px; padding-top:5px"><%=set.getString("or_date")%></div></td>


<%  if(key.equals("no")){                       //未发订单显示订单状态确认按钮
		out.println("<td><div align='center' style='height:19px; font-size:12px; padding-top:5px'>");
		out.println("<a href='changestate.jsp?order_id="+set.getString("order_id")+"&intPage="+intPage+"' >确认</a></div>    </td>");
	}
else out.println("<td></td>");
%>
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
//set.close();
			%>	
			<tr align="center">
			<td colspan="8" align="center">
			共<%=intRowCount%>个记录,分<%=intPageCount%>页显示,您所在本页是:第<%=intPage%>页
<%for(int j=1;j<=intPageCount;j++)
{	
	out.print("&nbsp;&nbsp;<a href='do_searchOrder.jsp?page="+j+"&key="+key+"'>"+j+"</a>");
}%>
</td>
			</tr>
</table>
