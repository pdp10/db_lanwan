<%@ include file="db_open.jsp" %>
<%

	// delete / insert / update di una DISLOCAZIONE
	String rm        = request.getParameter("rm");
	oid              = request.getParameter("oid");
        String luogo     = request.getParameter("luogo");
        String tipo      = request.getParameter("tipo");
        String stanza    = request.getParameter("stanza");

	if ( (rm != null) && !("".equals(rm)) ) {
		sql = " DELETE g013.V_DISLOCAZIONI WHERE oid = " + oid;
	} else {
               if ( (oid != null) && !("".equals(oid)) ) {
		      sql = " UPDATE g013.V_DISLOCAZIONI " +
		          " SET luogo = '" + luogo + "', oid_stanza = " + stanza + 
		          " WHERE oid = " + oid;
               } else { 
		      sql = " INSERT INTO g013.V_DISLOCAZIONI " +
		          " (oid, luogo, tipo, oid_stanza) VALUES " +
		          " (null, '" + luogo + "', '" + tipo + "', " + stanza + ")";
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
	response.sendRedirect("dislocazioni_form.jsp");

%>