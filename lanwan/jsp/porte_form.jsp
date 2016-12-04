<%@ include file="standard_html_header.jsp" %>
<script type="text/javascript" src="js_code.js"></script>

<%@ include file="standard_html_link_index.jsp" %>


<h2>PORTE</h2>

<!--from degli PORTE-->
<form action="porte_salva.jsp" name="porte" method="GET">


<table width="35%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="3%">&nbsp;</th>
		<th width="5%">Porta</th>
		<th width="3%">Tipo</th>
		<th width="10%">Oid Apparato</th>

	</tr>

<%@ include file="sql/porte_select.jsp" %>
<%
	try {
            rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
	    while (rs.next()) { %>

	<tr>    <td><a href="porte_salva.jsp?porta=<%= rs.getString("PORTA") %>&rm=1" onclick="return questionYN();">
			<img src="images/cestino.gif" border="0"></a></td>
	        <td><a href="" onclick="copiaPorte(document.forms.porte,
		                                            <%= rs.getString("PORTA") %>,
		                                            '<%= rs.getString("TIPO") %>',
                                                            <%= rs.getString("APPARATO") %>); return false;">
			   <%= rs.getString("PORTA") %></a></td>
		<td> <%= rs.getString("TIPO") %> </td>
		<td> <%= rs.getString("APPARATO") %> </td>
	</tr> 
<%	
	         }
	      } else {
%>
	<tr>
		<td></td>
		<td colspan="4">Nessuna porta presente</td>
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
<h3>INSERISCI UNA NUOVA PORTE</h3>
<br/>


<!-- tabella di cancellazione/inserimento/modifica di PORTE -->
<table width="40%" align="center" cellspacing="0">

        <tr> <input type="hidden" name="porta"> </tr>
        <tr width="5%" class="elegant">
                 <td>Tipo</td>
<%@ include file="sql/porte_tipi_select.jsp" %>
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
        <tr width="5%" class="elegant">
                 <td>Oid Apparato</td> 
	         <td><input type="text" name="apparato" size="40"></td>
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