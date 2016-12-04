<%@ include file="standard_html_header.jsp" %>
<script type="text/javascript" src="js_code.js"></script>

<%@ include file="standard_html_link_index.jsp" %>


<h2>PIANI</h2>
<form action="piani_salva.jsp" name="piani" method="GET">
<table width="45%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="3%">&nbsp;</th>
		<th width="5%">Oid*</th>
		<th width="5%">Piano</th>
		<th width="10%">Edificio</th>
	</tr>

<%@ include file="sql/piani_select.jsp" %>
<%
	try {
	    rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
		while (rs.next()) { %>

	<tr>    <td><a href="piani_salva.jsp?oid=<%= rs.getString("OID") %>&rm=1" onclick="return questionYN();">
			<img src="images/cestino.gif" border="0"></a></td>
		<td><a href="" onclick="copiaPiani(document.forms.piani,
                                                            <%= rs.getString("OID") %>,
                                                            <%= rs.getString("PIANO") %>,
	                                                    <%= rs.getString("OID_EDIFICIO") %>); return false;">
		     <%= rs.getString("OID") %> </a></td>
		<td> <%= rs.getString("PIANO") %> </td>
		<td> <%= rs.getString("EDIFICIO") %> </td>
	</tr>
<%	
                }
	     } else {
%>
	<tr>
		<td></td>
		<td colspan="4">Nessun piano presente</td>
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
<h3>INSERISCI UN NUOVO PIANO</h3>
<br/>


<!-- tabella di cancellazione/inserimento/modifica di EDIFICI -->
<table width="40%" align="center" cellspacing="0">

        <tr> <input type="hidden" name="oid"> </tr>
        <tr width="5%" class="elegant">
                 <td>Piano</td> 
	         <td><input type="text" name="piano" size="40"></td>
        </tr>
<%@ include file="sql/edifici_select.jsp" %>
	<tr width="5%" class="elegant">
	         <td>Edificio</td>
	         <td><select name="oid_edificio"> 
<%      
	try {
              rs = stmt.executeQuery(sql);
              while (rs.next()) { %>
                                <option value="<%= rs.getString("OID")%>"> <%= rs.getString("NOME")%> </option> 
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