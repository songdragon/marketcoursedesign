<%@ page language="java" contentType="text/html; charset=gb2312"%>
<!-- ��logout.jspҳ�����ò�ͬ�������������������� -->
<body onload="resend()">
<script language="javascript">

function resend(){
	<%session.invalidate();%> 
	window.parent.location.href="../admin/index.jsp";
}
</script>
</body>