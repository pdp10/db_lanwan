<%@ include file="standard_html_header.jsp" %>
<%@ include file="sql/piani_select.jsp" %>

<%@ include file="standard_html_link_index.jsp" %>


<h2>PIANI</h2>

<table width="40%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="5%">Oid</th>
		<th width="5%">Piano</th>
		<th width="10%">Edificio</th>
	</tr>

<%
	try {
	    rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
		while (rs.next()) { %>
	<tr>
		<td> <%= rs.getInt("OID") %> </td>
		<td> <%= rs.getInt("PIANO") %> </td>
		<td> <%= rs.getString("EDIFICIO") %> </td>
	</tr>
<%	
                }
	     } else {
%>
	<tr>
		<td></td>
		<td colspan="3">Nessun piano presente</td>
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