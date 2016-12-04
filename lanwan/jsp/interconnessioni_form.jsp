<%@ include file="standard_html_header.jsp" %>
<script type="text/javascript" src="js_code.js"></script>

<%@ include file="standard_html_link_index.jsp" %>


<h2>INTERCONNESSIONI</h2>

<!--from degli INTERCONNESSIONI-->
<form action="interconnessioni_salva.jsp" name="interconnessioni" method="GET">


<table width="80%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="3%">&nbsp;</th>
		<th width="5%">Oid</th>
		<th width="8%">Data</th>
		<th width="5%">Porta In</th>
		<th width="5%">Porta Out</th>
		<th width="5%">Tipo</th>
		<th width="5%">Eseguita da</th>    
	</tr>

<%@ include file="sql/interconnessioni_select.jsp" %>
<%
	try {
            rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
	    while (rs.next()) { %>

	<tr>    <td><a href="interconnessioni_salva.jsp?oid=<%= rs.getString("OID") %>&rm=1" onclick="return questionYN();">
			<img src="images/cestino.gif" border="0"></a></td>
	        <td><a href="" onclick="copiaInterconnessioni(document.forms.interconnessioni,
                                                            <%= rs.getString("OID") %>,
		                                            '<%= rs.getString("DATA") %>',
		                                            '<%= rs.getString("PORTA_IN") %>',
		                                            '<%= rs.getString("PORTA_OUT") %>',
                                                            '<%= rs.getString("TIPO") %>',
                                                            '<%= rs.getString("NOME") %>'); return false;">
			   <%= rs.getString("OID") %></a></td>
		<td> <%= rs.getString("DATA") %> </td>
		<td> <%= rs.getString("PORTA_IN") %> </td>
		<td> <%= rs.getString("PORTA_OUT") %> </td>
		<td> <%= rs.getString("TIPO") %> </td>
		<td> <%= rs.getString("NOME") %> </td>
	</tr> 
<%	
	         }
	    } else {
%>
	<tr>
		<td></td>
		<td colspan="7">Nessuna interconnessione presente</td>
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
<h3>INSERISCI UNA NUOVA INTERCONNESSIONE</h3>
<br/>


<!-- tabella di cancellazione/inserimento/modifica di INTERCONNESSIONI -->
<table width="40%" align="center" cellspacing="0">

        <tr> <input type="hidden" name="oid"> </tr>
        <tr width="5%" class="elegant">
                 <td>Data (DD/MM/YYYY)</td> 
	         <td><input type="date" name="data" size="40"></td>
        </tr>
        <tr width="5%" class="elegant">
                 <td>Porta Ingresso</td> 
	         <td><input type="text" name="porta_in" size="40"></td>
        </tr>
        <tr width="5%" class="elegant">
                 <td>Porta Uscita</td> 
	         <td><input type="text" name="porta_out" size="40"></td>
        </tr>
        <tr width="5%" class="elegant">
                 <td>Tipo</td>
<%@ include file="sql/interconnessioni_tipi_select.jsp" %>
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
<%@ include file="sql/responsabile_ass_select.jsp" %>
        <tr width="5%" class="elegant">
                 <td>Eseguita da</td>
	         <td><select name="nome"> 
<%      
	try {
              rs = stmt.executeQuery(sql);
              while (rs.next()) { %>
                                <option value="<%= rs.getString("nome")%>"> <%= rs.getString("nome")%> </option> 
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