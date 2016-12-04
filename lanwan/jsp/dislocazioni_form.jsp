<%@ include file="standard_html_header.jsp" %>
<script type="text/javascript" src="js_code.js"></script>

<%@ include file="standard_html_link_index.jsp" %>


<h2>DISLOCAZIONI</h2>

<!--from degli DISLOCAZIONI-->
<form action="dislocazioni_salva.jsp" name="dislocazioni" method="GET">


<table width="45%" align="center" cellspacing="0" border="1">
	<tr>    
		<th width="3%">&nbsp;</th>
		<th width="5%">Oid*</th>
		<th width="5%">Luogo</th>
		<th width="1%">Tipo</th>
		<th width="5%">Oid Stanza</th>
	</tr>

<%@ include file="sql/dislocazioni_select.jsp" %>
<%
	try {
            rs = stmt.executeQuery(sql);
	    while (rs.next()) { %>

	<tr>    <td><a href="dislocazioni_salva.jsp?oid=<%= rs.getString("OID") %>&rm=1" onclick="return questionYN();">
			<img src="images/cestino.gif" border="0"></a></td>
		<td><a href="" onclick="copiaDislocazioni(document.forms.dislocazioni,
                                                            <%= rs.getString("OID") %>,
                                                            '<%= rs.getString("LUOGO") %>',
                                                            '<%= rs.getString("TIPO") %>',
	                                                    '<%= rs.getString("STANZA") %>'); return false;">
			   <%= rs.getString("OID") %></a></td>
		<td> <%= rs.getString("LUOGO") %> </td>
		<td> <%= rs.getString("TIPO") %> </td>
		<td> <%= rs.getString("STANZA") %> </td>
	</tr> 
<%	
	         }
	}
	catch (SQLException e) {
		out.print(e.getMessage());
	} 
%>
</table>

<br/>
<br/>
<br/>
<h3>INSERISCI UNA NUOVA DISLOCAZIONE</h3>
<br/>


<!-- tabella di cancellazione/inserimento/modifica di DISLOCAZIONI -->
<table width="40%" align="center" cellspacing="0">

        <tr> <input type="hidden" name="oid"> </tr>
        <tr width="5%" class="elegant">
                 <td>Luogo</td> 
	         <td><input type="text" name="luogo" size="23"></td>
        </tr>
	<tr width="5%" class="elegant"> 
	         <td>Tipo</td>
	         <td><select name="tipo"> 
                       <option value="A">Armadio tecnologico</option>
                       <option value="D">Dislocazione qualsiasi</option> 
                      </select></td>
        </tr>
	<tr width="5%" class="elegant"> 
	         <td>Oid Stanza</td>
	         <td><input type="text" name="stanza" value="null" size="23"></td>
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