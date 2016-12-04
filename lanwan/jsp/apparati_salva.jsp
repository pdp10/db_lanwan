<%@ include file="db_open.jsp" %>
<%

	// delete / insert / update di un APPARATO
	String rm                = request.getParameter("rm");
	oid                      = request.getParameter("oid");
        String inventario        = request.getParameter("inventario");
        String acquistato        = request.getParameter("acquistato");
        String oid_dislocazione  = request.getParameter("oid_dislocazione");
        String oid_armadio       = request.getParameter("oid_armadio");
        String stato             = request.getParameter("stato");
        String tipo              = request.getParameter("tipo");
        String funzionamento     = request.getParameter("funzionamento");
        String ip                = request.getParameter("ip");
        String sn                = request.getParameter("sn");
        String pn                = request.getParameter("pn");
        String potenza           = request.getParameter("potenza");


	if ( (rm != null) && !("".equals(rm)) ) {
		sql = " DELETE g013.V_APPARATI WHERE oid = " + oid;
	} else {
               if ( (oid != null) && !("".equals(oid)) ) {  
		      sql = " UPDATE g013.V_APPARATI " +
		            " SET inventario = " + inventario + ", " + 
		            " acquistato = to_date('" + acquistato + "', 'DD/MM/YYYY'), " +
                            " oid_dislocazione = " + oid_dislocazione + ", " +
                            " oid_armadio = " + oid_armadio + ", " +
                            " stato = '" + stato + "', " + 
                            " tipo = '" + tipo + "', " +
                            " ip = '" + ip + "', " + 
                            " sn = " + sn + ", " + 
                            " pn = " + pn + ", " + 
                            " potenza = '" + potenza + "' " + 
		            " WHERE oid = " + oid;
               } else { 
		      sql = " INSERT into g013.V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, " +
                            " stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, " + inventario + 
                            ", to_date('" + acquistato + "', 'DD/MM/YYYY'), " + oid_dislocazione + ", " + oid_armadio +
                            ", '" + stato + "', '" + tipo + "', '" + funzionamento + "', '" + ip + "', " + sn +
                            ", " + pn + ", '" + potenza + "') ";

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
	response.sendRedirect("apparati_form.jsp");

%>