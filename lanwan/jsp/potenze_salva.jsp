
<%@ include file="db_open.jsp" %>
<%

	String rm        = request.getParameter("rm");
        String old       = request.getParameter("oldpotenza");
        String potenza   = request.getParameter("potenza");

	if ( (rm != null) && !("".equals(rm)) ) {
		sql = " DELETE g013.POTENZE WHERE potenza = '" + potenza + "' ";
	} else {
                if (old != null && !("".equals(old)) ) {
                       sql = " UPDATE g013.POTENZE SET potenza = '" + potenza + "' where potenza = '" + old + "' ";
               } else {
	               sql = " INSERT INTO g013.POTENZE (potenza) VALUES ('" + potenza + "')";
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
	response.sendRedirect("potenze_form.jsp");

%>