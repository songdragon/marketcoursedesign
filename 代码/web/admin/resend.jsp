<%@ page language="java" contentType="text/html; charset=gb2312"%>
<!-- 和logout.jsp页面作用不同！！！！！！！！！！ -->
<body onload="resend()">
<script language="javascript">

function resend(){
	<%session.invalidate();%> 
	window.parent.location.href="../admin/index.jsp";
}
</script>
</body>