<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<div id="father" style="color:blue" onclick="document.all.child1.style.display=(document.all.child1.style.display =='none')?'':'none'" >
+ 商品信息管理</div>
<div id="child1" style="display:none">
<a href="#" target="mainFrame">&nbsp; 商品添加</a> <br>
<a href="#" target="mainFrame">&nbsp; 商品信息修改</a><br />
<a href="#" target="mainFrame">&nbsp; 库存管理</a> 
</div>
<div id="father2" style="color:blue">
<a hre="#" target="mainFrame">&nbsp; 商品展示管理</a></div>
<div id="father3" style="color:blue" >
<a href="#" target="mainFrame"> &nbsp;&nbsp;公告管理</a></div>
<div id="father3" style="color:blue" >
<a href="#" target="mainFrame"> &nbsp;&nbsp;订单管理</a></div>
<div id="father4" style="color:blue" >
<a href="#" target="mainFrame"> &nbsp;&nbsp;销售信息统计</a></div>
<div id="father4" style="color:blue" >
<a href="logout.jsp" target="_parent"> &nbsp;&nbsp;注销</a></div>

