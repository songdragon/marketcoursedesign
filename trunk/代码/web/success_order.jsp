<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>shopping购物网--订单结算</title>
<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="css/login.css" type=text/css rel=stylesheet>
</head>

<body>
<!--页头-->
<DIV class=login_top><IMG 
class=logo src="images/logo.jpg" width=100px heigth=120px>
<DIV 
class=login_step>结算步骤：　<B>1.填写核对订单信息</B>　&gt;&gt;　　<SPAN 
class=red_bold>2.成功提交订单</SPAN></DIV>
<DIV class=fill_message>
<div id=oDiv>3秒后自动返回</div>
<script language="javascript">
var count=3;
function timeReload(){
	count--;
	oDiv.innerText="3秒后自动返回，还剩 "+count+" 秒";
	
	if(count>0)
		setTimeout(timeReload,1000);
	else location.replace("index.jsp");
}

setTimeout(timeReload,1000);
</script>

提交成功！单击<a href=index.jsp>此处</a>返回首页
</DIV>
</FORM>

</body>
</html>
