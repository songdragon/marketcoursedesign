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
	else if(document.form1.brand.value==""){
		alert("Ʒ�Ʋ���Ϊ�գ�");
		document.form1.brand.focus();
	}
	else if(document.form1.isbn.value==""){
		alert("���кŲ���Ϊ�գ�");
		document.form1.isbn.focus();
	}
	else if(document.form1.mtype.value==""){
		alert("���Ͳ���Ϊ�գ�");
		document.form1.mtype.focus();
	}
	else if(document.form1.mfunction.value==""){
		alert("������������Ϊ�գ�");
		document.form1.mfunction.focus();
	}
	else if(document.form1.capacity.value==""){
		alert("��������Ϊ�գ�");
		document.form1.capacity.focus();
	}
	else if(document.form1.maker.value==""){
		alert("�����̲���Ϊ�գ�");
		document.form1.maker.focus();
	}
	else if(document.form1.outdate.value==""){
		alert("�������ڲ���Ϊ�գ�");
		document.form1.outdate.focus();
	}
	else if(document.form1.shelflife.value==""){
		alert("�����ڲ���Ϊ�գ�");
		document.form1.shelflife.focus();
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

	out.println("<tr><td align='left'>������Ϣ��<font size=2 color='red'>[����]</font></td><tr>");
	
	//��Ʒ��������
	//ȷ��Ҫ��ӵ����ݿ��е��Ǹ���

		typename="makeup";

		out.println("<tr><td align='right'>Ʒ�ƣ�</td>"+
				"<td><input name='brand' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");

		out.println("<tr><td align='right'>���кţ�</td>"+
				"<td><input name='isbn' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");

		out.println("<tr><td align='right'>���ͣ�</td>"+
				"<td><input name='mtype' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");

		out.println("<tr><td align='right'>����������</td>"+
				"<td><input name='mfunction' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");

		out.println("<tr><td align='right'>������</td>"+
				"<td><input name='capacity' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");

		out.println("<tr><td align='right'>�����̣�</td>"+
				"<td><input name='maker' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");

		out.println("<tr><td align='right'>�������ڣ�</td>"+
				"<td><input name='outdate' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");

		out.println("<tr><td align='right'>�����ڣ�</td>"+
				"<td><input name='shelflife' type='text' id='score' style='FONT-SIZE: 12px; WIDTH: 150px'"+
				" size='10' maxlength='10'></td></tr>");




	out.println("<tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr align=right><td></td><td align=left>"+
			"<input type=button name='' onClick='checkform1()' value='ȷ�����'></td></tr></table>");
	out.println("</form>");	
	out.println();
}
%>



</body>