
<%@ include file="db_open.jsp" %>
<%

	// delete / insert / update di stati
	String rm        = request.getParameter("rm");
        String old       = request.getParameter("oldstato");
        String stato   = request.getParameter("stato");

	if ( (rm != null) && !("".equals(rm)) ) {
		sql = " DELETE g013.STATI WHERE stato = '" + stato + "' ";
	} else {
                if (old != null && !("".equals(old)) ) {
                       sql = " UPDATE g013.STATI SET stato = '" + stato + "' where stato = '" + old + "' ";
               } else {
	               sql = " INSERT INTO g013.STATI (stato) VALUES ('" + stato + "')";
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
	response.sendRedirect("stati_form.jsp");

%>