<%@ include file="standard_html_header.jsp" %>
<script type="text/javascript" src="js_code.js"></script>

<%@ include file="standard_html_link_index.jsp" %>


<h2>MARCHE STAMPANTI</h2>

<form action="marche_st_salva.jsp" name="marchest" method="GET">

<table width="30%" align="center" cellspacing="0" border="1">
	<tr>    
		<th width="3%">&nbsp;</th>
		<th width="10%">Marca Stampante</th>
	</tr>

<%@ include file="sql/marche_st_select.jsp" %>
<%
	try {
            rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
	    while (rs.next()) { %>

	<tr>    <td><a href="marche_st_salva.jsp?marcast=<%= rs.getString("MARCAST") %>&rm=1" onclick="return questionYN();">
			<img src="images/cestino.gif" border="0"></a></td>
		<td><a href="" onclick="copiaMarcaSt(document.forms.marchest,
                                                            '<%= rs.getString("MARCAST") %>'); return false;">
			   <%= rs.getString("MARCAST") %></a></td>
	</tr> 
<%	
	         }
	    } else {
%>
	<tr>
		<td></td>
		<td colspan="2">Nessuna marca presente</td>
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
<h3>INSERISCI UNA NUOVA MARCA DI UNA STAMPANTE</h3>
<br/>


<table width="30%" align="center" cellspacing="0">

        <tr width="5%" class="elegant"> 
	         <td>Marca Stampante</td>
	         <td><input type="hidden" name="oldmarcast"></td>
	         <td><input type="text" name="marcast" size="15"></td> 
                 <td><input type="submit" value="Salva">
	</tr>

</table>
</form>

<% conn.close(); %>

<%@ include file="standard_html_link_index.jsp" %>

</body>
</html>