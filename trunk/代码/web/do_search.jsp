<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="shop.*"%>
<%@ page import="java.sql.*"%>
<%
//���ߣ�������
//���ڣ�2008-6-8
//����������ʵ����������Ʒ����������ķ�ҳ��ʾ���ܡ�
%>

<%
	request.setCharacterEncoding("gb2312");
    String key=request.getParameter("key");

 // public bs=rs.getString("leiID");
  int intPageSize; //һҳ��ʾ�ļ�¼��
  int intRowCount; //��¼���� 
  int intPageCount; //��ҳ�� 
  int intPage; //����ʾҳ�� 
  String  strPage; 
  int i; 
  String typeid;
  //����һҳ��ʾ�ļ�¼�� 
 intPageSize =10; 
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

  
  if(key==null)
	  key=(String)session.getAttribute("key");
  AllOperator alloperator=new AllOperator();
  ResultSet set=alloperator.getPro_by_Proname(key);  
 
if(intPage< 1){
intPage = 1; 
} 
//��ȡ��¼���� 
try{
	set.last(); 
	}catch(Exception e){
		out.println(e.toString());
		}
intRowCount = set.getRow();
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
	typeid=set.getString("type_id");
%>

        <tr valign="middle" bgcolor=<%=bgcolor%> height="20">
        <%if(typeid.trim().equals("1"))
        {%>
<td width="264"  ><div  style="height:19px; font-size:12px; padding-top:5px"><a href="bookdetail.jsp?productid=<%=set.getString("products_id") %>" target="_blank" >&nbsp;&nbsp;<%=set.getString("productsname")%></a></div></td>
<td><div align="center" style="height:19px; font-size:12px; padding-top:5px">���ࣺͼ��</div></td>
<td><div align="center">��<%=set.getString("price")%>Ԫ</div></td>
<td width="137"><div align="center" style="height:19px; font-size:12px; padding-top:5px"><%=set.getString("discount")%>��</div></td>
<%} %>
        <%if(typeid.trim().equals("2"))
        {%>
<td width="264"  ><div align="left" style="height:19px; font-size:12px; padding-top:5px"><a href="makeupdetail.jsp?productid=<%=set.getString("products_id") %>" target="_blank">&nbsp;&nbsp;<%=set.getString("productsname")%></a></div></td>
<td><div align="center" style="height:19px; font-size:12px; padding-top:5px">���ࣺ��ױƷ</div></td>
<td><div align="center">��<%=set.getString("price")%>Ԫ</div></td>
<td width="137"><div align="center" style="height:19px; font-size:12px; padding-top:5px"><%=set.getString("discount")%>��</div></td>
<%} %>
        <%if(typeid.trim().equals("3"))
        {%>
<td width="264"  ><div align="left" style="height:19px; font-size:12px; padding-top:5px"><a href="dressdetail.jsp?productid=<%=set.getString("products_id") %>" target="_blank">&nbsp;&nbsp;<%=set.getString("productsname")%></a></div></td>
<td><div align="center" style="height:19px; font-size:12px; padding-top:5px">���ࣺ����</div></td>
<td><div align="center">��<%=set.getString("price")%>Ԫ</div></td>
<td width="137"><div align="center" style="height:19px; font-size:12px; padding-top:5px"><%=set.getString("discount")%>��</div></td>
<%} %>
        <%if(typeid.trim().equals("4"))
        {%>
<td width="264"  ><div align="left" style="height:19px; font-size:12px; padding-top:5px"><a href="computerdetail.jsp?productid=<%=set.getString("products_id") %>" target="_blank">&nbsp;&nbsp;<%=set.getString("productsname")%></a></div></td>
<td><div align="center" style="height:19px; font-size:12px; padding-top:5px">���ࣺ����</div></td>
<td><div align="center">��<%=set.getString("price")%>Ԫ</div></td>
<td width="137"><div align="center" style="height:19px; font-size:12px; padding-top:5px"><%=set.getString("discount")%>��</div></td>
<%} %>
        <%if(typeid.trim().equals("5"))
        {%>
<td width="264"  ><div align="left" style="height:19px; font-size:12px; padding-top:5px"><a href="mobilephonedetail.jsp?productid=<%=set.getString("products_id") %>" target="_blank">&nbsp;&nbsp;<%=set.getString("productsname")%></a></div></td>
<td><div align="center" style="height:19px; font-size:12px; padding-top:5px">���ࣺ�ֻ�</div></td>
<td><div align="center">��<%=set.getString("price")%>Ԫ</div></td>
<td width="137"><div align="center" style="height:19px; font-size:12px; padding-top:5px"><%=set.getString("discount")%>��</div></td>
<%} %>

  <td colspan="2" nowrap><div align="center" style="height:19px; font-size:12px; padding-top:5px"><a href="shopcart/addProduction.jsp?id=<%=set.getString("products_id")%>" >����</a></div>    </td>
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
��<%=intRowCount%>����¼,��<%=intPageCount%>ҳ��ʾ,�����ڱ�ҳ��:��<%=intPage%>ҳ
<%for(int j=1;j<=intPageCount;j++)
{	
	out.print("&nbsp;&nbsp;<a href='searchresult.jsp?page="+j+"'>"+j+"</a>");
}%>
