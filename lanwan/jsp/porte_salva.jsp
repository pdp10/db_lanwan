<%@ include file="db_open.jsp" %>
<%

	// delete / insert / update di una PORTE
	String rm        = request.getParameter("rm");
        String porta     = request.getParameter("porta");
        String tipo      = request.getParameter("tipo");
	oid              = request.getParameter("apparato");

	if ( (rm != null) && !("".equals(rm)) ) {
		sql = " DELETE g013.PORTE WHERE porta = " + porta;
	} else {
               if ( (porta != null) && !("".equals(porta)) ) {
		      sql = " UPDATE g013.PORTE " +
		          " SET tipo = '" + tipo + "', " +
                          " oid_apparato = " + oid +
		          " WHERE porta = " + porta;
               } else { 
		      sql = " insert into g013.PORTE(porta, tipo, oid_apparato) " +
                            " values (null, '" + tipo + "', " + oid + ") ";
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
	response.sendRedirect("porte_form.jsp");

%>