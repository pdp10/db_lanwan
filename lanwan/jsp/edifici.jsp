<%@ include file="standard_html_header.jsp" %>
<%@ include file="sql/edifici_select.jsp" %>

<%@ include file="standard_html_link_index.jsp" %>


<h2>EDIFICI</h2>

<table width="60%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="2%">Oid</th>
		<th width="5%">Nome</th>
		<th width="10%">Indirizzo</th>
	</tr>

<%
	try {
            rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
	        while (rs.next()) { %>
	<tr>
		<td> <%= rs.getInt("OID") %> </td>
		<td> <%= rs.getString("NOME") %> </td>
		<td> <%= rs.getString("INDIRIZZO") %> </td>
	</tr>
<%	
	        }
	     } else {
%>
	<tr>
		<td></td>
		<td colspan="3">Nessun edificio presente</td>
	</tr>
<%	     } 
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
