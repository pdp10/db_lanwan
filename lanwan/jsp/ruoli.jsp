<%@ include file="standard_html_header.jsp" %>
<script type="text/javascript" src="js_code.js"></script>

<%@ include file="standard_html_link_index.jsp" %>


<h2>RUOLI</h2>

<!--from degli utenti-->
<form action="ruoli_salva.jsp" name="ruoli" method="GET">

<!-- tabella di visione degli utenti registrati -->
<table width="30%" align="center" cellspacing="0" border="1">
	<tr>    
		<th width="3%">&nbsp;</th>
		<th width="5%">Oid*</th>
		<th width="10%">Ruolo</th>
	</tr>

<%@ include file="sql/ruoli_select.jsp" %>
<%
	try {
            rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
	    while (rs.next()) { %>

	<tr>    <td><a href="ruoli_salva.jsp?oid=<%= rs.getString("OID") %>&rm=1" onclick="return questionYN();">
			<img src="images/cestino.gif" border="0"></a></td>
		<td><a href="" onclick="copiaRuoli(document.forms.ruoli,
                                                            <%= rs.getString("OID") %>,
                                                            '<%= rs.getString("RUOLO") %>'); return false;">
			   <%= rs.getString("OID") %></a></td>
		<td> <%= rs.getString("RUOLO") %> </td>
	</tr> 
<%	
	         }
	     }  else {
%>
	<tr>
		<td></td>
		<td colspan="3">Nessun ruolo presente</td>
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
<h3>INSERISCI UN NUOVO RUOLO</h3>
<br/>


<!-- tabella di inserimento/modifica di utenti -->
<table width="30%" align="center" cellspacing="0">

        <tr> <input type="hidden" name="oid"> </tr>
        <tr width="5%" class="elegant"> 
	         <td>Ruolo</td>
	         <td><input type="text" name="ruolo" size="15"></td> 
                 <td><input type="submit" value="Salva">
	</tr>

</table>
</form>

<% conn.close(); %>

<%@ include file="standard_html_link_index.jsp" %>

</body>
</html>