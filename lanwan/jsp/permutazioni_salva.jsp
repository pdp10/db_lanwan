<%@ include file="db_open.jsp" %>
<%

	// delete / insert / update di una PERMUTAZIONE
	String rm        = request.getParameter("rm");
	oid              = request.getParameter("oid");
        String data      = request.getParameter("data");
        String porta_in  = request.getParameter("porta_in");
        String porta_out = request.getParameter("porta_out");

	if ( (rm != null) && !("".equals(rm)) ) {
		sql = " DELETE g013.PERMUTAZIONI WHERE oid = " + oid;
	} else {
               if ( (oid != null) && !("".equals(oid)) ) {
		      sql = " UPDATE g013.PERMUTAZIONI " +
		          " SET data = to_date('" + data + "', 'DD/MM/YYYY'), " +
                          " porta_in = " + porta_in + ", " +
                          " porta_out = " + porta_out + " " +
		          " WHERE oid = " + oid;
               } else { 
		      sql = " insert into g013.PERMUTAZIONI(oid, data, porta_in, porta_out, tipo, nome) " +
                            " values (null, to_date('" + data + "','DD/MM/YYYY'), " + porta_in + ", " +
                            porta_out + ") ";
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
	response.sendRedirect("permutazioni_form.jsp");

%>