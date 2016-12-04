<%@ include file="standard_html_header.jsp" %>
<%@ include file="sql/porte_select.jsp" %>

<%@ include file="standard_html_link_index.jsp" %>


<h2>PORTE</h2>

<table width="30%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="5%">Porta</th>
		<th width="5%">Tipo</th>
		<th width="5%">Apparato</th>
	</tr>

<%
	try {
	    rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
		while (rs.next()) { %>
	<tr>
		<td> <%= rs.getInt("PORTA") %> </td>
		<td> <%= rs.getString("TIPO") %> </td>
		<td> <%= rs.getInt("APPARATO") %> </td>
	</tr>
<%	 
                }
	     } else {
%>
	<tr>
		<td></td>
		<td colspan="3">Nessuna porta presente</td>
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
