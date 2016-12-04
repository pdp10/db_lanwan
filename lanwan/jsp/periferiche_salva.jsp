<%@ include file="db_open.jsp" %>
<%

	// delete / insert / update di un PERIFERICHE
	String rm        = request.getParameter("rm");
	oid              = request.getParameter("oid");
        String utente    = request.getParameter("utente");
        String ip        = request.getParameter("ip");
        String presa_rete = request.getParameter("presa_rete");
        String oid_stanza = request.getParameter("oid_stanza");
        String tipo      = request.getParameter("tipo");
        String modellopc = request.getParameter("modellopc");
        String marcapc   = request.getParameter("marcapc");
        String modellost = request.getParameter("modellost");
        String marcast   = request.getParameter("marcast");


	if ( (rm != null) && !("".equals(rm)) ) {
		sql = " DELETE g013.V_PERIFERICHE WHERE oid = " + oid;
	} else {
               if ( (oid != null) && !("".equals(oid)) ) {  
		      sql = " UPDATE g013.V_PERIFERICHE " +
		            " SET utente = '" + utente + "', " + 
                            " ip = '" + ip + "', " + 
                            " oid_presa_rete = " + presa_rete + ", " +
                            " oid_stanza = " + oid_stanza + ", " +
                            " modellopc = '" + modellopc + "', " + 
                            " marcapc = '" + marcapc + "', " + 
                            " modellost = '" + modellost + "', " + 
                            " marcast = '" + marcast + "' " + 
		            " WHERE oid = " + oid;
               } else { 
		      sql = " insert into g013.V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, " +
                            " tipo, modellopc, marcapc, modellost, marcast) values (null, '" + utente + "', " +
                            " '" + ip + "', " + presa_rete + ", " + oid_stanza + ", '" + tipo + 
                            "', '" + modellopc + "', '" + marcapc + "', '" + modellost + "', '" + marcast + "')";
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
	response.sendRedirect("periferiche_form.jsp");

%>