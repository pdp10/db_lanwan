<%@ include file="standard_html_header.jsp" %>
<script type="text/javascript" src="js_code.js"></script>

<%@ include file="standard_html_link_index.jsp" %>


<h2>TIPI DI PORTE</h2>

<form action="porte_tipi_salva.jsp" name="porte_tipi" method="GET">

<table width="30%" align="center" cellspacing="0" border="1">
	<tr>    
		<th width="3%">&nbsp;</th>
		<th width="10%">Tipo</th>
	</tr>

<%@ include file="sql/porte_tipi_select.jsp" %>
<%
	try {
            rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
	    while (rs.next()) { %>

	<tr>    <td><a href="porte_tipi_salva.jsp?tipo=<%= rs.getString("TIPO") %>&rm=1" onclick="return questionYN();">
			<img src="images/cestino.gif" border="0"></a></td>
		<td><a href="" onclick="copiaPortaTipo(document.forms.porte_tipi,
                                                            '<%= rs.getString("TIPO") %>'); return false;">
			   <%= rs.getString("tipo") %></a></td>
	</tr> 
<%	
	         }
	    }  else {
%>
	<tr>
		<td></td>
		<td colspan="2">Nessun tipo presente</td>
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
<h3>INSERISCI UN NUOVO TIPO DI PORTE</h3>
<br/>


<table width="30%" align="center" cellspacing="0">

        <tr width="5%" class="elegant"> 
	         <td>Tipo</td>
	         <td><input type="hidden" name="oldtipo"></td>
	         <td><input type="text" name="tipo" size="15"></td> 
                 <td><input type="submit" value="Salva">
	</tr>

</table>
</form>

<% conn.close(); %>

<%@ include file="standard_html_link_index.jsp" %>

</body>
</html>