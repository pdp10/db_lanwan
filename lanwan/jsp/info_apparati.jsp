<%@ include file="standard_html_header.jsp" %>
<%@ include file="sql/info_apparati_select.jsp" %>

<%@ include file="standard_html_link_index.jsp" %>


<h2>VISUALIZZAZIONE DATI ESSENZIALI DEGLI APPARATI ATTIVI CON ALMENO UNA PORTA PERMUTATA</h2>


<form action="info_apparati.jsp" name="info_apparati" method="GET">
<table width="40%" align="center">
        <tr>
             <td class="elegant">Filtro sul numero di porte
                       <input type="text" name="num" size="3">
	               <input type="submit" value="Cerca">
             <td>
        </tr>
</table>
</form>

<br/>

<table width="150%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="5%">Oid</th>
		<th width="5%">Inventario</th>
		<th width="11%">Acquistato</th>
		<th width="5%">N. Porte</th>
		<th width="7%">Dislocazione</th>
		<th width="6%">Armadio</th>
		<th width="7%">Stato</th>
		<th width="10%">Tipo</th>
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
		<td> <%= rs.getString("OID") %> </td>
		<td> <%= rs.getString("INVENTARIO") %> </td>
		<td> <%= rs.getString("ACQUISTATO") %> </td>
		<td> <%= rs.getString("PORTE") %> </td>
		<td> <%= rs.getString("OID_DISLOCAZIONE") %> </td>
		<td> <%= rs.getString("OID_ARMADIO") %> </td>
		<td> <%= rs.getString("STATO") %> </td>
		<td> <%= rs.getString("TIPO") %> </td>
		<td> <%= rs.getString("IP") %> </td>
		<td> <%= rs.getString("SN") %> </td>
		<td> <%= rs.getString("PN") %> </td>
		<td> <%= rs.getString("POTENZA") %> </td>
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