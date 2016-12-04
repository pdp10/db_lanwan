<%@ include file="standard_html_header.jsp" %>
<script type="text/javascript" src="js_code.js"></script>

<%@ include file="standard_html_link_index.jsp" %>


<h2>UTENTI</h2>

<!--from degli utenti-->
<form action="utenti_salva.jsp" name="utenti" method="GET">

<!-- tabella di visione degli utenti registrati -->
<table width="70%" align="center" cellspacing="0" border="1">
	<tr>    
		<th width="3%">&nbsp;</th>
		<th width="5%">Oid*</th>
		<th width="10%">Username</th>
		<th width="10%">Password</th>
		<th width="10%">Nome</th>
		<th width="10%">Ruolo</th>
	</tr>

<%@ include file="sql/utenti_select.jsp" %>
<%
	try {
            rs = stmt.executeQuery(sql);
	    if (rs.getFetchSize() > 0 ) {
	    while (rs.next()) { %>

	<tr>    <td><a href="utenti_salva.jsp?oid=<%= rs.getString("OID") %>&rm=1" onclick="return questionYN();">
			<img src="images/cestino.gif" border="0"></a></td>
		<td><a href="" onclick="copiaUtenti(document.forms.utenti,
                                                            <%= rs.getString("OID") %>,
                                                            '<%= rs.getString("USERNAME") %>',
	                                                    '<%= rs.getString("PASSWORD") %>',
	                                                    '<%= rs.getString("NOME") %>',
                                                            '<%= rs.getString("OID_RUOLO") %>'); return false;">
			   <%= rs.getString("OID") %></a></td>
		<td> <%= rs.getString("USERNAME") %> </td>
		<td> <%= rs.getString("PASSWORD") %> </td>
		<td> <%= rs.getString("NOME") %> </td>
		<td> <%= rs.getString("RUOLO") %> </td>
	</tr> 
<%	
	         }
	    } else {
%>
	<tr>
		<td></td>
		<td colspan="3">Nessun utente presente</td>
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
<h3>INSERISCI UN NUOVO UTENTE</h3>
<br/>


<%@ include file="sql/ruoli_select.jsp" %>
<!-- tabella di inserimento/modifica di utenti -->
<table width="30%" align="center" cellspacing="0">

        <tr> <input type="hidden" name="oid"> </tr>
        <tr width="5%" class="elegant">
                 <td>Username</td> 
	         <td><input type="text" name="username" size="15"></td>
        </tr>
	<tr width="5%" class="elegant"> 
	         <td>Password</td>
	         <td><input type="password" name="password" size="15"></td>
	</tr>
        <tr width="5%" class="elegant"> 
	         <td>Nome</td>
	         <td><input type="text" name="nome" size="15"></td> 
        </tr>
	<tr width="5%" class="elegant">
	         <td>Ruolo</td>
	         <td><select name="oid_ruolo"> 
<%      
	try {
              rs = stmt.executeQuery(sql);
              while (rs.next()) { %>
                                <option value="<%= rs.getString("OID")%>"> <%= rs.getString("RUOLO")%> </option> 
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