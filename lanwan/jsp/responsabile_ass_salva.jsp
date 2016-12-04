
<%@ include file="db_open.jsp" %>
<%

	String rm        = request.getParameter("rm");
        String old       = request.getParameter("oldnome");
        nome      = request.getParameter("nome");

	if ( (rm != null) && !("".equals(rm)) ) {
		sql = " DELETE g013.RESPONSABILE_ASS WHERE nome = '" + nome + "' ";
	} else {
                if (old != null && !("".equals(old)) ) {
                       sql = " UPDATE g013.RESPONSABILE_ASS SET nome = '" + nome + "' where nome = '" + old + "' ";
               } else {
	               sql = " INSERT INTO g013.RESPONSABILE_ASS (nome) VALUES ('" + nome + "')";
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
	response.sendRedirect("responsabile_ass_form.jsp");

%>