<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="dbconnection.*" %>
<!-- check Ȩ�� -->
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
		alert("��Ʒ���Ʋ���Ϊ�գ�");
		document.form1.name.focus();
	}
	else if((document.form1.count.value=="")||(document.form1.count.value<0)){
		alert("��Ʒ��������Ϊ��,��С�ڣ���");
		document.form1.count.focus();
	}
	else if(document.form1.oprice.value==""){
		alert("��Ʒ�ۼ۲���Ϊ�գ�");
		document.form1.oprice.focus();
	}
	else if(document.form1.discount.value==""){
		alert("��Ʒ�ۿ۲���Ϊ�գ�10��ʾû���ۿ�");
		document.form1.discount.focus();
	}
	else if((document.form1.discount.value<=0)||(document.form1.discount.value>10)){
		alert("��Ʒ�ۿ���д����");
		document.form1.discount.focus();
	}
	else if(document.form1.inprice.value==""){
		alert("��Ʒ���۲���Ϊ�գ�");
		document.form1.inprice.focus();
	}
	else if(document.form1.cpu.value==""){
		alert("CPU���Ͳ���Ϊ�գ�");
		document.form1.cpu.focus();
	}
	else if(document.form1.hard.value==""){
		alert("Ӳ�̴�С����Ϊ�գ�");
		document.form1.hard.focus();
	}
	else if(document.form1.ramtype.value==""){
		alert("�ڴ��ͺŲ���Ϊ�գ�");
		document.form1.ramtype.focus();
	}
	else if(document.form1.ramsize.value==""){
		alert("�ڴ��С����Ϊ�գ�");
		document.form1.ramsize.focus();
	}
	else if(document.form1.screen.value==""){
		alert("��Ļ��С����Ϊ�գ�");
		document.form1.screen.focus();
	}
	else if(document.form1.brand.value==""){
		alert("Ʒ�Ʋ���Ϊ�գ�");
		document.form1.brand.focus();
	}
	else if(document.form1.speed.value==""){
		alert("�����ٶȲ���Ϊ�գ�");
		document.form1.speed.focus();
	}
	else if(document.form1.color.value==""){
		alert("��ɫ����Ϊ�գ�");
		document.form1.color.focus();
	}
	else if(document.form1.type.value=="2"){
		alert("��ѡ�����ͣ�");
		document.form1.speed.focus();
	}
	
	
	else{
		document.form1.submit();
	}
}

</script>


<h2 align=center> ��ѡ��Ҫ��ӵ���Ʒ������</h2>

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
String typename="";//�ȴ���Ʒ���ƣ�֮���ٴ������Ʒ���ݿ��еı���
String pdtid="";
int pnum=0;
typeid=request.getParameter("typeid");

if(typeid!=null){
	session.setAttribute("typeid",typeid);
	
	DBConnection con=new DBConnection();
	//��ȡ�����,�ټ�1��Ϊ����Ʒ���
	String sqlpubinfo="select max(products_id) from products_information"; 
	con.excuteQuery("select typename from products_type where type_id='"+typeid+"'");
	con.next();
	typename=con.getString(1);
	
	out.println("<form method=post action='do_insertpdt.jsp' name='form1' id='form1'>");
	
	//��Ʒ��������
	out.println("<table width=50% border=0 bordercolor=#CCC000 align=center>");
	out.println("<tr><td align='left'>������Ϣ��</td><tr>");
	out.println("<tr><td align='right'>���</td><td>"+typename+"</td><tr>");
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
	
	out.println("<tr><td align='right'>��Ʒ��ţ�</td><td>"+pdtid+"</td><tr>");

	out.println("<tr><td align='right'>��Ʒ���ƣ�</td>"+
			"<td><input name='name' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
			" size='10' maxlength='30'></td><td align='left'><font size=2 color='red'>*</font></td></tr>");

	out.println("<tr><td align='right'>��Ʒ������</td>"+
			"<td><input name='count' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
			" size='10' maxlength='9'></td><td align='left'><font size=2 color='red'>*</font></td></tr>");

	out.println("<tr><td align='right'>��Ʒ�ۼۣ�</td>"+
			"<td><input name='oprice' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
			" size='10' maxlength='9'></td><td align='left'><font size=2 color='red'>*</font></td></tr>");

	out.println("<tr><td align='right'>��ƷͼƬ��</td>"+
			"<td><input name='image' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
			" size='10' maxlength='128'></td></tr>");

	out.println("<tr><td align='right'>��Ʒ�ۿۣ�</td>"+
			"<td><input name='discount' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
			" size='10' maxlength='10' value='10'></td><td align='left'><font size=2 color='red'>*</font></td></tr>");

	out.println("<tr><td align='right'>��������</td>"+
			"<td><input name='discrib' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
			" size='10' maxlength='128'></td></tr>");
	
	out.println("<tr><td align='right'>��Ʒ���ۣ�</td>"+
			"<td><input name='inprice' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
			" size='10' maxlength='9'></td><td align='left'><font size=2 color='red'>*</font></td></tr>");

	out.println("<tr><td align='left'>������Ϣ��</td><tr>");
	
	//��Ʒ��������
	//ȷ��Ҫ��ӵ����ݿ��е��Ǹ���
		typename="computer";

		out.println("<tr><td align='right'>CPU���ͣ�</td>"+
				"<td><input name='cpu' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td><td align='left'><font size=2 color='red'>*</font></td></tr>");

		out.println("<tr><td align='right'>Ӳ�̴�С��</td>"+
				"<td><input name='hard' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td><td align='left'><font size=2 color='red'>*</font></td></tr>");

		out.println("<tr><td align='right'>�ڴ����ͣ�</td>"+
				"<td><input name='ramtype' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td><td align='left'><font size=2 color='red'>*</font></td></tr>");
		
		out.println("<tr><td align='right'>�ڴ��С��</td>"+
				"<td><input name='ramsize' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td><td align='left'><font size=2 color='red'>*</font></td></tr>");

		out.println("<tr><td align='right'>��Ļ���ʹ�С��</td>"+
				"<td><input name='screen' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td><td align='left'><font size=2 color='red'>*</font></td></tr>");

		out.println("<tr><td align='right'>Ʒ�ƣ�</td>"+
				"<td><input name='brand' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td><td align='left'><font size=2 color='red'>*</font></td></tr>");

		out.println("<tr><td align='right'>������</td>"+
				"<td><input name='weight' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");

		out.println("<tr><td align='right'>�����ٶȣ�</td>"+
				"<td><input name='speed' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td><td align='left'><font size=2 color='red'>*</font></td></tr>");

		out.println("<tr><td align='right'>��ɫ��</td>"+
				"<td><input name='color' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td><td align='left'><font size=2 color='red'>*</font></td></tr>");
		
		out.println("<tr><td align='right'>���ͣ�</td>"+
				"<td>"+
				"<select width=15 name='type' style='width:80'>"+
					"<option value=2>��ѡ��..</option>"+
					"<option value=0>�ʼǱ�</option>"+
					"<option value=1>̨ʽ��</option>"+
				"</select>"+
				"</TD><td align='left'><font size=2 color='red'>*</font></td></tr>");
		


	out.println("<tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr align=right><td></td><td align=left>"+
			"<input type=button name='' onClick='checkform1()' value='ȷ�����'></td></tr></table>");
	out.println("</form>");	
	out.println();
}
%>



</body>