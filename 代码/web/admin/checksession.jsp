<%
	if(session.getAttribute("admin")==null)
		response.sendRedirect("index.jsp");
	else{
		
		if(session.getAttribute("actor").equals("0"))
			response.sendRedirect("main1.jsp");
		else response.sendRedirect("main2.jsp");
	}
%>