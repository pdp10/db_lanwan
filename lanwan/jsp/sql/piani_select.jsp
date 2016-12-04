<%

	sql = " SELECT P.oid, P.numero piano, E.nome edificio, E.oid oid_edificio " +
	      " FROM g013.PIANI P, g013.EDIFICI E " +
	      " WHERE P.oid_edificio = E.oid " +
              " ORDER BY P.oid ";

	// out.print(sql);
%>
