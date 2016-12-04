<%@ include file="db_open.jsp" %>
<%

	// delete / insert / update di una stanza
	String rm            = request.getParameter("rm");
	oid                  = request.getParameter("oid");
        String oid_piano     = request.getParameter("oid_piano");
        String telefono      = request.getParameter("telefono");
        String descrizione   = request.getParameter("descrizione");

	if ( (rm != null) && !("".equals(rm)) ) {
		sql = " DELETE g013.STANZE WHERE oid = " + oid;
	} else {
               if ( (oid != null) && !("".equals(oid)) ) {
		      sql = " UPDATE g013.STANZE " +
		          " SET oid_piano = " + oid_piano + 
                              ", telefono = " + telefono + 
                              ", descrizione = '" + descrizione + "' " +
		          " WHERE oid = " + oid;
               } else { 
		      sql = " INSERT INTO g013.STANZE " +
		          " (oid, oid_piano, telefono, descrizione) VALUES " +
		          " (null, " + oid_piano + ", " + telefono + ", '" + descrizione + "')";
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
	response.sendRedirect("stanze_form.jsp");

%>