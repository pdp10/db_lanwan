<%@ include file="standard_html_header.jsp" %>
<script type="text/javascript" src="js_code.js"></script>

<%@ include file="standard_html_link_index.jsp" %>


<h2>APPARATI</h2>

<!--from degli APPARATI-->
<form action="apparati_salva.jsp" name="apparati" method="GET">
<table width="170%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="3%">&nbsp;</th>
		<th width="5%">Oid</th>
		<th width="5%">Inventario</th>
		<th width="10%">Acquistato</th>
		<th width="7%">Dislocazione</th>
		<th width="7%">Armadio</th>
		<th width="7%">Stato</th>
		<th width="10%">Tipo</th>
		<th width="8%">Funzionamento</th>
		<th width="8%">IP</th>
		<th width="8%">SN</th>
		<th width="8%">PN</th>
		<th width="6%">Potenza</th>
	</tr>

<%@ include file="sql/apparati_select.jsp" %>
<%
	try {
	    rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
		while (rs.next()) { %>
	<tr>    <td><a href="apparati_salva.jsp?oid=<%= rs.getString("OID") %>&rm=1" onclick="return questionYN();">
			<img src="images/cestino.gif" border="0"></a></td>
	        <td><a href="" onclick="copiaApparati(document.forms.apparati,
		                                                   <%= rs.getString("OID") %>,
		                                                   <%= rs.getString("INVENTARIO") %>,
		                                                   '<%= rs.getString("ACQUISTATO") %>',
 		                                                   <%= rs.getString("OID_DISLOCAZIONE") %>,
		                                                   <%= rs.getString("OID_ARMADIO") %>,
		                                                   '<%= rs.getString("STATO") %>',
	   	                                                   '<%= rs.getString("TIPO") %>',
		                                                   '<%= rs.getString("FUNZIONAMENTO") %>',
		                                                   '<%= rs.getString("IP") %>',
		                                                   <%= rs.getString("SN") %>,
		                                                   <%= rs.getString("PN") %>,
		                                                   '<%= rs.getString("POTENZA") %>'); return false;">

		     <%= rs.getString("OID") %> </a></td>
		<td> <%= rs.getString("INVENTARIO") %> </td>
		<td> <%= rs.getString("ACQUISTATO") %> </td>
		<td> <%= rs.getString("OID_DISLOCAZIONE") %> </td>
		<td> <%= rs.getString("OID_ARMADIO") %> </td>
		<td> <%= rs.getString("STATO") %> </td>
		<td> <%= rs.getString("TIPO") %> </td>
		<td> <%= rs.getString("FUNZIONAMENTO") %> </td>
		<td> <%= rs.getString("IP") %> </td>
		<td> <%= rs.getString("SN") %> </td>
		<td> <%= rs.getString("PN") %> </td>
		<td> <%= rs.getString("POTENZA") %> </td>
	</tr>
<%	
                }
	    } else {
%>
	<tr>
		<td></td>
		<td colspan="12">Nessun apparato presente</td>
	</tr>
<%	    } 
	}
	catch (SQLException e) {
		out.print(e.getMessage());
	} 
%>
</table>

<br/>
<br/>
<br/>
<h3>INSERISCI UN NUOVO APPARATO</h3>
<br/>


<!-- tabella di cancellazione/inserimento/modifica di APPARATO -->
<table width="40%" align="center" cellspacing="0">

        <tr> <input type="hidden" name="oid"> </tr>
        <tr width="5%" class="elegant">
                 <td>Inventario</td> 
	         <td><input type="text" name="inventario" size="20"></td>
        </tr>
        <tr width="5%" class="elegant">
                 <td>Acquistato</td> 
	         <td><input type="date" name="acquistato" size="20"></td>
        </tr>
        <tr width="5%" class="elegant">
                 <td>Oid Dislocazione</td> 
	         <td><input type="text" name="oid_dislocazione" size="20"></td>
        </tr>
        <tr width="5%" class="elegant">
                 <td>Oid Armadio</td> 
	         <td><input type="text" name="oid_armadio" size="20"></td>
        </tr>
        <tr width="5%" class="elegant">
                 <td>Stato</td>
<%@ include file="sql/stati_select.jsp" %>
	         <td><select name="stato"> 
<%      
	try {
              rs = stmt.executeQuery(sql);
              while (rs.next()) { %>
                                <option value="<%= rs.getString("stato")%>"> <%= rs.getString("stato")%> </option> 
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
                 <td>Tipo Apparato</td>
<%@ include file="sql/apparati_tipi_select.jsp" %>
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
                 <td>Funzionamento</td>
	         <td><select name="funzionamento"> 
                                <option value="A">Attivo</option> 
                                <option value="P">Passivo</option> 
                     </select></td>
        </tr>
        <tr width="5%" class="elegant">
                 <td>IP</td> 
	         <td><input type="text" name="ip" size="20" value="null"></td>
        </tr>
        <tr width="5%" class="elegant">
                 <td>SN</td> 
	         <td><input type="text" name="sn" size="20" value="null"></td>
        </tr>
        <tr width="5%" class="elegant">
                 <td>PN</td> 
	         <td><input type="text" name="pn" size="20" value="null"></td>
        </tr>
        <tr width="5%" class="elegant">
                 <td>Potenza</td>
<%@ include file="sql/potenze_select.jsp" %>
	         <td><select name="potenza"> 
<%      
	try {
              rs = stmt.executeQuery(sql);
              while (rs.next()) { %>
                                <option value="<%= rs.getString("potenza")%>"> <%= rs.getString("potenza")%> </option> 
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