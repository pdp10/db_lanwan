
<%@ include file="db_open.jsp" %>
<%

	// delete / insert / update di una marcast
	String rm        = request.getParameter("rm");
        String old       = request.getParameter("oldmarcast");
        String marcast   = request.getParameter("marcast");

	if ( (rm != null) && !("".equals(rm)) ) {
		sql = " DELETE g013.MARCHE_ST WHERE marcast = '" + marcast + "' ";
	} else {
                if (old != null && !("".equals(old)) ) {
                       sql = " UPDATE g013.MARCHE_ST SET marcast = '" + marcast + "' where marcast = '" + old + "' ";
               } else {
	               sql = " INSERT INTO g013.MARCHE_ST (marcast) VALUES ('" + marcast + "')";
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
	response.sendRedirect("marche_st_form.jsp");

%>