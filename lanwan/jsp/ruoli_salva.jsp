

<%@ include file="db_open.jsp" %>
<%

	// delete / insert / update di un ruolo
	String rm        = request.getParameter("rm");
	oid              = request.getParameter("oid");
        String ruolo     = request.getParameter("ruolo");

	if ( (rm != null) && !("".equals(rm)) ) {
		sql = " DELETE g013.RUOLI " + 
                      " WHERE oid = " + oid;
	} else {
               if ( (oid != null) && !("".equals(oid)) ) { 
		      sql = " UPDATE g013.RUOLI " +
		          " SET ruolo = '" + ruolo + "' " + 
		          " WHERE oid = " + oid;
               } else { 
		      sql = " INSERT INTO g013.RUOLI " +
		          " (oid, ruolo) VALUES " +
		          " (null, '" + ruolo + "')";
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
	response.sendRedirect("ruoli.jsp");

%>