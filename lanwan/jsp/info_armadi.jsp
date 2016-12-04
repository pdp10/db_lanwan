<%@ include file="standard_html_header.jsp" %>
<%@ include file="sql/info_armadi_select.jsp" %>

<%@ include file="standard_html_link_index.jsp" %>


<h2>VISUALIZZAZIONE DATI ESSENZIALI DEGLI ARMADI CON ALMENO UN APPARATO ATTIVO</h2>


<form action="info_armadi.jsp" name="info_armadi" method="GET">
<table width="40%" align="center">
        <tr>
             <td class="elegant">Filtro sul numero di apparati
                       <input type="text" name="num" size="3">
	               <input type="submit" value="Cerca">
             <td>
        </tr>
</table>
</form>

<br/>

<table width="35%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="10%">Oid Armadio</th>
		<th width="10%">Oid Stanza</th>
		<th width="10%">N. Apparati</th>
	</tr>

<%
	try {

	    rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
		while (rs.next()) { %>
	<tr>
		<td> <%= rs.getString("OID") %> </td>
		<td> <%= rs.getString("OID_STANZA") %> </td>
		<td> <%= rs.getString("CONTA") %> </td>
	</tr>
<%	
	         }
            }  else {
%>
	<tr>
		<td></td>
		<td colspan="3">Nessuna informazione da visualizzare</td>
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
