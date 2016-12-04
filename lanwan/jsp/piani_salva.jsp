<%@ include file="db_open.jsp" %>
<%

	// delete / insert / update di un piano
	String rm        = request.getParameter("rm");
	oid              = request.getParameter("oid");
        String piano     = request.getParameter("piano");
        String oid_edificio  = request.getParameter("oid_edificio");

	if ( (rm != null) && !("".equals(rm)) ) {
		sql = " DELETE g013.PIANI WHERE oid = " + oid;
	} else {
               if ( (oid != null) && !("".equals(oid)) ) {
		      sql = " UPDATE g013.PIANI " +
		          " SET numero = " + piano + ", oid_edificio = " + oid_edificio + 
		          " WHERE oid = " + oid;
               } else { 
		      sql = " INSERT INTO g013.PIANI " +
		          " (oid, numero, oid_edificio) VALUES " +
		          " (null, " + piano + ", " + oid_edificio + ")";
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
	response.sendRedirect("piani_form.jsp");

%>