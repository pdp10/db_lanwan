<%@ include file="db_open.jsp" %>
<%

	// delete / insert / update di una PRESE_RETE
	String rm        = request.getParameter("rm");
	oid              = request.getParameter("oid");
        String etichetta      = request.getParameter("etichetta");
        String tipo  = request.getParameter("tipo");

	if ( (rm != null) && !("".equals(rm)) ) {
		sql = " DELETE g013.PRESE_RETE WHERE oid = " + oid;
	} else {
               if ( (oid != null) && !("".equals(oid)) ) {
		      sql = " UPDATE g013.PRESE_RETE " +
		          " SET etichetta = " + etichetta + ", " +
                          " tipo = '" + tipo + "' " +
		          " WHERE oid = " + oid;
               } else { 
		      sql = " insert into g013.PRESE_RETE(oid, etichetta, tipo) " +
                            " values (null, " + etichetta + ", '" + tipo + "') ";
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
	response.sendRedirect("prese_rete_form.jsp");

%>