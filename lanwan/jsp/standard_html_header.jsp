<%@ include file="db_open.jsp" %>
<%	
	if (session.getAttribute("s_oidUtente") == null ) {
		conn.close();
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
   <title>Progetto di Basi di dati 2</TITLE>
   <link rel=stylesheet type="text/css" href="stile.css">
   <meta NAME="Author" CONTENT="Piero Dalle Pezze">
</head>

<body bgcolor="#000066" text="white" link="lightblue" vlink="red" class="elegant">

<table width="90%" border="0">
	<tr>
	        <td width="20%" class="elegant"><a href="logout.jsp">Logout</a></td>
		<td width="50%" class="title"><%= nomeapp %></td>
		<td width="20%" class="hello" rowspan="2" valign="top">Benvenuto <%= session.getAttribute("s_nome") %> 
			 (<%= session.getAttribute("s_ruolo") %>)</td>
	</tr>
</table>
<br/>