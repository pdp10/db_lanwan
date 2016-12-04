<%@ include file="standard_html_header.jsp" %>
<script type="text/javascript" src="js_code.js"></script>

<%@ include file="standard_html_link_index.jsp" %>


<h2>RESPONSABILI DI ASSISTENZA</h2>

<form action="responsabile_ass_salva.jsp" name="responsabile_ass" method="GET">

<table width="30%" align="center" cellspacing="0" border="1">
	<tr>    
		<th width="3%">&nbsp;</th>
		<th width="10%">Nome</th>
	</tr>

<%@ include file="sql/responsabile_ass_select.jsp" %>
<%
	try {
            rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
	    while (rs.next()) { %>

	<tr>    <td><a href="responsabile_ass_salva.jsp?nome=<%= rs.getString("NOME") %>&rm=1" onclick="return questionYN();">
			<img src="images/cestino.gif" border="0"></a></td>
		<td><a href="" onclick="copiaResponsabileAss(document.forms.responsabile_ass,
                                                            '<%= rs.getString("NOME") %>'); return false;">
			   <%= rs.getString("NOME") %></a></td>
	</tr> 
<%	
	         }
	    } else {
%>
	<tr>
		<td></td>
		<td colspan="2">Nessun responsabile di assistenza presente</td>
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
<h3>INSERISCI UN NUOVO RESPONSABILE DI ASSISTENZA</h3>
<br/>


<table width="30%" align="center" cellspacing="0">

        <tr width="5%" class="elegant"> 
	         <td>Nome</td>
	         <td><input type="hidden" name="oldnome"></td>
	         <td><input type="text" name="nome" size="15"></td> 
                 <td><input type="submit" value="Salva">
	</tr>

</table>
</form>

<% conn.close(); %>

<%@ include file="standard_html_link_index.jsp" %>

</body>
</html>