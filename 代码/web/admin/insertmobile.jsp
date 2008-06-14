<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="dbconnection.*" %>
<!-- check 权限 -->
<%
String admin=null;
admin=request.getParameter("admin");
if(admin!=null)
	session.setAttribute("admin",admin);
if(session.getAttribute("admin")==null)
	response.sendRedirect("no_right.jsp");
%>


<script type="text/javascript">
function checkform1(){

	
	if(document.form1.name.value==""){
		alert("商品名称不能为空！");
		document.form1.name.focus();
	}
	else if((document.form1.count.value=="")||(document.form1.count.value<0)){
		alert("商品数量不能为空,或小于０！");
		document.form1.count.focus();
	}
	else if(document.form1.oprice.value==""){
		alert("商品售价不能为空！");
		document.form1.oprice.focus();
	}
	else if(document.form1.discount.value==""){
		alert("商品折扣不能为空！10表示没有折扣");
		document.form1.discount.focus();
	}
	else if((document.form1.discount.value<=0)||(document.form1.discount.value>10)){
		alert("商品折扣填写错误");
		document.form1.discount.focus();
	}
	else if(document.form1.inprice.value==""){
		alert("商品进价不能为空！");
		document.form1.inprice.focus();
	}
	else if(document.form1.brand.value==""){
		alert("品牌不能为空！");
		document.form1.brand.focus();
	}
	else if(document.form1.screen.value==""){
		alert("屏幕大小不能为空！");
		document.form1.screen.focus();
	}
	else if(document.form1.net.value==""){
		alert("网络类型不能为空！");
		document.form1.net.focus();
	}
	else if(document.form1.appear.value==""){
		alert("外型不能为空！");
		document.form1.appear.focus();
	}
	else if(document.form1.scolor.value==""){
		alert("屏幕颜色不能为空！");
		document.form1.scolor.focus();
	}
	else if(document.form1.dsport.value==""){
		alert("数据接口不能为空！");
		document.form1.dsport.focus();
	}
	else if(document.form1.camera.value==""){
		alert("摄像头像素不能为空！");
		document.form1.camera.focus();
	}
	else if(document.form1.ontime.value==""){
		alert("上市时间不能为空！");
		document.form1.ontime.focus();
	}
	else if(document.form1.mptype.value==""){
		alert("品牌内类型不能为空！");
		document.form1.mptype.focus();
	}
	else if(document.form1.screentype.value==""){
		alert("屏幕类型不能为空！");
		document.form1.screentype.focus();
	}
	else if(document.form1.storage.value==""){
		alert("存储大小不能为空！");
		document.form1.storage.focus();
	}
	else if(document.form1.color.value==""){
		alert("颜色不能为空！");
		document.form1.color.focus();
	}
	
	
	else{
		document.form1.submit();
	}
}

</script>


<h2 align=center> 请选择要添加的商品的类型</h2>

<%

String sqlt="select * from products_type";
DBConnection cont=new DBConnection();

cont.excuteQuery(sqlt);
out.println("<table width=60% border=0 bordercolor=#CCC000 align=center>");
cont.next();
out.println("<td><a href='insertbook.jsp?typeid="+cont.getString(1)+
			"'>"+cont.getString(2)+"</a></td>");
cont.next();
out.println("<td><a href='insertmakeup.jsp?typeid="+cont.getString(1)+
			"'>"+cont.getString(2)+"</a></td>");
cont.next();
out.println("<td><a href='insertdress.jsp?typeid="+cont.getString(1)+
			"'>"+cont.getString(2)+"</a></td>");
cont.next();
out.println("<td><a href='insertcomputer.jsp?typeid="+cont.getString(1)+
			"'>"+cont.getString(2)+"</a></td>");
cont.next();
out.println("<td><a href='insertmobile.jsp?typeid="+cont.getString(1)+
			"'>"+cont.getString(2)+"</a></td>");

out.println("</table><hr width='95%' color='#CCCCCC' size='px'>");

cont.Close();




String typeid=null;
String typename="";//先存商品名称，之后再存各类商品数据库中的表名
String pdtid="";
int pnum=0;
typeid=request.getParameter("typeid");

if(typeid!=null){
	session.setAttribute("typeid",typeid);
	
	DBConnection con=new DBConnection();
	//获取最大编号,再加1作为新商品编号
	String sqlpubinfo="select max(products_id) from products_information"; 
	con.excuteQuery("select typename from products_type where type_id='"+typeid+"'");
	con.next();
	typename=con.getString(1);
	
	out.println("<form method=post action='do_insertpdt.jsp' name='form1' id='form1'>");
	
	//商品公共属性
	out.println("<table width=50% border=0 bordercolor=#CCC000 align=center>");
	out.println("<tr><td align='left'>基本信息：</td><tr>");
	out.println("<tr><td align='right'>类别：</td><td>"+typename+"</td><tr>");
	con.excuteQuery(sqlpubinfo);
	con.next();
	pdtid=con.getString(1);
	con.Close();
	
	if(pdtid!=null){
		pnum=Integer.parseInt(pdtid);
		pnum++;
		pdtid=String.format("%1$,010d",pnum);
		session.setAttribute("pdtid",pdtid);
	}
	
	out.println("<tr><td align='right'>商品编号：</td><td>"+pdtid+"</td><tr>");

	out.println("<tr><td align='right'>商品名称：</td>"+
			"<td><input name='name' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
			" size='10' maxlength='30'></td><td align='left'><font size=2 color='red'>*</font></td></tr>");

	out.println("<tr><td align='right'>商品数量：</td>"+
			"<td><input name='count' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
			" size='10' maxlength='9'></td><td align='left'><font size=2 color='red'>*</font></td></tr>");

	out.println("<tr><td align='right'>商品售价：</td>"+
			"<td><input name='oprice' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
			" size='10' maxlength='9'></td><td align='left'><font size=2 color='red'>*</font></td></tr>");

	out.println("<tr><td align='right'>商品图片：</td>"+
			"<td><input name='image' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
			" size='10' maxlength='128'></td></tr>");

	out.println("<tr><td align='right'>商品折扣：</td>"+
			"<td><input name='discount' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
			" size='10' maxlength='10' value='10'></td><td align='left'><font size=2 color='red'>*</font></td></tr>");

	out.println("<tr><td align='right'>简单描述：</td>"+
			"<td><input name='discrib' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
			" size='10' maxlength='128'></td></tr>");
	
	out.println("<tr><td align='right'>商品进价：</td>"+
			"<td><input name='inprice' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
			" size='10' maxlength='9'></td><td align='left'><font size=2 color='red'>*</font></td></tr>");

	out.println("<tr><td align='left'>其他信息：<font size=2 color='red'>[必填]</font></td><tr>");
	
	//商品单独属性
	//确定要添加到数据库中的那个表
		typename="mobilephone";

		out.println("<tr><td align='right'>品牌：</td>"+
				"<td><input name='brand' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");

		out.println("<tr><td align='right'>屏幕大小：</td>"+
				"<td><input name='screen' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");

		out.println("<tr><td align='right'>网络类型：</td>"+
				"<td><input name='net' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");

		out.println("<tr><td align='right'>外形：</td>"+
				"<td><input name='appear' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");

		out.println("<tr><td align='right'>屏幕色频：</td>"+
				"<td><input name='scolor' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");

		out.println("<tr><td align='right'>数据接口：</td>"+
				"<td><input name='dsport' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");

		out.println("<tr><td align='right'>摄像头像素：</td>"+
				"<td><input name='camera' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");

		out.println("<tr><td align='right'>上市时间：</td>"+
				"<td><input name='ontime' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");

		out.println("<tr><td align='right'>品牌内类型：</td>"+
				"<td><input name='mptype' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");

		out.println("<tr><td align='right'>屏幕类型：</td>"+
				"<td><input name='screentype' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");

		out.println("<tr><td align='right'>存储大小：</td>"+
				"<td><input name='storage' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");

		out.println("<tr><td align='right'>颜色：</td>"+
				"<td><input name='color' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");
		
	}


	out.println("<tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr align=right><td></td><td align=left>"+
			"<input type=button name='' onClick='checkform1()' value='确认添加'></td></tr></table>");
	out.println("</form>");	
	out.println();
%>



</body>