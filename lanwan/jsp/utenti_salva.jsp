
<%@ include file="db_open.jsp" %>
<%

	// delete / insert / update di un utente
	String rm        = request.getParameter("rm");
	oid              = request.getParameter("oid");
        String username  = request.getParameter("username");
        String password  = request.getParameter("password");
        nome             = request.getParameter("nome");
        String ruolo     = request.getParameter("oid_ruolo");

	if ( (rm != null) && !("".equals(rm)) ) {
		sql = " DELETE g013.UTENTI WHERE oid = " + oid;
	} else {
               if ( (oid != null) && !("".equals(oid)) ) { 
		      sql = " UPDATE g013.UTENTI " +
		          " SET password = '" + password + "', oid_ruolo = " + ruolo + 
		          " WHERE oid = " + oid;
               } else { 
		      sql = " INSERT INTO g013.UTENTI " +
		          " (oid, username, password, nome, oid_ruolo) VALUES " +
		          " (null, '" + username + "', '" + password + "', '" + nome + "', " + ruolo + ")";
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
	response.sendRedirect("utenti.jsp");

%>