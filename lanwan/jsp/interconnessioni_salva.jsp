<%@ include file="db_open.jsp" %>
<%

	// delete / insert / update di una interconnessione
	String rm        = request.getParameter("rm");
	oid              = request.getParameter("oid");
        String data      = request.getParameter("data");
        String porta_in  = request.getParameter("porta_in");
        String porta_out = request.getParameter("porta_out");
        String tipo      = request.getParameter("tipo");
        nome             = request.getParameter("nome");

	if ( (rm != null) && !("".equals(rm)) ) {
		sql = " DELETE g013.INTERCONNESSIONI WHERE oid = " + oid;
	} else {
               if ( (oid != null) && !("".equals(oid)) ) {
		      sql = " UPDATE g013.INTERCONNESSIONI " +
		          " SET data = to_date('" + data + "', 'DD/MM/YYYY'), " +
                          " porta_in = " + porta_in + ", " +
                          " porta_out = " + porta_out + ", " +
                          " tipo = '" + tipo + "', " + 
                          " nome = '" + nome + "' " +
		          " WHERE oid = " + oid;
               } else { 
		      sql = " insert into g013.INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) " +
                            " values (null, to_date('" + data + "','DD/MM/YYYY'), " + porta_in + ", " +
                            porta_out + ", '" + tipo + "', '" + nome + "') ";
	       }
        }

	//out.print(sql);
        try {
              rs  = stmt.executeQuery(sql);
              rs  = stmt.executeQuery("commit");
	      conn.close();
         }
	catch (SQLException e) {
 		   out.print(sql);
	}
	response.sendRedirect("interconnessioni_form.jsp");

%>