<%

	sql = " SELECT S.oid, S.oid_piano, P.numero, S.telefono, S.descrizione " +
	      " FROM g013.STANZE S, g013.PIANI P " +
	      " WHERE S.oid_piano = P.oid " +
              " ORDER BY S.oid ";

	// out.print(sql);
%>
