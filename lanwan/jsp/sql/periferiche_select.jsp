<%

	sql = " SELECT P.oid, P.utente, P.ip, P.oid_presa_rete presa_rete, P.oid_stanza, P.tipo, P.modellopc, " +
            " P.marcapc, P.modellost, P.marcast " +
	      " FROM g013.V_PERIFERICHE P " +
              " ORDER BY P.oid ";

	// out.print(sql);
%>
