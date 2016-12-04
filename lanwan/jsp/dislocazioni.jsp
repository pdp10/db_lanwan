<%@ include file="standard_html_header.jsp" %>
<%@ include file="sql/dislocazioni_select.jsp" %>

<%@ include file="standard_html_link_index.jsp" %>


<h2>DISLOCAZIONI</h2>

<table width="40%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="5%">Oid</th>
		<th width="5%">Luogo</th>
		<th width="1%">Tipo</th>
		<th width="5%">Stanza</th>
	</tr>

<%
	try {
	    rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
		while (rs.next()) { %>
	<tr>
		<td> <%= rs.getInt("OID") %> </td>
		<td> <%= rs.getString("LUOGO") %> </td>
		<td> <%= rs.getString("TIPO") %> </td>
		<td> <%= rs.getInt("STANZA") %> </td>
	</tr>
<%	
                }
	    } else {
%>
	<tr>
		<td></td>
		<td colspan="4">Nessuna dislocazione presente</td>
	</tr>
<%	    } 
	}
	catch (SQLException e) {
		out.print(e.getMessage());
	} 
%>
</table>
<% conn.close(); %>


<%@ include file="standard_html_link_index.jsp" %>

</body>
</html>