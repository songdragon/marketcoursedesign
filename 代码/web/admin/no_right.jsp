<%@ page language="java" contentType="text/html; charset=gb2312"%>
<div id=oDiv>2秒后自动返回</div>
<script language="javascript">
var i=2;
function timeReload(){
  
     oDiv.innerText="2秒后自动返回，还剩"+i+"秒";
     i--;
}
setInterval("timeReload()",1000);
</script>
<% 
out.println("<h3 align='center'>您的权限不够！！</h3>");
response.setHeader("Refresh", "2; URL=resend.jsp");
%>