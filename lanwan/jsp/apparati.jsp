<%@ include file="standard_html_header.jsp" %>
<%@ include file="sql/apparati_select.jsp" %>

<%@ include file="standard_html_link_index.jsp" %>


<h2>APPARATI</h2>

<table width="150%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="5%">Oid</th>
		<th width="5%">Inventario</th>
		<th width="11%">Acquistato</th>
		<th width="7%">Dislocazione</th>
		<th width="6%">Armadio</th>
		<th width="7%">Stato</th>
		<th width="10%">Tipo</th>
		<th width="10%">Funzionamento</th>
		<th width="10%">IP</th>
		<th width="8%">SN</th>
		<th width="8%">PN</th>
		<th width="7%">Potenza</th>
	</tr>

<%
	try {
	    rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
		while (rs.next()) { %>
	<tr>
		<td> <%= rs.getInt("OID") %> </td>
		<td> <%= rs.getInt("INVENTARIO") %> </td>
		<td> <%= rs.getString("ACQUISTATO") %> </td>
		<td> <%= rs.getInt("OID_DISLOCAZIONE") %> </td>
		<td> <%= rs.getInt("OID_ARMADIO") %> </td>
		<td> <%= rs.getString("STATO") %> </td>
		<td> <%= rs.getString("TIPO") %> </td>
		<td> <%= rs.getString("FUNZIONAMENTO") %> </td>
		<td> <%= rs.getString("IP") %> </td>
		<td> <%= rs.getInt("SN") %> </td>
		<td> <%= rs.getInt("PN") %> </td>
		<td> <%= rs.getString("POTENZA") %> </td>
	</tr>
<%	
                }
	    } else {
%>
	<tr>
		<td></td>
		<td colspan="12">Nessun apparato presente</td>
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