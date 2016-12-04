<%

	sql = " SELECT U.oid, U.username, U.password, U.nome, U.oid_ruolo, R.ruolo" +
	      " FROM g013.utenti U, g013.ruoli R " +
              " WHERE U.oid_ruolo = R.oid " +
              " ORDER BY U.oid ";

	// out.print(sql);
%>