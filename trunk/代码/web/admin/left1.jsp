<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<div id="father" style="color:blue" onclick="document.all.child1.style.display=(document.all.child1.style.display =='none')?'':'none'" >
+ 管理员管理</div>
<div id="child1" style="display:none">
<%
out.println("<a href='allmanager.jsp?admin='"+session.getAttribute("admin")+" target='mainFrame'>&nbsp; 管理员列表</a><br>");
out.println("<a href='insertmanager.jsp?admin='"+session.getAttribute("admin")+" target='mainFrame'>&nbsp; 管理员添加</a> <br>");
out.println("<a href='changepwd.jsp?admin='"+session.getAttribute("admin")+" target='mainFrame'>&nbsp; 管理员密码修改</a>");
%>
</div>
<div id="father2" style="color:blue" onclick="document.all.child2.style.display=(document.all.child2.style.display =='none')?'':'none'" >
+ 系统维护</div>
<div id="child2" style="display:none"> 
<a href="#" target="mainFrame">&nbsp; 登陆日志</a> <br> 
<a href="#" target="mainFrame">&nbsp; 数据库备份</a>
</div>
<div id="father3" style="color:blue" >
<a href="#" target="mainFrame"> &nbsp;&nbsp;销售信息统计</a></div>
<div id="father4" style="color:blue" >
<a href="logout.jsp" target="_parent" > &nbsp;&nbsp;注销</a></div>




