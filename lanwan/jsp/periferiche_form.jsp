<%@ include file="standard_html_header.jsp" %>
<script type="text/javascript" src="js_code.js"></script>

<%@ include file="standard_html_link_index.jsp" %>


<h2>PERIFERICHE</h2>

<!--from delle periferiche-->
<form action="periferiche_salva.jsp" name="periferiche" method="GET">


<table width="95%" align="center" cellspacing="0" border="1">
	<tr>    
		<th width="3%">&nbsp;</th>
		<th width="8%">Oid*</th>
		<th width="10%">Utente</th>
		<th width="10%">IP</th>
		<th width="10%">Presa Rete</th>
		<th width="8%">Oid Stanza</th>
		<th width="1%">Tipo</th>
		<th width="8%">Modello PC</th>
		<th width="8%">Marca PC</th>
		<th width="8%">Modello Stampante</th>
		<th width="8%">Marca Stampante</th>
	</tr>

<%@ include file="sql/periferiche_select.jsp" %>
<%
	try {
            rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
	    while (rs.next()) { %>

	<tr>    <td><a href="periferiche_salva.jsp?oid=<%= rs.getString("OID") %>&rm=1" onclick="return questionYN();">
			<img src="images/cestino.gif" border="0"></a></td>
		<td><a href="" onclick="copiaPeriferiche(document.forms.periferiche,
                                                            <%= rs.getString("OID") %>,
                                                	    '<%= rs.getString("UTENTE") %>', 
               		                                    '<%= rs.getString("IP") %>',
  		                                            <%= rs.getString("PRESA_RETE") %>,
		                                            <%= rs.getString("OID_STANZA") %>,
 		                                            '<%= rs.getString("TIPO") %>',
  		                                            '<%= rs.getString("MODELLOPC") %>', 
		                                            '<%= rs.getString("MARCAPC") %>',
		                                            '<%= rs.getString("MODELLOST") %>',
		                                            '<%= rs.getString("MARCAST") %>'); return false;">
		     <%= rs.getString("OID") %> </a> </td>
		<td> <%= rs.getString("UTENTE") %> </td>
		<td> <%= rs.getString("IP") %> </td>
		<td> <%= rs.getString("PRESA_RETE") %> </td>
		<td> <%= rs.getString("OID_STANZA") %> </td>
		<td> <%= rs.getString("TIPO") %> </td>
		<td> <%= rs.getString("MODELLOPC") %> </td>
		<td> <%= rs.getString("MARCAPC") %> </td>
		<td> <%= rs.getString("MODELLOST") %> </td>
		<td> <%= rs.getString("MARCAST") %> </td>
	</tr> 
<%	
	         }
	    } else {
%>
	<tr>
		<td></td>
		<td colspan="3">Nessuna periferica presente</td>
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
<h3>INSERISCI UNA NUOVA PERIFERICHE</h3>
<br/>


<!-- tabella di cancellazione/inserimento/modifica di PERIFERICHE -->
<table width="40%" align="center" cellspacing="0">

        <tr> <input type="hidden" name="oid"> </tr>
        <tr width="5%" class="elegant">
                 <td>Utente</td> 
	         <td><input type="text" name="utente" size="25"></td>
        </tr>
	<tr width="5%" class="elegant"> 
	         <td>Ip</td>
	         <td><input type="text" name="ip" size="25"></td>
	</tr>
        <tr width="5%" class="elegant">
                 <td>Presa di rete</td> 
	         <td><input type="text" name="presa_rete" size="25"></td>
        </tr>
        <tr width="5%" class="elegant">
                 <td>oid_stanza</td> 
	         <td><input type="text" name="oid_stanza" size="25"></td>
        </tr>
	<tr width="5%" class="elegant"> 
	         <td>Tipo</td>
	         <td><select name="tipo"> 
                                <option value="C">PC</option> 
                                <option value="P">Stampante</option> 
                                <option value="S">Server</option> 
                     </select></td>
	</tr>
        <tr width="5%" class="elegant">
                 <td>Modello PC</td> 
	         <td><input type="text" name="modellopc" size="25"></td>
        </tr>

<%@ include file="sql/marche_pc_select.jsp" %>
	<tr width="5%" class="elegant">
	         <td>Marca PC</td>
	         <td><select name="marcapc"> 
<%      
	try {
              rs = stmt.executeQuery(sql);
              while (rs.next()) { %>
                                <option value="<%= rs.getString("MARCAPC")%>"> <%= rs.getString("MARCAPC")%> </option> 
        <%	
	      }
	}
	catch (SQLException e) {
		out.print(e.getMessage());
	} 
%>           
                     </select></td>
        <tr width="5%" class="elegant">
                 <td>Modello Stampante</td> 
	         <td><input type="text" name="modellost" size="25"></td>
        </tr>

<%@ include file="sql/marche_st_select.jsp" %>
	<tr width="5%" class="elegant">
	         <td>Marca Stampante</td>
	         <td><select name="marcast"> 
<%      
	try {
              rs = stmt.executeQuery(sql);
              while (rs.next()) { %>
                                <option value="<%= rs.getString("MARCAST")%>"> <%= rs.getString("MARCAST")%> </option> 
        <%	
	      }
	}
	catch (SQLException e) {
		out.print(e.getMessage());
	} 
%>           
                     </select></td>

	<tr>
	        <td colspan="2"><input type="submit" value="Salva"></td>
        </tr>

</table>
</form>

<% conn.close(); %>


<%@ include file="standard_html_link_index.jsp" %>

</body>
</html>