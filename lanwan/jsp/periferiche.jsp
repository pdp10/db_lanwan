<%@ include file="standard_html_header.jsp" %>
<%@ include file="sql/periferiche_select.jsp" %>

<%@ include file="standard_html_link_index.jsp" %>


<h2>PERIFERICHE</h2>

<table width="95%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="8%">Oid</th>
		<th width="10%">Utente</th>
		<th width="10%">IP</th>
		<th width="8%">Presa Rete</th>
		<th width="8%">Oid Stanza</th>
		<th width="1%">Tipo</th>
		<th width="8%">Modello PC</th>
		<th width="8%">Marca PC</th>
		<th width="8%">Modello Stampante</th>
		<th width="8%">Marca Stampante</th>
	</tr>

<%
	try {
	    rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
		while (rs.next()) { %>
	<tr>
		<td> <%= rs.getString("OID") %> </td>
		<td> <%= rs.getString("UTENTE") %> </td>
		<td> <%= rs.getString("IP") %> </td>
		<td> <%= rs.getString("PRESA_RETE") %> </td>
		<td> <%= rs.getString("OID_STANZA") %> </td>
		<td> <%= rs.getString("TIPO") %> </td>
		<td> <%= rs.getString("MODELLOPC") %> </td>
		<td> <%= rs.getString("MARCAPC") %> </td>
		<td> <%= rs.getString("MODELLOST") %> </td>
		<td> <%= rs.getString("MARCAST") %> </td>
	</tr>
<%	
                }
	    }  else {
%>
	<tr>
		<td></td>
		<td colspan="9">Nessuna periferica presente</td>
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