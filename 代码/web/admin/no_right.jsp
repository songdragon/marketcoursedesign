<%@ page language="java" contentType="text/html; charset=gb2312"%>
<div id=oDiv>2����Զ�����</div>
<script language="javascript">
var i=2;
function timeReload(){
  
     oDiv.innerText="2����Զ����أ���ʣ"+i+"��";
     i--;
}
setInterval("timeReload()",1000);
</script>
<% 
out.println("<h3 align='center'>����Ȩ�޲�������</h3>");
response.setHeader("Refresh", "2; URL=resend.jsp");
%>