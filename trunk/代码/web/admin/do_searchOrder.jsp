<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%
request.setCharacterEncoding("gb2312");
response.setCharacterEncoding("gb2312");
%> 

<%@ page import="order.*"%>
<%@ page import="java.sql.*"%>
<%
//���ߣ�������
//���ڣ�2008-6-14
//����������ʵ����������Ʒ����������ķ�ҳ��ʾ���ܡ�
%>
<table width="100%">
<tr>
<td><a href="do_searchOrder.jsp?key=no">δ������</a></td>
<td colspan="2"><a href="do_searchOrder.jsp?key=yes">�ѷ�����</a></td>
<td colspan="5"></td>
</tr>
<tr>
<td colspan="8">
<hr width="95%" color="#CCCCCC" size="px">
</td>
</tr>
<tr width="100%">
<td width="15%">������</td>
<td width="10%">�ռ���</td>
<td width="32%">��ַ</td>
<td width="8%">�ʱ�</td>
<td width="12%">��ϵ�绰</td>
<td width="8%">�ܽ��</td>
<td width="15%" colspan="2">����ʱ��</td>

<%
	//request.setCharacterEncoding("gb2312");
    String key=request.getParameter("key");

 // public bs=rs.getString("leiID");
  int intPageSize; //һҳ��ʾ�ļ�¼��
  int intRowCount=0; //��¼���� 
  int intPageCount; //��ҳ�� 
  int intPage; //����ʾҳ�� 
  String  strPage; 
  int i; 
  //����һҳ��ʾ�ļ�¼�� 
 intPageSize =5; 
//ȡ�ô���ʾҳ�� 
strPage = request.getParameter("page"); 
//lei = request.getParameter("lei"); //ͼ�����
//if(lei==null){
//lei="1";
//}

if(strPage==null){//������QueryString��û��page��һ����������ʱ��ʾ��һҳ���� 
    intPage = 1; 
  } else{//���ַ���ת�������� 
        intPage = java.lang.Integer.parseInt(strPage); 
     }
	  if(key==null){
		  key="no";
		  
	  }       //Ĭ�ϵ���δ��
  OrderResultSet alloperator=new OrderResultSet();
  ResultSet set=alloperator.Order_by_customername(key);  
 
if(intPage< 1){
intPage = 1; 
} 
//��ȡ��¼���� 
try{
	set.last(); 
	intRowCount = set.getRow();
	}catch(Exception e){
		//out.println(e.toString());
		}
	
//������ҳ�� 
intPageCount = (intRowCount+intPageSize-1) / intPageSize; 
//��������ʾ��ҳ�� 
if(intPage >intPageCount) intPage = intPageCount; 
if(intPageCount >0){ 
//����¼ָ�붨λ������ʾҳ�ĵ�һ����¼�� 
set.absolute((intPage-1) * intPageSize+1); 
//��ʾ���� 
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


<%  if(key.equals("no")){                       //δ��������ʾ����״̬ȷ�ϰ�ť
		out.println("<td><div align='center' style='height:19px; font-size:12px; padding-top:5px'>");
		out.println("<a href='changestate.jsp?order_id="+set.getString("order_id")+"&intPage="+intPage+"' >ȷ��</a></div>    </td>");
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
			��<%=intRowCount%>����¼,��<%=intPageCount%>ҳ��ʾ,�����ڱ�ҳ��:��<%=intPage%>ҳ
<%for(int j=1;j<=intPageCount;j++)
{	
	out.print("&nbsp;&nbsp;<a href='do_searchOrder.jsp?page="+j+"&key="+key+"'>"+j+"</a>");
}%>
</td>
			</tr>
</table>
