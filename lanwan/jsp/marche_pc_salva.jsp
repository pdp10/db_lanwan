
<%@ include file="db_open.jsp" %>
<%

	// delete / insert / update di una marcapc
	String rm        = request.getParameter("rm");
        String old       = request.getParameter("oldmarcapc");
        String marcapc   = request.getParameter("marcapc");

	if ( (rm != null) && !("".equals(rm)) ) {
		sql = " DELETE g013.MARCHE_PC WHERE marcapc = '" + marcapc + "' ";
	} else {
                if (old != null && !("".equals(old)) ) {
                       sql = " UPDATE g013.MARCHE_PC SET marcapc = '" + marcapc + "' where marcapc = '" + old + "' ";
               } else {
	               sql = " INSERT INTO g013.MARCHE_PC (marcapc) VALUES ('" + marcapc + "')";
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
	response.sendRedirect("marche_pc_form.jsp");

%>