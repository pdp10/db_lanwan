<%@ include file="standard_html_header.jsp" %>
<%@ include file="sql/info_porte_libere_select.jsp" %>

<%@ include file="standard_html_link_index.jsp" %>


<h2>VISUALIZZAZIONE DELLE PORTE LIBERE DEI PATCH PANEL A DISPOSIZIONE</h2>

<table width="40%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="5%">Porta</th>
		<th width="5%">Tipo</th>
		<th width="5%">Oid Apparato</th>
		<th width="5%">Oid Armadio</th>
	</tr>

<%
	try {
	    rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
		while (rs.next()) { %>
	<tr>
		<td> <%= rs.getInt("PORTA") %> </td>
		<td> <%= rs.getString("TIPO") %> </td>
		<td> <%= rs.getInt("OID_APPARATO") %> </td>
		<td> <%= rs.getInt("OID_ARMADIO") %> </td>
	</tr>
<%	
	         }
            }  else {
%>
	<tr>
		<td></td>
		<td colspan="4">Nessuna informazione da visualizzare</td>
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