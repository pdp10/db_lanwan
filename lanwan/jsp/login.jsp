<%@ include file="costanti.jspf" %>
<% String fail = request.getParameter("fail"); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

<head>
   <title> Progetto di Basi di dati 2 </TITLE>
   <link rel=stylesheet type="text/css" href="stile.css">
   <meta NAME="Author" CONTENT="Piero Dalle Pezze">
</head>


<body bgcolor="#000066" text="white" link="lightblue" vlink="red" class="elegant">

<table width="80%" border="0">
        <tr> <td class="elegant"><%= uni %>   </td> </tr> 
	<tr> <td class="elegant"><%= dip %>   </td> </tr>
	<tr> <td class="elegant"><%= course %></td> </tr>

</table>

<br/>
<br/>
<br/>
<br/>
<h1 class="title"><%= nomeapp %></h2>



<form action="utenti_check.jsp" method="post">
<table cellspacing="2" cellpadding="2" border="0" align="center">
<tr>
    <th class="elegant">Username</td>
    <td class="elegant"><input type="text" name="username"></td>
</tr>
<tr>
    <th class="elegant">Password</td>
    <td class="elegant"><input type="password" name="password"></td>
</tr>
<tr>
    <th align="center" class="elegant"><input type="submit" value="Entra"></td>
    <td class="elegant">&nbsp;</td>
</tr>

<%	if ( !("".equals(fail)) && (fail != null)) { %>
<tr>
    <th class="alert" colspan="2">Login non corretta</th>
</tr>
<%	} %>  
</table>

</form>

<br/>
<br/>
<br/>
<br/>
<marquee align="middle" behavior="alternate" scrollamount="5"> 
Web application by <a href="mailto:<%= mail %>" target="_blank"><%= studente %></a>
</marquee>

</body>
</html>
