<%@ include file="standard_html_header.jsp" %>

<%@ include file="standard_html_link_index.jsp" %>


<h2>-1- CREAZIONE DI UN APPARATO DI RETE</h2>

<!--from degli APPARATI-->
<form action="apparato_porta_form2.jsp" name="apparato_porta_1" method="POST">
<table width="40%" align="center" cellspacing="0">

        <tr width="5%" class="elegant">
                 <td>Inventario</td> 
	         <td><input type="text" name="inventario" size="20"></td>
        </tr>
        <tr width="5%" class="elegant">
                 <td>Acquistato (DD/MM/YYYY)</td> 
	         <td><input type="date" name="acquistato" size="20"></td>
        </tr>
<%@ include file="sql/armadi_select.jsp" %>
        <tr width="5%" class="elegant">
                 <td>Oid Armadio</td> 
	         <td><select name="oid_armadio"> 
<%      
	try {
              rs = stmt.executeQuery(sql);
              while (rs.next()) { %>
                                <option value="<%= rs.getString("oid")%>"> <%= rs.getString("oid")%> </option> 
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
	         <td><input type="text" name="ip" size="20"></td>
        </tr>
        <tr width="5%" class="elegant">
                 <td>SN</td> 
	         <td><input type="number" name="sn" size="20"></td>
        </tr>
        <tr width="5%" class="elegant">
                 <td>PN</td> 
	         <td><input type="number" name="pn" size="20"></td>
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
	        <td colspan="2"><input type="submit" value="Avanti"></td>
        </tr>

</table>
</form>

<%@ include file="standard_html_link_index.jsp" %>

</body>
</html>