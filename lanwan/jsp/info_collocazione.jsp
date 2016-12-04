<%@ include file="standard_html_header.jsp" %>
<%@ include file="sql/info_collocazione_select.jsp" %>

<%@ include file="standard_html_link_index.jsp" %>


<h2>INFORMAZIONI SULLA COLLOCAZIONE DEGLI ARMADI IN STANZE/PIANI/EDIFICI</h2>

<table width="60%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="6%">Oid Armadio</th>
		<th width="6%">Oid Stanza</th>
		<th width="6%">Oid Piano</th>
		<th width="6%">Piano</th>
		<th width="15%">Edificio</th>
		<th width="6%">Oid Edificio</th>
	</tr>

<%
	try {
	    rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
		while (rs.next()) { %>
	<tr>
		<td> <%= rs.getInt("OID_ARMADIO") %> </td>
		<td> <%= rs.getInt("OID_STANZA") %> </td>
		<td> <%= rs.getInt("OID_PIANO") %> </td>
		<td> <%= rs.getInt("PIANO") %> </td>
		<td> <%= rs.getString("EDIFICIO") %> </td>
		<td> <%= rs.getInt("OID_EDIFICIO") %> </td>
	</tr>
<%	
	         }
            }  else {
%>
	<tr>
		<td colspan="6">Nessuna informazione da visualizzare</td>
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