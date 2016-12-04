<%@ include file="standard_html_header.jsp" %>
<script type="text/javascript" src="js_code.js"></script>

<%@ include file="standard_html_link_index.jsp" %>


<h2>PRESE DI RETE</h2>

<!--from degli PRESE_RETE-->
<form action="prese_rete_salva.jsp" name="prese_rete" method="GET">


<table width="35%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="3%">&nbsp;</th>
		<th width="5%">Oid</th>
		<th width="5%">Etichetta</th>
		<th width="3%">Tipo</th>
	</tr>

<%@ include file="sql/prese_rete_select.jsp" %>
<%
	try {
            rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
	    while (rs.next()) { %>

	<tr>    <td><a href="prese_rete_salva.jsp?oid=<%= rs.getString("OID") %>&rm=1" onclick="return questionYN();">
			<img src="images/cestino.gif" border="0"></a></td>
	        <td><a href="" onclick="copiaPreseRete(document.forms.prese_rete,
                                                            <%= rs.getString("OID") %>,
		                                            <%= rs.getString("ETICHETTA") %>,
		                                            '<%= rs.getString("TIPO") %>'); return false;">
			   <%= rs.getString("OID") %></a></td>
		<td> <%= rs.getString("ETICHETTA") %> </td>
		<td> <%= rs.getString("TIPO") %> </td>
	</tr> 
<%	
	         }
	     } else {
%>
	<tr>
		<td></td>
		<td colspan="4">Nessuna presa di rete presente</td>
	</tr>
<%	     } 
        }
	catch (SQLException e) {
		out.print(e.getMessage());
	} 
%>
</table>

<br/>
<br/>
<br/>
<h3>INSERISCI UNA NUOVA PRESA DI RETE</h3>
<br/>


<!-- tabella di cancellazione/inserimento/modifica di PRESE_RETE -->
<table width="40%" align="center" cellspacing="0">

        <tr width="5%" class="elegant">
                 <td>Etichetta</td> 
	         <td><input type="text" name="etichetta" size="40"></td>
        </tr>
        <tr width="5%" class="elegant">
                 <td>Tipo</td>
<%@ include file="sql/prese_tipi_select.jsp" %>
	         <td><select name="tipo"> 
<%      
	try {
              rs = stmt.executeQuery(sql);
              while (rs.next()) { %>
                                <option value="<%= rs.getString("tipo")%>"> <%= rs.getString("tipo")%> </option> 
        <%	
	      }
	}
	catch (SQLException e) {
		out.print(e.getMessage());
	} 
%>           
                     </select></td>
        </tr>
	<tr>
	        <td colspan="2"><input type="submit" value="Salva"></td>
        </tr>

</table>
</form>

<% conn.close(); %>

<%@ include file="standard_html_link_index.jsp" %>

</body>
</html>