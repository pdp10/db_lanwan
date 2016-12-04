<%@ include file="standard_html_header.jsp" %>

<%@ include file="standard_html_link_index.jsp" %>

<%
        String inventario        = request.getParameter("inventario");
        String acquistato        = request.getParameter("acquistato");
        String oid_armadio       = request.getParameter("oid_armadio");
        String stato             = request.getParameter("stato");
        String tipo              = request.getParameter("tipo");
        String funzionamento     = request.getParameter("funzionamento");
        String ip                = request.getParameter("ip");
        String sn                = request.getParameter("sn");
        String pn                = request.getParameter("pn");
        String potenza           = request.getParameter("potenza");
%>

<h2>-2- CREAZIONE DI UNA PORTA DELL'APPARATO DI RETE CREATO</h2>

<!--from degli PORTE-->
<form action="apparato_porta_salva2.jsp" name="apparato_porta_2" method="POST">
<table width="40%" align="center" cellspacing="0">
        <!--copia form 1 in form 2-->
	<tr><td colspan="2"><input type="hidden" name="inventario" value="<%=inventario%>"></td></tr>
	<tr><td colspan="2"><input type="hidden" name="acquistato" value="<%=acquistato%>"></td></tr>
	<tr><td colspan="2"><input type="hidden" name="oid_armadio" value="<%=oid_armadio%>"></td></tr>
	<tr><td colspan="2"><input type="hidden" name="stato" value="<%=stato%>"></td></tr>
	<tr><td colspan="2"><input type="hidden" name="tipo" value="<%=tipo%>"></td></tr>
	<tr><td colspan="2"><input type="hidden" name="funzionamento" value="<%=funzionamento%>"></td></tr>
	<tr><td colspan="2"><input type="hidden" name="ip" value="<%=ip%>"></td></tr>
	<tr><td colspan="2"><input type="hidden" name="sn" value="<%=sn%>"></td></tr>
	<tr><td colspan="2"><input type="hidden" name="pn" value="<%=pn%>"></td></tr>
	<tr><td colspan="2"><input type="hidden" name="potenza" value="<%=potenza%>"></td></tr>
	<!--form 2-->
        <tr width="5%" class="elegant">
                 <td>Tipo</td>
<%@ include file="sql/porte_tipi_select.jsp" %>
	         <td><select name="tipo_porta"> 
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
	<tr><td colspan="2"><input type="submit" value="Salva"></td></tr>


</table>
</form>


<%@ include file="standard_html_link_index.jsp" %>

</body>
</html>