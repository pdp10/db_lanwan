<%@ include file="standard_html_header.jsp" %>
<%@ include file="sql/permutazioni_select.jsp" %>

<%@ include file="standard_html_link_index.jsp" %>


<h2>PERMUTAZIONI</h2>

<table width="60%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="5%">Oid</th>
		<th width="7%">Data</th>
		<th width="5%">Porta In</th>
		<th width="5%">Porta Out</th>
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
	</tr>
<%	
	        } 	     
            }  else {
%>
	<tr>
		<td></td>
		<td colspan="4">Nessuna permutazione presente</td>
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