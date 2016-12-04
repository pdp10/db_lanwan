<%@ include file="standard_html_header.jsp" %>
<script type="text/javascript" src="js_code.js"></script>

<%@ include file="standard_html_link_index.jsp" %>


<h2>STATI</h2>

<form action="stati_salva.jsp" name="stati" method="GET">

<table width="30%" align="center" cellspacing="0" border="1">
	<tr>    
		<th width="3%">&nbsp;</th>
		<th width="10%">Stato</th>
	</tr>

<%@ include file="sql/stati_select.jsp" %>
<%
	try {
            rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
	    while (rs.next()) { %>

	<tr>    <td><a href="stati_salva.jsp?stato=<%= rs.getString("STATO") %>&rm=1" onclick="return questionYN();">
			<img src="images/cestino.gif" border="0"></a></td>
		<td><a href="" onclick="copiaStato(document.forms.stati,
                                                            '<%= rs.getString("STATO") %>'); return false;">
			   <%= rs.getString("stato") %></a></td>
	</tr> 
<%	
	         }
	     } else {
%>
	<tr>
		<td></td>
		<td colspan="2">Nessuno stato presente</td>
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
<h3>INSERISCI UN NUOVO STATO DI UN APPARATO DI RETE</h3>
<br/>


<table width="30%" align="center" cellspacing="0">

        <tr width="5%" class="elegant"> 
	         <td>Stato</td>
	         <td><input type="hidden" name="oldstato"></td>
	         <td><input type="text" name="stato" size="15"></td> 
                 <td><input type="submit" value="Salva">
	</tr>

</table>
</form>

<% conn.close(); %>

<%@ include file="standard_html_link_index.jsp" %>

</body>
</html>