<%@ include file="standard_html_header.jsp" %>
<script type="text/javascript" src="js_code.js"></script>

<%@ include file="standard_html_link_index.jsp" %>


<h2>PERMUTAZIONI</h2>

<!--from degli PERMUTAZIONI-->
<form action="permutazioni_salva.jsp" name="permutazioni" method="GET">


<table width="60%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="3%">&nbsp;</th>
		<th width="5%">Oid</th>
		<th width="8%">Data</th>
		<th width="5%">Porta In</th>
		<th width="5%">Porta Out</th>
	</tr>

<%@ include file="sql/permutazioni_select.jsp" %>
<%
	try {
            rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
	    while (rs.next()) { %>

	<tr>    <td><a href="permutazioni_salva.jsp?oid=<%= rs.getString("OID") %>&rm=1" onclick="return questionYN();">
			<img src="images/cestino.gif" border="0"></a></td>
	        <td><a href="" onclick="copiaPermutazioni(document.forms.permutazioni,
                                                            <%= rs.getString("OID") %>,
		                                            '<%= rs.getString("DATA") %>',
		                                            '<%= rs.getString("PORTA_IN") %>',
		                                            '<%= rs.getString("PORTA_OUT") %>'); return false;">
			   <%= rs.getString("OID") %></a></td>
		<td> <%= rs.getString("DATA") %> </td>
		<td> <%= rs.getString("PORTA_IN") %> </td>
		<td> <%= rs.getString("PORTA_OUT") %> </td>
	</tr> 
<%	
	         }
	    } else {
%>
	<tr>
		<td></td>
		<td colspan="5">Nessuna permutazione presente</td>
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
<h3>INSERISCI UNA NUOVA PERMUTAZIONE</h3>
<br/>


<!-- tabella di cancellazione/inserimento/modifica di PERMUTAZIONI -->
<table width="40%" align="center" cellspacing="0">

        <tr> <input type="hidden" name="oid"> </tr>
        <tr width="5%" class="elegant">
                 <td>Data (DD/MM/YYYY)</td> 
	         <td><input type="date" name="data" size="40"></td>
        </tr>
        <tr width="5%" class="elegant">
                 <td>Porta Ingresso (att)</td> 
	         <td><input type="text" name="porta_in" size="40"></td>
        </tr>
        <tr width="5%" class="elegant">
                 <td>Porta Uscita (pas)</td> 
	         <td><input type="text" name="porta_out" size="40"></td>
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