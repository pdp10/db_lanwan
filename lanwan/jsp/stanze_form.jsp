<%@ include file="standard_html_header.jsp" %>
<script type="text/javascript" src="js_code.js"></script>

<%@ include file="standard_html_link_index.jsp" %>


<h2>STANZE</h2>
<form action="stanze_salva.jsp" name="stanze" method="GET">
<table width="65%" align="center" cellspacing="0" border="1">
	<tr>
		<th width="3%">&nbsp;</th>
		<th width="5%">Oid*</th>
		<th width="5%">Oid Piano</th>
		<th width="5%">Telefono</th>
		<th width="20%">Descrizione</th>
	</tr>

<%@ include file="sql/stanze_select.jsp" %>
<%
	try {
	    rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
		while (rs.next()) { %>

	<tr>    <td><a href="stanze_salva.jsp?oid=<%= rs.getString("OID") %>&rm=1" onclick="return questionYN();">
			<img src="images/cestino.gif" border="0"></a></td>
		<td><a href="" onclick="copiaStanze(document.forms.stanze,
                                                            <%= rs.getString("OID") %>,
                                                            <%= rs.getString("OID_PIANO") %>,
	                                                    <%= rs.getString("TELEFONO") %>,
	                                                    '<%= rs.getString("DESCRIZIONE") %>'); return false;">
		     <%= rs.getString("OID") %> </a></td>
		<td> <%= rs.getString("OID_PIANO") %> </td>
		<td> <%= rs.getString("TELEFONO") %> </td>
		<td> <%= rs.getString("DESCRIZIONE") %> </td>
	</tr>
<%	
               }
	    } else {
%>
	<tr>
		<td></td>
		<td colspan="5">Nessuna stanza presente</td>
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
<h3>INSERISCI UNA NUOVA STANZA</h3>
<br/>


<table width="40%" align="center" cellspacing="0">

        <tr> <input type="hidden" name="oid"> </tr>
<%@ include file="sql/piani_select.jsp" %>
	<tr width="5%" class="elegant">
	         <td>Oid Piano</td>
	         <td><select name="oid_piano"> 
<%      
	try {
              rs = stmt.executeQuery(sql);
              while (rs.next()) { %>
                                <option value="<%= rs.getString("OID")%>"> <%= rs.getString("OID")%> </option> 
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
                 <td>Telefono</td> 
	         <td><input type="text" name="telefono" size="20"></td>
        </tr>
        <tr width="40%" class="elegant">
                 <td>Descrizione</td> 
	         <td><input type="text" name="descrizione" size="60"></td>
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