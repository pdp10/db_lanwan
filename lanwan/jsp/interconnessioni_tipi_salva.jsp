
<%@ include file="db_open.jsp" %>
<%

	String rm        = request.getParameter("rm");
        String old       = request.getParameter("oldtipo");
        String tipo      = request.getParameter("tipo");

	if ( (rm != null) && !("".equals(rm)) ) {
		sql = " DELETE g013.INTERCONNESSIONI_TIPI WHERE tipo = '" + tipo + "' ";
	} else {
                if (old != null && !("".equals(old)) ) {
                       sql = " UPDATE g013.INTERCONNESSIONI_TIPI SET tipo = '" + tipo + "' where tipo = '" + old + "' ";
               } else {
	               sql = " INSERT INTO g013.INTERCONNESSIONI_TIPI (tipo) VALUES ('" + tipo + "')";
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
	response.sendRedirect("interconnessioni_tipi_form.jsp");

%>