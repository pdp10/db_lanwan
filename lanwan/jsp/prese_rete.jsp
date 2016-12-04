<%@ include file="standard_html_header.jsp" %>
<%@ include file="sql/prese_rete_select.jsp" %>

<%@ include file="standard_html_link_index.jsp" %>


<h2>PRESE DI RETE</h2>

<table width="30%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="5%">Oid</th>
		<th width="5%">Etichetta</th>
		<th width="3%">Tipo</th>
	</tr>

<%
	try {
	    rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
		while (rs.next()) { %>
	<tr>
		<td> <%= rs.getInt("OID") %> </td>
		<td> <%= rs.getInt("ETICHETTA") %> </td>
		<td> <%= rs.getString("TIPO") %> </td>
	</tr>
<%	
	         }
            }  else {
%>
	<tr>
		<td></td>
		<td colspan="3">Nessuna presa di rete presente</td>
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