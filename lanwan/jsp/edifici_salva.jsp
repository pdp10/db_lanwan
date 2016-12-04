<%@ include file="db_open.jsp" %>
<%

	// delete / insert / update di un edificio
	String rm        = request.getParameter("rm");
	oid              = request.getParameter("oid");
        nome  = request.getParameter("nome");
        String indirizzo  = request.getParameter("indirizzo");

	if ( (rm != null) && !("".equals(rm)) ) {
		sql = " DELETE g013.EDIFICI WHERE oid = " + oid;
	} else {
               if ( (oid != null) && !("".equals(oid)) ) {
		      sql = " UPDATE g013.EDIFICI " +
		          " SET nome = '" + nome + "', indirizzo = '" + indirizzo + "' " + 
		          " WHERE oid = " + oid;
               } else { 
		      sql = " INSERT INTO g013.EDIFICI " +
		          " (oid, nome, indirizzo) VALUES " +
		          " (null, '" + nome + "', '" + indirizzo +"')";
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
	response.sendRedirect("edifici_form.jsp");

%>