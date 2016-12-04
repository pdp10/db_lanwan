<%@ include file="standard_html_header.jsp" %>

<%@ include file="standard_html_link_index.jsp" %>


<h2>CALCOLO E VISUALIZZAZIONE LINEE DI INTERCONNESSIONE ATTIVE</h2>


<form action="info_linee_attive.jsp" name="linee_attive" method="GET">
<%@ include file="sql/responsabile_ass_select.jsp" %>
<table width="35%" align="center">
        <tr>
             <td class="elegant">Filtro sull'operatore
                       <select name="nome">
                       <option value="">No filter</option>
<%
	try {
		rs = stmt.executeQuery(sql);
		while (rs.next()) { %>
		       <option value="<%= rs.getString("nome")%>"> <%= rs.getString("nome")%> </option>
            <%	
	        }
	}
	catch (SQLException e) {
		out.print(e.getMessage());
	} 
%>    
	               </select></td>
	               <td><input type="submit" value="Cerca"></td>
        </tr>
</table>
</form>

<br/>

<%@ include file="sql/info_linee_attive_select.jsp" %> 
<table width="35%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="10%">Linee Attive</th>
		<th width="10%">Tipo</th>
	</tr>

<%
	try {

	    rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
		while (rs.next()) { %>
	<tr>
		<td> <%= rs.getString("LINEE_ATTIVE") %> </td>
		<td> <%= rs.getString("TIPO") %> </td>
	</tr>
<%	
	         }
            }  else {
%>
	<tr>
		<td></td>
		<td colspan="2">Nessuna informazione da visualizzare</td>
	</tr>
<%	    } 
	}
	catch (SQLException e) {
		out.print(e.getMessage());
	} 
%>
</table>

<br/>
<br/>
<br/>
<br/>
<br/>
<h2>LINEE DI INTERCONNESSIONE CON TEMPO GUASTO MAGGIORE DI TUTTE</H2>
<%@ include file="sql/info_linee_guaste_min_select.jsp" %> 
<table width="80%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="10%">Oid Linea</th>
		<th width="15%">Data</th>
		<th width="10%">Porta In</th>
		<th width="10%">Porta Out</th>
		<th width="10%">Tipo</th>
		<th width="10%">Operatore</th>
	</tr>

<%
	try {

	    rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
		while (rs.next()) { %>
	<tr>
		<td> <%= rs.getString("OID") %> </td>
		<td> <%= rs.getString("DATA") %> </td>
		<td> <%= rs.getString("PORTA_IN") %> </td>
		<td> <%= rs.getString("PORTA_OUT") %> </td>
		<td> <%= rs.getString("TIPO") %> </td>
		<td> <%= rs.getString("NOME") %> </td>
	</tr>
<%	
	         }
            }  else {
%>
	<tr>
		<td></td>
		<td colspan="6">Nessuna informazione da visualizzare</td>
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
