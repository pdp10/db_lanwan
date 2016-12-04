<%@ include file="standard_html_header.jsp" %>
<%@ include file="sql/stanze_select.jsp" %>

<%@ include file="standard_html_link_index.jsp" %>


<h2>STANZE</h2>

<table width="80%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="2%">Oid</th>
		<th width="2%">Piano</th>
		<th width="5%">Telefono</th>
		<th width="10%">Descrizione</th>
	</tr>

<%
	try {
	    rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
		while (rs.next()) { %>
	<tr>
		<td> <%= rs.getInt("OID") %> </td>
		<td> <%= rs.getInt("NUMERO") %> </td>
		<td> <%= rs.getInt("TELEFONO") %> </td>
		<td> <%= rs.getString("DESCRIZIONE") %> </td>
	</tr>
<%	
               }
	    } else {
%>
	<tr>
		<td></td>
		<td colspan="4">Nessuna stanza presente</td>
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