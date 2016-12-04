<%@ include file="db_open.jsp" %>

<%
        String inventario        = request.getParameter("inventario");
        String acquistato        = request.getParameter("acquistato");
        String oid_armadio       = request.getParameter("oid_armadio");
        String stato             = request.getParameter("stato");
        String tipo              = request.getParameter("tipo");
        String funzionamento     = request.getParameter("funzionamento");
        String ip                = request.getParameter("ip");
        String sn                = request.getParameter("sn");
        String pn                = request.getParameter("pn");
        String potenza           = request.getParameter("potenza");

        String tipo_porta = request.getParameter("tipo_porta");
        int oid_apparato = -1;

        Integer i_inv = new Integer(inventario);
        Integer i_arm = new Integer(oid_armadio);
        Integer i_sn = null, i_pn = null;
        if(sn != null && !("".equals(sn)) ) { i_sn = new Integer(sn); }
        if(pn != null && !("".equals(pn)) ) { i_pn = new Integer(pn); }

        try {

//Prima parte della transazione.
                conn.setAutoCommit(false);
		CallableStatement proc = conn.prepareCall("{ ? = call g013.apparato_porta_ins(?,?,?,?,?,?,?,?,?,?) }");

                proc.registerOutParameter(1, Types.NUMERIC);

		proc.setInt(2, i_inv.intValue());
		proc.setString(3, acquistato);
 		proc.setInt(4, i_arm.intValue());
 		proc.setString(5, stato);
 	        proc.setString(6, tipo);
 		proc.setString(7, funzionamento);
                if ( ip != null && !("".equals(ip)) ) { proc.setString(8, ip); }
                else { proc.setString(8, null); }
                if ( i_sn != null ) { proc.setInt(9, i_sn.intValue()); }
                else { proc.setString(9, null); }
                if ( i_pn != null ) { proc.setInt(10, i_pn.intValue()); }
                else { proc.setString(10, null); }
                proc.setString(11, potenza);
		proc.execute();
                oid_apparato = proc.getInt(1);
//Seconda parte della transazione
                rs  = stmt.executeQuery( " INSERT INTO g013.PORTE (porta, tipo, oid_apparato) " +
                                         " VALUES (null, '" + tipo_porta + "', " + oid_apparato + ") " );
                conn.commit();
  	        conn.close();
                response.sendRedirect("confirm.jsp");


        }
        catch (SQLException e) { 
              rs  = stmt.executeQuery("rollback");
              response.sendRedirect("abort.jsp");
	}

%>
