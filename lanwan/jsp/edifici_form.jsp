<%@ include file="standard_html_header.jsp" %>
<script type="text/javascript" src="js_code.js"></script>

<%@ include file="standard_html_link_index.jsp" %>


<h2>EDIFICI</h2>

<!--from degli EDIFICI-->
<form action="edifici_salva.jsp" name="edifici" method="GET">


<table width="65%" align="center" cellspacing="0" border="1">
	<tr>    
		<th width="3%">&nbsp;</th>
		<th width="5%">Oid*</th>
		<th width="20%">Nome</th>
		<th width="30%">Edificio</th>
	</tr>

<%@ include file="sql/edifici_select.jsp" %>
<%
	try {
            rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
	    while (rs.next()) { %>

	<tr>    <td><a href="edifici_salva.jsp?oid=<%= rs.getString("OID") %>&rm=1" onclick="return questionYN();">
			<img src="images/cestino.gif" border="0"></a></td>
		<td><a href="" onclick="copiaEdifici(document.forms.edifici,
                                                            <%= rs.getString("OID") %>,
                                                            '<%= rs.getString("NOME") %>',
	                                                    '<%= rs.getString("INDIRIZZO") %>'); return false;">
			   <%= rs.getString("OID") %></a></td>
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

<br/>
<br/>
<br/>
<h3>INSERISCI UN NUOVO EDIFICIO</h3>
<br/>


<!-- tabella di cancellazione/inserimento/modifica di EDIFICI -->
<table width="40%" align="center" cellspacing="0">

        <tr> <input type="hidden" name="oid"> </tr>
        <tr width="5%" class="elegant">
                 <td>Nome</td> 
	         <td><input type="text" name="nome" size="40"></td>
        </tr>
	<tr width="5%" class="elegant"> 
	         <td>Indirizzo</td>
	         <td><input type="text" name="indirizzo" size="40"></td>
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