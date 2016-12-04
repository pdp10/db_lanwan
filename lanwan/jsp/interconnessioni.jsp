<%@ include file="standard_html_header.jsp" %>
<%@ include file="sql/interconnessioni_select.jsp" %>

<%@ include file="standard_html_link_index.jsp" %>


<h2>INTERCONNESSIONI</h2>

<table width="80%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="5%">Oid</th>
		<th width="8%">Data</th>
		<th width="5%">Porta In</th>
		<th width="5%">Porta Out</th>
		<th width="5%">Tipo</th>
		<th width="5%">Eseguita da</th>
	</tr>

<%
	try {
	    rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
		while (rs.next()) { %>
	<tr>
		<td> <%= rs.getInt("OID") %> </td>
		<td> <%= rs.getString("DATA") %> </td>
		<td> <%= rs.getInt("PORTA_IN") %> </td>
		<td> <%= rs.getInt("PORTA_OUT") %> </td>
		<td> <%= rs.getString("TIPO") %> </td>
		<td> <%= rs.getString("NOME") %> </td>
	</tr>
<%	
	         }
            }  else {
%>
	<tr>
		<td></td>
		<td colspan="6">Nessuna interconnessione presente</td>
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