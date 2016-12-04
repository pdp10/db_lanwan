<%@ include file="standard_html_header.jsp" %>
<script type="text/javascript" src="js_code.js"></script>

<%@ include file="standard_html_link_index.jsp" %>


<h2>POTENZE</h2>

<form action="potenze_salva.jsp" name="potenze" method="GET">

<table width="30%" align="center" cellspacing="0" border="1">
	<tr>    
		<th width="3%">&nbsp;</th>
		<th width="10%">Potenza</th>
	</tr>

<%@ include file="sql/potenze_select.jsp" %>
<%
	try {
            rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
	    while (rs.next()) { %>

	<tr>    <td><a href="potenze_salva.jsp?potenza=<%= rs.getString("POTENZA") %>&rm=1" onclick="return questionYN();">
			<img src="images/cestino.gif" border="0"></a></td>
		<td><a href="" onclick="copiaPotenza(document.forms.potenze,
                                                            '<%= rs.getString("POTENZA") %>'); return false;">
			   <%= rs.getString("POTENZA") %></a></td>
	</tr> 
<%	
	         }
	    } else {
%>
	<tr>
		<td></td>
		<td colspan="2">Nessuna potenza presente</td>
	</tr>
<%	     } 
        }
	catch (SQLException e) {
		out.print(e.getMessage());
	} 
%>
</table>

<br/>
<br/>
<br/>
<h3>INSERISCI UNA NUOVA POTENZA</h3>
<br/>


<table width="30%" align="center" cellspacing="0">

        <tr width="5%" class="elegant"> 
	         <td>Potenza</td>
	         <td><input type="hidden" name="oldpotenza"></td>
	         <td><input type="text" name="potenza" size="15"></td> 
                 <td><input type="submit" value="Salva">
	</tr>

</table>
</form>

<% conn.close(); %>

<%@ include file="standard_html_link_index.jsp" %>

</body>
</html>